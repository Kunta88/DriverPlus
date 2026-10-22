#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/../.."
build_dir=$(mktemp -d /private/tmp/driverplus-pickup.XXXXXX)
rg --files mods/auto-pickup -g '*.java' > "$build_dir/sources.txt"
javac --release 8 -encoding UTF-8 -d "$build_dir/classes" @"$build_dir/sources.txt"
java -cp "$build_dir/classes" com.txdriver.order.AutoPickupTest
java -cp "$build_dir/classes" com.txdriver.order.ArrivalGateTest
java -cp "$build_dir/classes" com.txdriver.order.DepartureGateTest
java -cp "$build_dir/classes" com.txdriver.order.DwellGateTest
sdk_tools=/opt/homebrew/share/android-commandlinetools
"$sdk_tools/build-tools/35.0.1/d8" --min-api 17 --no-desugaring --output "$build_dir" \
  "$build_dir/classes/com/txdriver/order/AutoPickup.class" "$build_dir/classes/com/txdriver/order/ArrivalGate.class" "$build_dir/classes/com/txdriver/order/DepartureGate.class" "$build_dir/classes/com/txdriver/order/DwellGate.class"
smali_cp=$(find "$sdk_tools/cmdline-tools/latest/lib" -name '*.jar' -print | paste -sd: -)
java -cp "$smali_cp" com.android.tools.smali.baksmali.Main disassemble \
  "$build_dir/classes.dex" -o vek_decoded/smali
printf 'Generated AutoPickup.smali; build workspace: %s\n' "$build_dir"
