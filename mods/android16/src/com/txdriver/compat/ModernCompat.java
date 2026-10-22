package com.txdriver.compat;

import android.app.Activity;
import android.app.Application;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ServiceInfo;
import android.graphics.Color;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.txdriver.App;
import com.txdriver.energy.Energy;
import java.io.File;
import java.nio.channels.SocketChannel;
import java.util.WeakHashMap;
import org.osmdroid.config.Configuration;

/** Public Android APIs only. Original fleet protocol and credentials are preserved. */
public final class ModernCompat implements Runnable, Application.ActivityLifecycleCallbacks {
    private static ModernCompat instance;
    private static boolean foregroundOk;
    private static final String CHANNEL = "driverplus_connection_v2";
    private final App app;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final WeakHashMap<Activity, Boolean> activities = new WeakHashMap<Activity, Boolean>();
    private ReconnectPolicy reconnect = new ReconnectPolicy();
    private ConnectivityManager connectivity;
    private volatile boolean watching;
    private volatile boolean configured;
    private boolean idleScreen;
    private NetworkWatcher callback;

    private ModernCompat(App app) { this.app = app; }

    public static void install(App app) {
        if (instance != null) return;
        instance = new ModernCompat(app);
        ConfigHttp.migrateLegacyEndpoint(app);
        SecureStore.migrate(app);
        ChatDraft.install(app);
        EventGuard.install(app);
        app.registerActivityLifecycleCallbacks(instance);
        // Tile cache now belongs to this app; map rendering needs no media permission.
        try {
            File base = new File(app.getFilesDir(), "osmdroid");
            File tiles = new File(app.getCacheDir(), "map_tiles");
            base.mkdirs(); tiles.mkdirs();
            Configuration.getInstance().setOsmdroidBasePath(base);
            Configuration.getInstance().setOsmdroidTileCache(tiles);
        } catch (RuntimeException error) { android.util.Log.e("Android16", "Map cache configuration failed", error); }
    }

    public static void serviceCreated(Service service) {
        foreground(service, false);
        if (instance == null) install((App) service.getApplication());
        ModernCompat self = instance;
        if (Build.VERSION.SDK_INT >= 24 && !self.watching) {
            try {
                self.connectivity = (ConnectivityManager) service.getSystemService(Context.CONNECTIVITY_SERVICE);
                self.reconnect = new ReconnectPolicy();
                self.callback = new NetworkWatcher(self);
                self.connectivity.registerDefaultNetworkCallback(self.callback);
                self.watching = true;
            } catch (RuntimeException error) { android.util.Log.e("Android16", "Cannot watch network changes", error); }
        }
    }

    public static void connectionStarted() { if (instance != null) instance.configured = true; }

    public static android.content.ComponentName startService(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT >= 34 && !hasLocation(context)) {
            if (context instanceof Activity) ((Activity) context).requestPermissions(new String[]{
                "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION"}, 1000);
            return null;
        }
        try {
            return Build.VERSION.SDK_INT >= 26 ? context.startForegroundService(intent) : context.startService(intent);
        } catch(RuntimeException error) {
            android.util.Log.e("Android16","Service start denied: "+error.getClass().getSimpleName());
            android.widget.Toast.makeText(context,"Откройте приложение и проверьте разрешение геолокации",android.widget.Toast.LENGTH_LONG).show();
            return null;
        }
    }

    private static boolean hasLocation(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0
            || context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    public static void serviceDestroyed() {
        if (instance == null) return;
        ModernCompat self = instance;
        self.configured = false;
        self.handler.removeCallbacks(self);
        if (self.watching) {
            try { self.connectivity.unregisterNetworkCallback(self.callback); }
            catch (RuntimeException error) { android.util.Log.w("Android16", "Network callback already removed", error); }
        }
        self.watching = false;
    }

    public synchronized void onAvailable(Network network) {
        if (reconnect.available(network.toString()) && configured) {
            handler.removeCallbacks(this);
            handler.postDelayed(this, reconnect.delay(SystemClock.elapsedRealtime()));
        }
    }
    public synchronized void onLost(Network network) { reconnect.lost(network.toString()); }
    @Override public synchronized void run() {
        if (watching && configured && reconnect.ready(SystemClock.elapsedRealtime())) {
            app.getClient().reconn();
        }
    }

    public static void foreground(Service service, boolean connected) {
        foregroundOk=false;
        // AuthActivity binds before the first permission request. A bound-only service
        // must not promote to a location FGS until its prerequisites are granted.
        if (Build.VERSION.SDK_INT >= 34 && !hasLocation(service)) return;
        NotificationManager manager = (NotificationManager) service.getSystemService(Context.NOTIFICATION_SERVICE);
        Notification.Builder builder;
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel channel = new NotificationChannel(CHANNEL, "Связь с таксопарком", NotificationManager.IMPORTANCE_LOW);
            channel.setDescription("Фоновая работа приложения водителя и геолокация");
            channel.setSound(null, null);
            channel.enableVibration(false);
            manager.createNotificationChannel(channel);
            builder = new Notification.Builder(service, CHANNEL);
        } else builder = new Notification.Builder(service);
        Intent intent = service.getPackageManager().getLaunchIntentForPackage(service.getPackageName());
        builder.setSmallIcon(0x7f08009b).setContentTitle(service.getApplicationInfo().loadLabel(service.getPackageManager()))
            .setContentText(connected ? "Подключено к таксопарку" : "Подключение к таксопарку")
            .setOngoing(true).setOnlyAlertOnce(true).setShowWhen(false);
        if (intent != null) builder.setContentIntent(PendingIntent.getActivity(service, 0, intent,
            PendingIntent.FLAG_UPDATE_CURRENT | (Build.VERSION.SDK_INT >= 23 ? PendingIntent.FLAG_IMMUTABLE : 0)));
        if (Build.VERSION.SDK_INT >= 29 && (service.checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0
                || service.checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0)) {
            try {service.startForeground(1001, builder.build(), ServiceInfo.FOREGROUND_SERVICE_TYPE_LOCATION);foregroundOk=true;}
            catch(RuntimeException error){android.util.Log.e("Android16","Location service denied");service.stopSelf();}
        } else {
            try {service.startForeground(1001, builder.build());foregroundOk=true;}
            catch(RuntimeException error){android.util.Log.e("Android16","Foreground service denied");service.stopSelf();}
        }
    }

    public static void applyScreenPolicy(boolean idle) {
        if (instance == null) return;
        instance.idleScreen = idle;
        for (Activity activity : instance.activities.keySet()) instance.screen(activity);
    }

    public static boolean ensureStartedService(Service service) {
        if(Build.VERSION.SDK_INT>=34 && !hasLocation(service)){service.stopSelf();return false;}
        foreground(service,false);
        return foregroundOk;
    }
    private void screen(Activity activity) {
        if (activity == null || activity.isFinishing()) return;
        // These windows already had KEEP_SCREEN_ON in BaseActivity.
        for (Class<?> type = activity.getClass(); type != null; type = type.getSuperclass()) {
            if ("com.txdriver.ui.activity.BaseActivity".equals(type.getName())) {
                if (idleScreen) activity.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
                else activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
                return;
            }
        }
    }
    @Override public void onActivityCreated(Activity activity, Bundle saved) {
        activities.put(activity, Boolean.TRUE);
        Window window = activity.getWindow();
        if (Build.VERSION.SDK_INT >= 21) {
            window.setStatusBarColor(Color.BLACK);
            window.setNavigationBarColor(Color.BLACK);
        }
        if (Build.VERSION.SDK_INT >= 23) window.getDecorView().setSystemUiVisibility(
            window.getDecorView().getSystemUiVisibility() & ~View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR & ~View.SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams params = window.getAttributes();
            params.layoutInDisplayCutoutMode = WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_NEVER;
            window.setAttributes(params);
        }
        if (Build.VERSION.SDK_INT >= 30) window.setDecorFitsSystemWindows(true);
    }
    @Override public void onActivityResumed(Activity activity) {
        screen(activity);
        Energy.refreshLocation();
        if ("com.txdriver.ui.activity.MainActivity".equals(activity.getClass().getName())) {
            CompatIntents.requestNotifications(activity);
        }
    }
    @Override public void onActivityDestroyed(Activity activity) { activities.remove(activity); }
    @Override public void onActivityStarted(Activity activity) {}
    @Override public void onActivityPaused(Activity activity) {}
    @Override public void onActivityStopped(Activity activity) {}
    @Override public void onActivitySaveInstanceState(Activity activity, Bundle state) {}

    public static File audioFile(Context context, int id) {
        String name = id + ".mp3";
        if (Build.VERSION.SDK_INT >= 19) {
            File[] existing = context.getExternalFilesDirs(null);
            if (existing != null) for (int i = existing.length - 1; i >= 0; i--) {
                if (existing[i] != null) {
                    File candidate = new File(existing[i], name);
                    if (candidate.isFile()) return candidate;
                }
            }
        }
        File base = context.getExternalFilesDir(null);
        if (base == null) base = context.getFilesDir();
        base.mkdirs();
        return new File(base, name);
    }

    public static void closeChannel(SocketChannel channel) {
        if (channel == null) return;
        try { channel.close(); }
        catch (java.io.IOException error) { android.util.Log.w("Android16", "Socket close failed", error); }
    }

    private static final class NetworkWatcher extends ConnectivityManager.NetworkCallback {
        private final ModernCompat owner;
        NetworkWatcher(ModernCompat owner) { this.owner = owner; }
        @Override public void onAvailable(Network network) { owner.onAvailable(network); }
        @Override public void onLost(Network network) { owner.onLost(network); }
    }
}
