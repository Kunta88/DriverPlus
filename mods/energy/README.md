# Optional energy settings

The existing settings list opens `com.txdriver.energy.EnergySettingsActivity`.
All five keys use the original default SharedPreferences, and changes apply immediately.
The screen uses the existing AMOLED theme and platform checkbox preferences.

Defaults: `energy_ui`, `energy_hidden`, `energy_pickup` true;
`energy_gps`, `energy_screen` false. Disabling an option restores that part's original policy.

`energy_ui` limits periodic taximeter display callbacks to at most once per second;
unchanged text on the connection indicator is not reassigned. Calculations still run on the
original 500ms meter timer. Orders, chat, sounds and user actions are event-driven as before.
`energy_hidden` suppresses the taximeter, connection-label and automatic-pickup countdown
display work when hidden/screen off. Connection timestamps still update from the socket.

`energy_gps` requests a 5000ms minimum update interval from the existing GPS/network
providers while there is no current order and meter status is zero. Any current order or
nonzero meter status restores the original zero minimum interval and zero displacement.
This is an Android request interval, not a guarantee of exact GPS delivery timing.

`energy_screen` replaces the service's original full screen wake lock with a partial CPU
wake lock only while idle. The original screen lock returns for an active order or meter.
Android/system screen timeout remains in charge; this option never forces immediate sleep.
The CPU lock remains held for socket reliability. It is released at service shutdown.

`energy_pickup` coalesces order/location signals at up to one tick per second, uses a
30-second idle fallback, and keeps second countdown updates for relevant active orders.
It preserves the existing proximity restrictions, five-minute deadline, retry limits and
server acknowledgements. The fallback is a Handler callback, not a device wake alarm.

Build: set `DRIVERPLUS_ANDROID_API` to an Android API jar (default
`/private/tmp/driverplus-android-api.jar`), run `bash mods/energy/build.sh`, then
`bash mods/auto-pickup/build.sh` and the regular apktool/signing workflow.
Only the production helper class files are passed to D8; stubs/test doubles are excluded.
Energy tests cover mode changes, resource releases, defaults and rendering gates. Pickup
tests additionally cover disabled mode, event wakeup and hidden-screen completion.
These are JVM scenario tests; real battery use and device sleep behavior need device testing.
