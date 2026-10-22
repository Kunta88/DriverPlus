#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/../.."
build_dir=$(mktemp -d /private/tmp/driverplus-autologin.XXXXXX)
javac --release 8 -encoding UTF-8 -d "$build_dir/classes" mods/android16/src/com/txdriver/compat/AutoLoginPolicy.java mods/android16/test/AutoLoginPolicyTest.java
java -cp "$build_dir/classes" AutoLoginPolicyTest
sdk_tools=/opt/homebrew/share/android-commandlinetools
"$sdk_tools/build-tools/35.0.1/d8" --min-api 17 --no-desugaring --output "$build_dir" "$build_dir/classes/com/txdriver/compat/AutoLoginPolicy.class"
smali_cp=$(find "$sdk_tools/cmdline-tools/latest/lib" -name '*.jar' -print | paste -sd: -)
java -cp "$smali_cp" com.android.tools.smali.baksmali.Main disassemble "$build_dir/classes.dex" -o vek_decoded/smali
python3 mods/autologin/test-routing.py
