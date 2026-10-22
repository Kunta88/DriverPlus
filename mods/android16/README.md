# Android 16 compatibility work

Current release: **0.15.266.stable**. The stability implementation and repeatable full
build command are documented in [STABILITY.md](../STABILITY.md). In particular, the
old two-second-join Client patch below has been superseded by a single-owner Java TCP
client with session-local resources; use `bash mods/build-apk.sh` for the current APK.

This is a target-SDK-34 compatibility build of the decoded application, not a complete
target-SDK-36 migration. Target 34 addresses the old-target compatibility warning on
Android 16. Google Play Protect can still independently flag other problems; approval
is not guaranteed. No device verification or Play Protect setting is disabled.
New helper code is compiled against the official Android 36 API using guarded public APIs.

Target-34 migration: immutable PendingIntent defaults throughout bundled adapters;
explicit dynamic receiver registration flags; launcher exported declaration; package
visibility queries for navigation; scoped private storage; notification permission at
MainActivity and a system-notification settings link; background location via app settings
on Android 11+; location foreground-service permission prerequisites; safe empty permission
callbacks. Existing business logic, black theme and connection indicator are retained.

Implemented:

- MainService starts as a foreground service on Android 8+, promotes immediately in
  onCreate and declares the location type. Its low-importance channel is silent,
  persistent and separate from order notifications. Notification PendingIntent is immutable.
- Default-network handover/recovery schedules a debounced reconnect through the original
  Client. The initial network does not interrupt login. No order or message is replayed.
  The callback is unregistered when the service stops.
- Client.close now cancels the active session without blocking the UI. The single owner
  closes session-local resources; a timed-out old worker cannot close a new session.
- Startup no longer requests phone-state or broad storage permissions. Phone identity
  already uses ANDROID_ID. READ_PHONE_STATE is removed. Legacy READ storage is capped at
  API 32 and WRITE at API 28. CALL_PHONE remains for the existing direct-call feature,
  requested when that action is used. Location requests include fine and coarse together.
- OSM cache is placed in app-private files/cache directories. Existing shared map cache
  is not deleted; map tiles may need to download again. No media permission is needed for
  built-in sounds, private map cache or managed dispatcher-audio downloads.
- Managed audio chooses an existing app-owned file before using primary app storage,
  with internal-storage fallback if external app storage is unavailable.
- Public window APIs preserve black system bars and keep content outside cutouts/system
  panels. Explicit decor fitting is retained at target SDK 34.
- The large fare uses Android's native text autosizing to fit available width/height and
  longer amounts. Landscape details can scroll at large font scales while leaving room
  for the action panel.
- Energy screen policy now also releases Activity KEEP_SCREEN_ON while idle, not just
  the service's full wake lock. Running orders/meters restore the original screen policy.
- DownloadHelper owns and cancels its periodic Timer when the service stops.

Build `bash mods/android16/build.sh`, `bash mods/energy/build.sh`,
`bash mods/auto-pickup/build.sh`, then apktool. Android 36 API path can be supplied as
DRIVERPLUS_ANDROID36_API. Default: /private/tmp/driverplus-sdk36/android-36/android.jar.
The official SDK platform archive was downloaded from Google's repository as
platform-36_r02.zip; SHA-1 2c1a80dd4d9f7d0e6dd336ec603d9b5c55a6f576 was verified.
Only production classes are passed to D8; compilation stubs and JVM test doubles are excluded.
Use `zipalign -P 16 -f 4` before signing this APK.

Validation: 11 network-policy scenarios, 32 energy scenarios and 33 pickup scenarios;
apktool rebuild, APK signature verification, reverse decode and packaging alignment.
Actual background lifecycle, GPS accuracy, cellular handover and full visual appearance
remain device acceptance tests; see the build-specific report in outputs for installation results.

Native/library audit:

- lib/arm64-v8a/libyandexmapkit.so has PT_LOAD alignment 0x10000 (64 KB); this satisfies
  the static alignment requirement for 16 KB. ELF segment offset/address congruence was
  also verified. This does not prove the library has no hardcoded 4 KB assumptions.
- x86_64 and both 32-bit binaries retain 4 KB ELF alignment. They were not modified,
  relinked or replaced. APK alignment does not repair their ELF alignment.
- No bundled map, database, networking, Firebase or support library was blindly replaced.
  Full library modernization requires the source project/vendor binaries and regression tests.

Remaining device acceptance checks:

1. Log in; grant precise location and notifications; check order sounds and chat sounds.
2. Leave online with display off for at least one hour; receive a real test order.
3. Switch Wi-Fi/mobile and briefly disable Internet; check recovery and health indicator.
4. Verify autoaccept, arrival, five-minute countdown and meter start with screen hidden.
5. Drive a known route; compare distance/fare with the previous build.
6. Check portrait/landscape, gesture/three-button navigation and large system font.
7. Toggle all five energy options during waiting and while a test order is active.
8. On a 16 KB ARM64 device, open the map and exercise native map functionality.

References:
- https://developer.android.com/about/versions/16/behavior-changes-all
- https://developer.android.com/develop/background-work/services/fgs/service-types
- https://developer.android.com/guide/practices/page-sizes
