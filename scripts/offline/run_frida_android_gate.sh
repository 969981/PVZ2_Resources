#!/usr/bin/env bash
# Called by android-emulator-runner as ONE command, avoiding line-wise sh execution.
set -euo pipefail
: "${RUNNER_TEMP:?RUNNER_TEMP missing}"
python="$RUNNER_TEMP/qa-venv/bin/python"
apk="$RUNNER_TEMP/offline-local-apk/PVZ2_CHN_4.2.8_from_repo_smali_test.apk"
out="$RUNNER_TEMP/offline-gate-report/runtime"
archive="$RUNNER_TEMP/frida-server-16.7.19-android-x86_64.xz"
adb root || true
adb wait-for-device
if curl -fL --retry 2 --max-time 180 \
  https://github.com/frida/frida/releases/download/16.7.19/frida-server-16.7.19-android-x86_64.xz \
  -o "$archive"; then
  if xz -dc "$archive" > "$RUNNER_TEMP/frida-server" && \
     adb push "$RUNNER_TEMP/frida-server" /data/local/tmp/pvz2-frida-server && \
     adb shell chmod 755 /data/local/tmp/pvz2-frida-server && \
     adb shell '/data/local/tmp/pvz2-frida-server >/data/local/tmp/pvz2-frida-server.log 2>&1 &'; then
    echo "FRIDA_SERVER_STAGED"
  else
    echo "FRIDA_SERVER_SETUP_UNAVAILABLE"
  fi
else
  echo "FRIDA_SERVER_DOWNLOAD_UNAVAILABLE"
fi
"$python" scripts/offline/consent_probe.py \
  --apk "$apk" --out "$out" --checkpoints 5,25,60,120 \
  --build-kind smali-local-trial \
  --frida-script scripts/offline/frida_warning_stack.js
