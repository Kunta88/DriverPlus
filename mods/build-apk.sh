#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."
sdk_tools=/opt/homebrew/share/android-commandlinetools/build-tools/35.0.1
release_output="${DRIVERPLUS_OUTPUT_DIR:-$(pwd)/../outputs}"
release_keystore="${DRIVERPLUS_KEYSTORE:-/Users/m/.android/debug.keystore}"
release_alias="${DRIVERPLUS_KEY_ALIAS:-androiddebugkey}"
release_password="${DRIVERPLUS_KEY_PASSWORD:-android}"
mkdir -p "$release_output"
bash mods/android16/build.sh
bash mods/auto-pickup/build.sh
bash mods/energy/build.sh
bash mods/location/build.sh
bash mods/autologin/build.sh
# Force resources: apktool's incremental cache can otherwise retain the old version
# when only apktool.yml versionCode/versionName changes.
apktool b -f vek_decoded -o "$release_output/DriverPlus_stability_unsigned.apk"
"$sdk_tools/zipalign" -P 16 -f 4 "$release_output/DriverPlus_stability_unsigned.apk" "$release_output/DriverPlus_stability_aligned.apk"
"$sdk_tools/apksigner" sign --ks "$release_keystore" --ks-key-alias "$release_alias" --ks-pass "pass:$release_password" --key-pass "pass:$release_password" --out "$release_output/DriverPlus_stability.apk" "$release_output/DriverPlus_stability_aligned.apk"
"$sdk_tools/apksigner" verify --min-sdk-version 36 "$release_output/DriverPlus_stability.apk"
"$sdk_tools/zipalign" -c -P 16 4 "$release_output/DriverPlus_stability.apk"
"$sdk_tools/aapt" dump badging "$release_output/DriverPlus_stability.apk" | sed -n '1,4p'
