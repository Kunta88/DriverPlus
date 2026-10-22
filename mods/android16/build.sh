#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/../.."
android_api=${DRIVERPLUS_ANDROID36_API:-/private/tmp/driverplus-sdk36/android-36/android.jar}
build_dir=$(mktemp -d /private/tmp/driverplus-android16.XXXXXX)
rg --files mods/android16/test-audio -g '*.java' > "$build_dir/audio-tests.txt"
javac --release 8 -d "$build_dir/audio-test" mods/android16/src/com/txdriver/compat/AlertAudio.java mods/android16/src/com/txdriver/compat/AutoAcceptAlert.java @"$build_dir/audio-tests.txt"
java -cp "$build_dir/audio-test" AlertAudioTest
java -cp "$build_dir/audio-test" AutoAcceptAlertTest
javac --release 8 -d "$build_dir/test" mods/android16/src/com/txdriver/compat/ReconnectPolicy.java mods/android16/test/ReconnectPolicyTest.java
java -cp "$build_dir/test" ReconnectPolicyTest
rg --files mods/android16/stubs/com/txdriver/socket -g '*.java' > "$build_dir/socket-stubs.txt"
javac --release 8 -d "$build_dir/transport-test" mods/android16/src/com/txdriver/socket/*.java @"$build_dir/socket-stubs.txt" mods/android16/test/TransportTest.java mods/android16/test/FrameDecoderTest.java
java -cp "$build_dir/transport-test" TransportTest
java -cp "$build_dir/transport-test" FrameDecoderTest
javac --release 8 -d "$build_dir/http-test" mods/android16/src/com/txdriver/compat/DisabledFeatures.java mods/android16/src/com/txdriver/compat/WebRequestHealth.java mods/android16/src/com/txdriver/compat/WebDiagnostics.java mods/android16/src/com/txdriver/compat/SafeHttp.java mods/android16/test/HttpTransportTest.java mods/android16/test/WebRequestHealthTest.java mods/android16/test/WebDiagnosticsTest.java mods/android16/test/DisabledFeaturesTest.java
java -cp "$build_dir/http-test" HttpTransportTest
java -cp "$build_dir/http-test" WebRequestHealthTest
java -cp "$build_dir/http-test" com.txdriver.compat.WebDiagnosticsTest
java -cp "$build_dir/http-test" com.txdriver.http.request.DisabledFeaturesTest
javac --release 8 -cp "$build_dir/http-test" -d "$build_dir/http-test" mods/android16/src/com/txdriver/compat/ManualBreakPolicy.java mods/android16/test/ManualBreakPolicyTest.java
java -cp "$build_dir/http-test" com.txdriver.compat.ManualBreakPolicyTest
rg --files mods/android16/src mods/android16/stubs -g '*.java' > "$build_dir/sources.txt"
javac --release 8 -encoding UTF-8 -cp "$android_api" -d "$build_dir/classes" @"$build_dir/sources.txt"
sdk_tools=/opt/homebrew/share/android-commandlinetools
"$sdk_tools/build-tools/35.0.1/d8" --min-api 17 --no-desugaring --lib "$android_api" --output "$build_dir" \
 "$build_dir/classes/com/txdriver/compat/"*.class "$build_dir/classes/com/txdriver/socket/Client"*.class "$build_dir/classes/com/txdriver/socket/FrameWriter.class" "$build_dir/classes/com/txdriver/socket/SocketFrameDecoder.class"
smali_cp=$(find "$sdk_tools/cmdline-tools/latest/lib" -name '*.jar' -print | paste -sd: -)
java -cp "$smali_cp" com.android.tools.smali.baksmali.Main disassemble "$build_dir/classes.dex" -o vek_decoded/smali
printf 'Generated Android compatibility helpers: %s\n' "$build_dir"
