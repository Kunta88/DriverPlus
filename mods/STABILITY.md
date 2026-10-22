# Stability update 0.15.266.stable

Build all helpers, run tests, force-rebuild resources, align and sign:

```sh
bash mods/build-apk.sh
```

The existing signing key is deliberately reused for data-preserving upgrades. Do not
commit it or replace it for an already installed package. For a different workstation,
set DRIVERPLUS_KEYSTORE, DRIVERPLUS_KEY_ALIAS and DRIVERPLUS_KEY_PASSWORD. API-36 and
legacy Android jars used by the helper builders are documented in their build scripts.

## Changes

- One persistent TCP owner thread, generation IDs, session-local selector/channel,
  connect timeout, monotonic backoff, bounded queue and no ambiguous command replay.
- ByteBuffer retained on partial/zero writes; onWrite only after full transmission.
- Split two-byte receive headers, fragmented bodies and coalesced packets supported.
- Old-session queued packet callbacks discarded; handler RuntimeExceptions trigger
  resynchronization rather than an uncaught background-thread exception.
- Drafts retained until full write, account-scoped encrypted storage, clear offline/error
  messages, no automatic resend and no invented server-delivery confirmation.
- Complete validated fleet configuration cache and atomic endpoint update. Verified branded
  fallback web host 21vek-ze.ligataxi.com is distinct from the TCP host. Empty fields are
  rejected. GET/POST wrappers use bounded platform HTTP/TLS; POST redirects are not replayed.
- Scoped server-message deduplication and one horn per autoaccept ID after the acceptance
  packet is actually written. This is not a server acceptance acknowledgement.
- Accurate fresh GPS, two distinct fixes over >=2 seconds before automatic arrival.
  Separate automation switch cancels the stored wait. Manual pickup stays available.
- Connection status distinguishes authorization, failed transport and unavailable web API.
- Keystore AES-GCM for saved passwords/drafts on API 23+, migration in place, preference
  backup exclusions, synchronized preference cache. Older Android retains its legacy
  storage behavior and is not claimed to have Keystore AES protection.
- Guarded foreground service startup, permission failure handling and socket closure
  when the service ends. Existing energy modes and fare-calculation cadence are preserved.
- FileProvider for APK sharing; version/package/signature checks and refusal to self-update
  during a current order or running meter. Android's normal installer and verification remain.

## Tests

130 checks: 11 network policy, 19 transport (local TCP server, partial and zero writes,
queue rejection, reconnect storm), 13 frame decoder, 8 HTTP (local server, redirects,
errors, no POST replay), 35 pickup scenarios, 12 accuracy/stability gate, 32 energy.
These are host/JVM tests and Android test doubles, not 130 phone acceptance tests.

No fleet protocol, fare formula, black theme, large-number layout or manual completion
behavior is intentionally changed. No real orders/messages are sent by tests.

Remaining acceptance: user login after update, real test order, dispatch messages,
rotation while waiting/pickup, permission revocation, cellular handover, prolonged
screen-off operation and known-route fare comparison. Runtime connectivity and web DNS
depend on the phone's network/provider and fleet backend; no DNS/TLS bypass is implemented.

References: [Keystore](https://developer.android.com/reference/android/security/keystore/KeyGenParameterSpec),
[FileProvider](https://developer.android.com/reference/androidx/core/content/FileProvider).
