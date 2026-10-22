package com.txdriver.order;

import android.content.SharedPreferences;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.widget.Button;
import com.txdriver.App;
import com.txdriver.db.Address;
import com.txdriver.db.Order;
import com.txdriver.energy.Energy;
import com.txdriver.socket.packet.OrderStatePacket;
import com.txdriver.utils.DistanceUtils;
import java.lang.ref.WeakReference;
import java.util.Locale;

/** Uses the original server states: 3 = arrived, 4 = passenger picked up. */
public final class AutoPickup implements Runnable {
    private static AutoPickup instance;
    private static final long WAIT_MS = 300000L;
    private final App app;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final SharedPreferences prefs;
    private WeakReference<Button> button = new WeakReference<Button>(null);
    private String boundKey = "";
    private String key = "";
    private long deadline;
    private long lastSend;
    private byte lastState;
    private boolean relevant;
    private long lastTick;
    private final ArrivalGate arrivalGate=new ArrivalGate();
    private final DepartureGate departureGate = new DepartureGate();
    private final DwellGate dwellGate = new DwellGate();

    private AutoPickup(App app) {
        this.app = app;
        prefs = app.getSharedPreferences("auto_pickup_wait", 0);
    }

    public static void start(App app) {
        if (instance == null) {
            instance = new AutoPickup(app);
            instance.handler.post(instance);
        }
    }

    public static void bind(Order order, Button view) {
        if (instance == null || order == null) return;
        instance.boundKey = identity(order);
        instance.button = new WeakReference<Button>(view);
        instance.render(order);
        signal();
    }

    public static void signal() {
        if (instance == null || !Energy.pickupEnabled()) return;
        instance.handler.removeCallbacks(instance);
        long delay = Math.max(0L, 1000L - (SystemClock.elapsedRealtime() - instance.lastTick));
        instance.handler.postDelayed(instance, delay);
    }

    public static void refreshOptions() {
        if (instance == null) return;
        instance.handler.removeCallbacks(instance);
        instance.handler.post(instance);
    }

    private static String identity(Order order) {
        return order.orderId + ":" + order.getId();
    }

    private boolean supported(Order order) {
        return order.source != Order.Source.YANDEX && order.source != Order.Source.UBER
            && order.source != Order.Source.GETT;
    }

    private boolean nearClient(Order order) {
        Location location = app.getLocationManager().getLastLocation();
        Address address = order.getAddress();
        if (location == null || address == null || (address.lat == 0 && address.lng == 0)) {arrivalGate.reset();return false;}
        long age = SystemClock.elapsedRealtime() - location.getElapsedRealtimeNanos() / 1000000L;
        if (age < 0 || age > 30000L) {arrivalGate.reset();return false;}
        int radius = app.getPreferences().getArrivedStateDistance();
        // With no fleet distance limit, require physical proximity instead of auto-arriving anywhere.
        if (radius <= 0) radius = 100;
        double distance = DistanceUtils.getDistance(location, address);
        if(OrderHelper.isFarFromClient(app,order)){arrivalGate.reset();return false;}
        return arrivalGate.accept(location.getElapsedRealtimeNanos()/1000000L,SystemClock.elapsedRealtime(),
            distance,radius,location.getAccuracy(),location.hasAccuracy());
    }

    private boolean qualifiedStay(Order order) {
        if (prefs.getBoolean("dwell_qualified", false)) {
            dwellGate.restoreQualified();
            return true;
        }
        Location location = app.getLocationManager().getLastLocation();
        Address address = order.getAddress();
        if (location == null || address == null || (address.lat == 0 && address.lng == 0)
            || OrderHelper.isFarFromClient(app, order)) { dwellGate.reset(); return false; }
        int radius = app.getPreferences().getArrivedStateDistance();
        if (radius <= 0) radius = 100;
        boolean ready = dwellGate.accept(location.getElapsedRealtimeNanos() / 1000000L,
            SystemClock.elapsedRealtime(), deadline - WAIT_MS,
            DistanceUtils.getDistance(location, address), radius,
            location.getAccuracy(), location.hasAccuracy());
        if (ready) prefs.edit().putBoolean("dwell_qualified", true).apply();
        return ready;
    }

    private boolean departedClient(Order order) {
        Location location = app.getLocationManager().getLastLocation();
        Address address = order.getAddress();
        if (location == null || address == null || (address.lat == 0 && address.lng == 0)
                || Double.isNaN(address.lat) || Double.isNaN(address.lng)
                || Math.abs(address.lat) > 90 || Math.abs(address.lng) > 180) {
            departureGate.reset();
            return false;
        }
        return departureGate.accept(location.getElapsedRealtimeNanos() / 1000000L,
            SystemClock.elapsedRealtime(), deadline - WAIT_MS,
            DistanceUtils.getDistance(location, address), location.getAccuracy(), location.hasAccuracy());
    }

    private void restoreWait() {
        long now = SystemClock.elapsedRealtime();
        if (key.equals(prefs.getString("order", ""))) {
            long savedElapsed = prefs.getLong("deadline_elapsed", 0);
            long bootEpoch = System.currentTimeMillis() - now;
            if (Math.abs(bootEpoch - prefs.getLong("boot_epoch", 0)) < 10000L) {
                deadline = savedElapsed;
            } else {
                long remaining = prefs.getLong("deadline_wall", 0) - System.currentTimeMillis();
                deadline = now + Math.max(0, Math.min(WAIT_MS, remaining));
            }
        } else {
            deadline = now + WAIT_MS;
            prefs.edit().putString("order", key)
                .putBoolean("dwell_qualified", false)
                .putLong("deadline_elapsed", deadline)
                .putLong("deadline_wall", System.currentTimeMillis() + WAIT_MS)
                .putLong("boot_epoch", System.currentTimeMillis() - now).apply();
        }
    }

    private void send(Order order, byte state) {
        if (!app.getClient().isSocketConnected()) return;
        long now = SystemClock.elapsedRealtime();
        if (lastState == state && now - lastSend < 30000L) return;
        lastState = state;
        lastSend = now;
        app.getClient().send(new OrderStatePacket(order.orderId, state));
    }

    private void tick() {
        Order order = Order.getCurrentOrder();
        Energy.update(order);
        relevant = order != null && supported(order)
            && (order.status == Order.Status.PERFORMING || order.status == Order.Status.ARRIVED);
        if (order == null || !supported(order) || !app.getPreferences().isAutoArrivalEnabled()) {
            key = "";
            deadline = 0;
            lastState = 0;
            arrivalGate.reset();
            departureGate.reset();
            dwellGate.reset();
            if (prefs.contains("order")) prefs.edit().clear().apply();
            if(order!=null) render(order);
            return;
        }
        String current = identity(order);
        if (!current.equals(key)) {
            key = current;
            deadline = 0;
            lastState = 0;
            arrivalGate.reset();
            departureGate.reset();
            dwellGate.reset();
        }
        if (order.status == Order.Status.PERFORMING) {
            departureGate.reset();
            dwellGate.reset();
            if (nearClient(order)) send(order, (byte) 3);
        } else if (order.status == Order.Status.ARRIVED) {
            if (deadline == 0) restoreWait();
            boolean stayed = qualifiedStay(order);
            if (stayed && departedClient(order)) {
                // Departure deliberately works outside the optional pickup radius.
                // The server acknowledgement still owns the ON_ROUTE/taximeter transition.
                send(order, (byte) 4);
            } else if (SystemClock.elapsedRealtime() >= deadline) {
                // Match the existing passenger pickup button's optional distance restriction.
                boolean restrict = app.getResources().getBoolean(0x7f050006);
                if (!restrict || nearClient(order)) send(order, (byte) 4);
            }
        } else {
            deadline = 0;
            departureGate.reset();
            dwellGate.reset();
            if (prefs.contains("order")) prefs.edit().clear().apply();
        }
        render(order);
    }

    private void render(Order order) {
        Button view = button.get();
        if (view == null || !boundKey.equals(identity(order)) || !supported(order)) return;
        if (!Energy.mayRender(view)) return;
        if(!app.getPreferences().isAutoArrivalEnabled()) {
            view.setVisibility(order.status==Order.Status.PERFORMING?View.VISIBLE:View.GONE);
            view.setText(0x7f100039);
            view.setEnabled(!OrderHelper.isFarFromClient(app,order));
            return;
        }
        if (order.status == Order.Status.ARRIVED) {
            if (deadline == 0 || !key.equals(identity(order))) return;
            long seconds = Math.max(0, (deadline - SystemClock.elapsedRealtime() + 999L) / 1000L);
            view.setVisibility(View.VISIBLE);
            view.setEnabled(false);
            view.setText(seconds > 0
                ? String.format(Locale.ROOT, "%02d:%02d", seconds / 60, seconds % 60)
                : (app.getClient().isSocketConnected() ? "00:00" : "Нет связи"));
        } else if (order.status == Order.Status.PERFORMING) {
            view.setEnabled(!OrderHelper.isFarFromClient(app,order));
            view.setText(0x7f100039); // R.string.arrived
        } else {
            view.setVisibility(View.GONE);
        }
    }

    @Override public void run() {
        lastTick = SystemClock.elapsedRealtime();
        try {
            tick();
        } catch (RuntimeException error) {
            android.util.Log.e("AutoPickup", "Cannot update pickup state", error);
        } finally {
            handler.removeCallbacks(this);
            handler.postDelayed(this, Energy.pickupEnabled() && !relevant ? 30000L : 1000L);
        }
    }
}
