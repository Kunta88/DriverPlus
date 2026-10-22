package com.txdriver.location;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.txdriver.App;
import com.txdriver.socket.packet.DriverLocationPacket;

/** Latest-position delivery, including stationary vehicles; never replays offline history. */
public final class LocationSender implements LocationManager.LocationChangeListener, Runnable {
    private final App app;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private Location latest, lastQueued;
    private long queuedAt = -1, queuedSession = -1, queuedOrder = Long.MIN_VALUE;
    private boolean wasReady;

    public LocationSender(App app) {
        this.app = app;
        handler.post(this);
    }

    @Override public synchronized void onLocationChanged(Location location) {
        remember(location);
        // One owner (the main looper) builds packets and reads the order database.
        handler.removeCallbacks(this);
        handler.post(this);
    }

    private synchronized void remember(Location location) {
        long now = SystemClock.elapsedRealtime();
        if (valid(location, now) && (latest == null || !valid(latest, now)
                || location.getElapsedRealtimeNanos() >= latest.getElapsedRealtimeNanos())) {
            latest = new Location(location);
        }
    }

    private static boolean valid(Location location, long now) {
        if (location == null) return false;
        long age = now - location.getElapsedRealtimeNanos() / 1000000L;
        double lat = location.getLatitude(), lng = location.getLongitude();
        float accuracy = location.getAccuracy();
        return age >= 0 && age <= 30000 && !Double.isNaN(lat) && !Double.isNaN(lng)
            && Math.abs(lat) <= 90 && Math.abs(lng) <= 180 && location.hasAccuracy()
            && !Float.isNaN(accuracy) && !Float.isInfinite(accuracy) && accuracy >= 0;
    }

    private synchronized void tick() {
        long now = SystemClock.elapsedRealtime();
        boolean ready = app.getClient().isSocketConnected() && app.getPreferences().isSessionOpened();
        if (!ready) { wasReady = false; return; }
        remember(app.getLocationManager().getLastLocation());
        if (!valid(latest, now)) return;
        long session = app.getClient().getSessionId();
        long order = app.getPreferences().getCurrentOrderId();
        String reason;
        if (!wasReady || lastQueued == null || session != queuedSession) reason = "session";
        else if (order != queuedOrder) reason = "order-change";
        else if (now - queuedAt >= 25000) reason = "stationary-refresh";
        else if (now - queuedAt >= 5000 && latest.distanceTo(lastQueued) > 10) reason = "movement";
        else return;
        // trySend reports queue acceptance, not proof that the fleet has received it.
        if (!app.getClient().trySend(new DriverLocationPacket(app, latest))) return;
        lastQueued = new Location(latest);
        queuedAt = now;
        queuedSession = session;
        queuedOrder = order;
        wasReady = true;
        Log.d("LocationSender", "Position queued: " + reason + ", fixAgeMs="
            + (now - latest.getElapsedRealtimeNanos() / 1000000L));
    }

    @Override public void run() {
        try { tick(); }
        catch (RuntimeException error) { Log.e("LocationSender", "Cannot queue current position", error); }
        finally {
            handler.removeCallbacks(this);
            handler.postDelayed(this, 5000L);
        }
    }
}
