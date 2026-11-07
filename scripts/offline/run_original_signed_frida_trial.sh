#!/usr/bin/env bash
# Reproducible test on one throwaway rooted Android 11 emulator.
# Original APK stays byte-identical and retains its original signature.
set -euo pipefail
: "${RUNNER_TEMP:?}"
python="$RUNNER_TEMP/local-frida-venv/bin/python"
apk="$RUNNER_TEMP/PVZ2_4.2.8_original.apk"
out="$RUNNER_TEMP/original-signed-local-session"
archive="$RUNNER_TEMP/frida-server-16.7.19-android-x86_64.xz"
adb root || true
adb wait-for-device
adb logcat -G 16M || true
if ! curl -fL --retry 2 --max-time 180 \
  "https://github.com/frida/frida/releases/download/16.7.19/frida-server-16.7.19-android-x86_64.xz" \
  -o "$archive"; then
  echo "FRIDA_SERVER_DOWNLOAD_FAILED"
  exit 3
fi
xz -dc "$archive" > "$RUNNER_TEMP/frida-server"
adb push "$RUNNER_TEMP/frida-server" /data/local/tmp/pvz2-frida-server
adb shell chmod 755 /data/local/tmp/pvz2-frida-server
adb shell '/data/local/tmp/pvz2-frida-server >/data/local/tmp/pvz2-frida-server.log 2>&1 &'
"$python" scripts/offline/original_signed_session_trial.py \
  --apk "$apk" --out "$out" \
  --hook scripts/offline/frida_original_local_session_trial.js
