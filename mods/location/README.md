# Current-position delivery (version 269)

The production replacement implements the original LocationSender constructor and LocationChangeListener interface. App.createLocationManager already creates exactly one sender, so no additional application lifecycle hook is needed. A main-looper task polls every five seconds and is also woken by accepted location callbacks. It does not add GPS subscriptions, a wake lock, location spoofing, or new protocol packet types.

While the socket is connected AND the fleet session is open, it queues the genuine latest position:

- when first ready, after a socket generation change or observed session reopen;
- after the current database order ID changes (including confirmed order completion), at the next tick;
- every 25 seconds even without displacement;
- during movement, at most once per five seconds when displaced more than ten metres from the last queued fix.

Every fix must be no older than 30 seconds by monotonic time, not future-dated, with finite valid coordinates and known nonnegative finite accuracy. The original fix timestamp, speed, accuracy and provider go into the existing DriverLocationPacket unchanged. No specific accuracy ceiling is imposed, so truthful coarse fixes are not silently blocked. No fresh fix means no position transmission; this patch does not pretend to repair a missing GPS signal.

Only the latest valid position is retained, defensively copied. The old offline history queue is removed: reconnection sends the current position rather than replaying up to 51 old locations. Client.trySend refusal does not advance the delivery policy; another tick retries with current order data. Queue acceptance is not server acknowledgement. Existing transport reconnection and fleet ACK behavior remain unchanged.

Logcat tag LocationSender records enqueue reason and fix age, never coordinates or credentials. Work is confined to the main looper, preserving the original packet constructor/database environment. The five-second poll catches completion and reconnect even if GPS callbacks stop, but only while Android allows the process to execute. It cannot override fleet distribution rules or prove a queued position reached the server.

Run `bash mods/location/build.sh`. It runs JVM scenarios, compiles against the real Android API and application signature stubs, then packages ONLY LocationSender.class into smali. Test doubles and signature stubs are never included in the APK. Device/server testing is still required.
