#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/../.."
android_api=${DRIVERPLUS_ANDROID_API:-/private/tmp/driverplus-android-api.jar}
test -f "$android_api"
build_dir=$(mktemp -d /private/tmp/driverplus-energy.XXXXXX)
rg --files mods/energy/test -g '*.java' > "$build_dir/tests.txt"
javac --release 8 -encoding UTF-8 -d "$build_dir/test-classes" mods/energy/src/com/txdriver/energy/Energy.java @"$build_dir/tests.txt"
java -cp "$build_dir/test-classes" com.txdriver.energy.EnergyTest
rg --files mods/energy/src mods/energy/stubs -g '*.java' > "$build_dir/sources.txt"
javac --release 8 -encoding UTF-8 -cp "$android_api" -d "$build_dir/classes" @"$build_dir/sources.txt"
sdk_tools=/opt/homebrew/share/android-commandlinetools
"$sdk_tools/build-tools/35.0.1/d8" --min-api 17 --no-desugaring --lib "$android_api" --output "$build_dir" \
  "$build_dir/classes/com/txdriver/energy/Energy.class" \
  "$build_dir/classes/com/txdriver/energy/EnergySettingsActivity.class"
smali_cp=$(find "$sdk_tools/cmdline-tools/latest/lib" -name '*.jar' -print | paste -sd: -)
java -cp "$smali_cp" com.android.tools.smali.baksmali.Main disassemble "$build_dir/classes.dex" -o vek_decoded/smali
printf 'Generated Energy helpers: %s\n' "$build_dir"
