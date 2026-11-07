#!/usr/bin/env bash
# Personal private/reversible Android local-session experiment. Source APK
# remains untouched; only test-signed APK created outside the public Git tree.
set -euo pipefail
if [[ $# -lt 3 ]]; then echo "Usage: build_private_local_trial.sh original.apk outdir 0_or_1 [init_status]"; exit 2; fi
APK="$1"; OUT="$2"; LOGIN_TRIAL="$3"; INIT_TRIAL="${4:-0}"
[[ "$LOGIN_TRIAL" == "0" || "$LOGIN_TRIAL" == "1" ]] || exit 2
[[ "$INIT_TRIAL" == "0" || "$INIT_TRIAL" == "1" ]] || exit 2
APK="$(realpath "$APK")"
mkdir -p "$OUT"
OUT="$(realpath "$OUT")"
EXPECTED="64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4"
echo "$EXPECTED  $APK" | sha256sum -c -

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
WORK="$(mktemp -d "${TMPDIR:-/tmp}/pvz2-patch.XXXXXXXX")"
trap 'rm -rf "$WORK"' EXIT
TOOLSDIR="$WORK/tools"
mkdir -p "$TOOLSDIR" "$WORK/dex" "$WORK/changed"
APKTOOL_JAR="$TOOLSDIR/apktool_2.12.1.jar"
if [[ ! -f "$APKTOOL_JAR" ]]; then
  curl --retry 2 -fL --max-time 180 \
    "https://github.com/iBotPeaches/Apktool/releases/download/v2.12.1/apktool_2.12.1.jar" \
    -o "$APKTOOL_JAR" || \
  curl --retry 2 -fL --max-time 180 \
    "https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.12.1.jar" \
    -o "$APKTOOL_JAR"
fi
# SHA256 from apktool.org/blog/apktool-2.12.1/ official 2025-09-17 note.
echo "66cf4524a4a45a7f56567d08b2c9b6ec237bcdd78cee69fd4a59c8a0243aeafa  $APKTOOL_JAR" | sha256sum -c -
java -jar "$APKTOOL_JAR" --version
target=""
for ENTRY in classes.dex classes2.dex classes3.dex classes4.dex classes5.dex classes6.dex; do
  unzip -p "$APK" "$ENTRY" > "$WORK/dex/$ENTRY"
  [[ -s "$WORK/dex/$ENTRY" ]] || { echo "Missing dex $ENTRY"; exit 3; }
  # Construct a MINIMAL temporary APK with only Manifest, resources.arsc,
  # and one DEX renamed classes.dex. This avoids expanding copyrighted
  # full game assets and prevents APKTool from altering source resources.
  python3 - "$APK" "$ENTRY" "$WORK/minimal.apk" <<'PY'
import sys,zipfile
source,member,dest=sys.argv[1:]
with zipfile.ZipFile(source) as original,zipfile.ZipFile(dest,"w") as minimal:
    for name in ("AndroidManifest.xml","resources.arsc"):
        minimal.writestr(name,original.read(name),compress_type=zipfile.ZIP_STORED)
    minimal.writestr("classes.dex",original.read(member),compress_type=zipfile.ZIP_STORED)
PY
  rm -rf "$WORK/apktool-src"
  java -Xmx3g -jar "$APKTOOL_JAR" d --no-res --no-assets -f \
       -o "$WORK/apktool-src" "$WORK/minimal.apk"
  ORIGINAL="$WORK/apktool-src/smali/com/popcap/pvz2cthddev/TWPurchase.smali"
  if [[ -f "$ORIGINAL" ]]; then
    [[ -z "$target" ]] || { echo "Duplicate TWPurchase class"; exit 3; }
    target="$ENTRY"
    VERIFIED_SUPER="$WORK/apktool-src/smali/com/popcap/pvz2cthddev/ThirdpartyPurchaseDriver.smali"
    if [[ ! -f "$VERIFIED_SUPER" ]]; then
      # Superclass can reside in another DEX. Inspect each with separate
      # minimal synthetic APK, without altering the target DEX scratch tree.
      for PARENT_DEX in classes.dex classes2.dex classes3.dex classes4.dex classes5.dex classes6.dex; do
        [[ "$PARENT_DEX" != "$ENTRY" ]] || continue
        python3 - "$APK" "$PARENT_DEX" "$WORK/parent-minimal.apk" <<'PY'
import sys,zipfile
src,entry,dest=sys.argv[1:]
with zipfile.ZipFile(src) as original,zipfile.ZipFile(dest,"w") as minimal:
    for name in ("AndroidManifest.xml","resources.arsc"):
        minimal.writestr(name,original.read(name),compress_type=zipfile.ZIP_STORED)
    minimal.writestr("classes.dex",original.read(entry),compress_type=zipfile.ZIP_STORED)
PY
        rm -rf "$WORK/parent-scan"
        java -Xmx3g -jar "$APKTOOL_JAR" d --no-res --no-assets -f \
          -o "$WORK/parent-scan" "$WORK/parent-minimal.apk"
        PROBE_SUPER="$WORK/parent-scan/smali/com/popcap/pvz2cthddev/ThirdpartyPurchaseDriver.smali"
        if [[ -f "$PROBE_SUPER" ]]; then
          cp "$PROBE_SUPER" "$WORK/verified-ThirdpartyPurchaseDriver.smali"
          VERIFIED_SUPER="$WORK/verified-ThirdpartyPurchaseDriver.smali"
          echo "Native handle parent found in $PARENT_DEX"
          break
        fi
      done
    fi
    [[ -f "$VERIFIED_SUPER" ]] || { echo "Exact superclass not found in six DEX"; exit 5; }
    python3 "$ROOT/scripts/offline/patch_tw_local_trial.py" \
      --smali "$ORIGINAL" \
      --super-smali "$VERIFIED_SUPER" \
      --output "$WORK/changed/TWPurchase.smali" \
      --summary "$OUT/local_trial_patch_summary.json" \
      --init-status "$INIT_TRIAL" --login-status "$LOGIN_TRIAL"
    cp "$WORK/changed/TWPurchase.smali" "$ORIGINAL"
    java -Xmx3g -jar "$APKTOOL_JAR" b "$WORK/apktool-src" \
      -o "$WORK/changed/minimal-patched.apk"
    unzip -p "$WORK/changed/minimal-patched.apk" classes.dex > "$WORK/changed/$ENTRY"
    test -s "$WORK/changed/$ENTRY"
    sha256sum "$WORK/dex/$ENTRY" "$WORK/changed/$ENTRY" \
      | sed "s|$WORK/||g" > "$OUT/dex_before_after_sha256.txt"
    break
  fi
done
[[ -n "$target" ]] || { echo "Missing exact TWPurchase class in six DEX"; exit 4; }
echo "Original targeted DEX: $target"
UNSIGNED="$WORK/pvz2-local-unsigned.apk"
ALIGNED="$WORK/pvz2-local-aligned.apk"
SIGNED="$OUT/PVZ2_CHN_4.2.8_local_trial_$INIT_TRIAL"_"$LOGIN_TRIAL.apk"
cp "$APK" "$UNSIGNED"
for name in 'META-INF/*.RSA' 'META-INF/*.DSA' 'META-INF/*.EC' \
            'META-INF/*.SF' 'META-INF/MANIFEST.MF'; do
   zip -qd "$UNSIGNED" "$name" 2>/dev/null || true
done
mkdir -p "$WORK/for-zip"
cp "$WORK/changed/$target" "$WORK/for-zip/$target"
(cd "$WORK/for-zip" && zip -q -0 -X "$UNSIGNED" "$target")
unzip -t "$UNSIGNED" "$target" >/dev/null
BUILD_TOOLS="${ANDROID_BUILD_TOOLS_DIR:-}"
if [[ -z "$BUILD_TOOLS" ]]; then
  BUILD_TOOLS="$(find "${ANDROID_HOME:-$ANDROID_SDK_ROOT}/build-tools" \
    -mindepth 1 -maxdepth 1 -type d | sort -V | tail -1)"
fi
test -x "$BUILD_TOOLS/zipalign"
test -x "$BUILD_TOOLS/apksigner"
"$BUILD_TOOLS/zipalign" -f -p 4 "$UNSIGNED" "$ALIGNED"
"$BUILD_TOOLS/zipalign" -c -p 4 "$ALIGNED"
rm -f "$UNSIGNED"
TEST_KEYSTORE="$WORK/local-test.jks"
keytool -genkeypair -noprompt -keystore "$TEST_KEYSTORE" -storepass "offline-only-test" \
  -alias localtest -keypass "offline-only-test" \
  -keyalg RSA -keysize 3072 -validity 2 \
  -dname "CN=Local Offline Emulator Test, OU=Research, O=Personal, C=ZZ" >/dev/null 2>&1
"$BUILD_TOOLS/apksigner" sign --ks "$TEST_KEYSTORE" \
  --ks-key-alias localtest --ks-pass pass:offline-only-test \
  --key-pass pass:offline-only-test --out "$SIGNED" "$ALIGNED"
"$BUILD_TOOLS/apksigner" verify --verbose "$SIGNED" > "$OUT/apksigner_verify.txt"
rm -f "$ALIGNED"
python3 - "$SIGNED" "$APK" "$OUT" "$target" <<'PY'
import json,hashlib,pathlib,sys
patched,source,out,dex=pathlib.Path(sys.argv[1]),pathlib.Path(sys.argv[2]),pathlib.Path(sys.argv[3]),sys.argv[4]
def sha(p):
    h=hashlib.sha256()
    with p.open("rb") as f:
        for b in iter(lambda:f.read(1024*1024*4),b""):
            h.update(b)
    return h.hexdigest()
obj={"status":"BUILT_NOT_TESTED","source_sha256":sha(source),
     "patched_sha256":sha(patched),"patched_size":patched.stat().st_size,
     "patched_dex_entry":dex,"original_game_resources_retained":True,
     "online_entitlement_included":False,"android_emulator_qa":"PENDING",
     "main_menu_qa":"PENDING","first_level_qa":"PENDING","original_save_qa":"PENDING",
     "test_signing":"ephemeral self-signed local emulator certificate"}
(out/"local_trial_build_result.json").write_text(json.dumps(obj,ensure_ascii=False,indent=2)+"\n")
print(json.dumps(obj,ensure_ascii=False,indent=2))
PY
