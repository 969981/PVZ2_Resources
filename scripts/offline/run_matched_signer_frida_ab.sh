#!/usr/bin/env bash
# Matched Android 11 original-signature vs direct-resigned read-only trial.
# Does not alter purchase, login, or game-native code at runtime.
set -euo pipefail
: "${RUNNER_TEMP:?missing RUNNER_TEMP}"
: "${TRIAL_APK:?missing TRIAL_APK}"
: "${BUILD_KIND:?missing BUILD_KIND}"
python="$RUNNER_TEMP/qa-venv/bin/python"
output="$RUNNER_TEMP/matched-ab/runtime"
archive="$RUNNER_TEMP/frida-server-16.7.19-android-x86_64.xz"
adb root || true
adb wait-for-device
adb logcat -G 16M || true
curl -fL --retry 3 --max-time 240 \
  "https://github.com/frida/frida/releases/download/16.7.19/frida-server-16.7.19-android-x86_64.xz" \
  -o "$archive"
xz -dc "$archive" > "$RUNNER_TEMP/frida-server"
adb push "$RUNNER_TEMP/frida-server" /data/local/tmp/pvz2-frida-server
adb shell chmod 755 /data/local/tmp/pvz2-frida-server
adb shell '/data/local/tmp/pvz2-frida-server >/data/local/tmp/pvz2-frida-server.log 2>&1 &'
"$python" scripts/offline/consent_probe.py \
  --apk "$TRIAL_APK" --out "$output" --checkpoints 5,25,45,120 \
  --build-kind "$BUILD_KIND" \
  --frida-script scripts/offline/frida_warning_stack.js
