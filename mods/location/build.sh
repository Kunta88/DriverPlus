#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/../.."
android_api=${DRIVERPLUS_ANDROID36_API:-/private/tmp/driverplus-sdk36/android-36/android.jar}
build_dir=$(mktemp -d /private/tmp/driverplus-location.XXXXXX)
rg --files mods/location/src mods/location/test mods/location/stubs -g '*.java' > "$build_dir/tests.txt"
javac --release 8 -encoding UTF-8 -d "$build_dir/test" @"$build_dir/tests.txt"
java -cp "$build_dir/test" com.txdriver.location.LocationSenderTest
rg --files mods/location/src mods/location/stubs -g '*.java' > "$build_dir/sources.txt"
javac --release 8 -encoding UTF-8 -cp "$android_api" -d "$build_dir/classes" @"$build_dir/sources.txt"
sdk_tools=/opt/homebrew/share/android-commandlinetools
"$sdk_tools/build-tools/35.0.1/d8" --min-api 17 --no-desugaring --lib "$android_api" --output "$build_dir" "$build_dir/classes/com/txdriver/location/LocationSender.class"
smali_cp=$(find "$sdk_tools/cmdline-tools/latest/lib" -name '*.jar' -print | paste -sd: -)
java -cp "$smali_cp" com.android.tools.smali.baksmali.Main disassemble "$build_dir/classes.dex" -o vek_decoded/smali
printf 'Generated LocationSender.smali: %s\n' "$build_dir"
