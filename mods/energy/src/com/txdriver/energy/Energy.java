package com.txdriver.energy;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.TextView;
import com.txdriver.App;
import com.txdriver.db.Order;
import com.txdriver.order.AutoPickup;
import java.util.WeakHashMap;

/** Options affect presentation and idle resources, never socket delivery or fare calculation. */
public final class Energy implements Runnable, SharedPreferences.OnSharedPreferenceChangeListener {
    public static final String UI = "energy_ui";
    public static final String HIDDEN = "energy_hidden";
    public static final String GPS = "energy_gps";
    public static final String PICKUP = "energy_pickup";
    public static final String SCREEN = "energy_screen";
    private static Energy instance;
    private final App app;
    private final SharedPreferences prefs;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final PowerManager power;
    private final WeakHashMap<View, Long> frames = new WeakHashMap<View, Long>();
    private PowerManager.WakeLock lock;
    private int lockFlags;
    private long gpsInterval = -1;
    private boolean running;
    private int locationPermission = -2;

    private Energy(App app) {
        this.app = app;
        prefs = PreferenceManager.getDefaultSharedPreferences(app);
        power = (PowerManager) app.getSystemService(Context.POWER_SERVICE);
        prefs.registerOnSharedPreferenceChangeListener(this);
    }

    private static Energy get(Context context) {
        if (instance == null) instance = new Energy((App) context.getApplicationContext());
        return instance;
    }

    public static boolean option(Context context, String key) {
        return get(context).prefs.getBoolean(key, !(GPS.equals(key) || SCREEN.equals(key)));
    }

    public static boolean pickupEnabled() {
        return instance == null || instance.prefs.getBoolean(PICKUP, true);
    }

    public static void start(Context context) {
        Energy energy = get(context);
        energy.running = true;
        energy.gpsInterval = -1;
        energy.run();
    }

    public static void stop() {
        if (instance == null) return;
        instance.running = false;
        instance.handler.removeCallbacks(instance);
        if (instance.lock != null && instance.lock.isHeld()) instance.lock.release();
        instance.lock = null;
        instance.lockFlags = 0;
    }

    /** Coalesce order/status events on the main looper. */
    public static void signal() {
        if (instance != null && instance.running) {
            instance.handler.removeCallbacks(instance);
            instance.handler.post(instance);
        }
        AutoPickup.signal();
    }

    public static void update(Order order) {
        if (instance != null && instance.running) instance.apply(order);
    }

    public static void refreshLocation() {
        if (instance == null || !instance.running) return;
        int permission = instance.app.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION");
        if (permission != instance.locationPermission) {
            instance.locationPermission = permission;
            instance.gpsInterval = -1;
            signal();
        }
    }

    @Override public void run() {
        if (!running) return;
        try { apply(Order.getCurrentOrder()); }
        catch (RuntimeException error) { android.util.Log.e("Energy", "Cannot apply idle policy", error); }
    }

    private void apply(Order order) {
        // A standalone running taximeter must also retain full location precision.
        boolean active = order != null || app.getTaximeter().getStatus() != 0;
        long interval = prefs.getBoolean(GPS, false) && !active ? 5000L : 0L;
        if (interval != gpsInterval) {
            // Re-register only on a real mode change, never on every location fix.
            app.getLocationManager().stopUpdates();
            app.getLocationManager().startUpdates(interval);
            gpsInterval = interval;
        }
        int flags = prefs.getBoolean(SCREEN, false) && !active
            ? PowerManager.PARTIAL_WAKE_LOCK : 0x3000001a;
        com.txdriver.compat.ModernCompat.applyScreenPolicy(prefs.getBoolean(SCREEN, false) && !active);
        if (lock == null || flags != lockFlags) {
            PowerManager.WakeLock next = power.newWakeLock(flags, "DriverPlus:Energy");
            next.acquire();
            if (lock != null && lock.isHeld()) lock.release();
            lock = next;
            lockFlags = flags;
        }
    }

    @Override public void onSharedPreferenceChanged(SharedPreferences shared, String key) {
        if (key != null && key.startsWith("energy_")) {
            frames.clear();
            signal();
            AutoPickup.refreshOptions();
        }
    }

    public static boolean shouldRender(View view) {
        if (view == null) return true;
        Energy energy = get(view.getContext());
        if (energy.prefs.getBoolean(HIDDEN, true) && (!energy.power.isScreenOn()
                || view.getWindowVisibility() != View.VISIBLE || !view.isShown()
                || !view.getGlobalVisibleRect(new Rect()))) return false;
        if (!energy.prefs.getBoolean(UI, true)) return true;
        long now = SystemClock.elapsedRealtime();
        Long previous = energy.frames.get(view);
        if (previous != null && now - previous < 1000L) return false;
        energy.frames.put(view, now);
        return true;
    }

    public static boolean mayRender(View view) {
        if (view == null) return true;
        Energy energy = get(view.getContext());
        return !energy.prefs.getBoolean(HIDDEN, true) || (energy.power.isScreenOn()
            && view.getWindowVisibility() == View.VISIBLE && view.isShown());
    }

    public static void setText(TextView view, CharSequence text) {
        if (view == null) return;
        if (!option(view.getContext(), UI) || !android.text.TextUtils.equals(view.getText(), text)) {
            view.setText(text);
        }
    }
}
