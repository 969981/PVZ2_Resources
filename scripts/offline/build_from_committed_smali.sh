#!/usr/bin/env bash
# Compile the *committed* editable SmaliProject, overlay the six rebuilt
# DEX over the SHA-pinned original APK, zipalign and test-sign it.
# Game assets/native libraries remain in the user-supplied original APK.
set -euo pipefail
if [[ $# -ne 4 ]]; then
  echo "Usage: $0 original.apk committed-SmaliProject-dir output-dir apktool.jar" >&2
  exit 2
fi
SOURCE="$(realpath "$1")"
SMALI="$(realpath "$2")"
mkdir -p "$3"
OUT="$(realpath "$3")"
APKTOOL="$(realpath "$4")"
EXPECTED="64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4"
echo "$EXPECTED  $SOURCE" | sha256sum -c -
[[ -f "$SMALI/apktool.yml" ]] || { echo "No APKTool project metadata" >&2; exit 2; }
for dir in smali smali_classes2 smali_classes3 smali_classes4 smali_classes5 smali_classes6; do
  [[ -d "$SMALI/$dir" ]] || { echo "Missing $dir" >&2; exit 2; }
done
if [[ "$OUT" == "$SMALI" || "$OUT" == "$SMALI/"* ]]; then
  echo "Output must be outside Smali project" >&2; exit 2
fi
mkdir -p "$OUT"
echo "Compiling checked-in SmaliProject (not re-decompiling source APK)"
java -Xmx5g -jar "$APKTOOL" b "$SMALI" \
 -o "$OUT/smali-compiled.apk" > "$OUT/apktool-build.log" 2>&1 ||
  { tail -80 "$OUT/apktool-build.log" >&2; exit 4; }
export SOURCE OUT
python3 - <<'PY'
from pathlib import Path
import hashlib,json,os,struct,zipfile
p=Path(os.environ["OUT"]);src=Path(os.environ["SOURCE"])
names=["classes.dex"]+[f"classes{i}.dex" for i in range(2,7)]
rows=[]
with zipfile.ZipFile(p/"smali-compiled.apk") as z,zipfile.ZipFile(src) as original:
 for name in names:
  raw=z.read(name);before=original.read(name)
  assert raw.startswith(b"dex\n") and before.startswith(b"dex\n")
  actual=struct.unpack_from("<I",raw,96)[0]
  expected=struct.unpack_from("<I",before,96)[0]
  if actual != expected:
   raise RuntimeError(f"Class count mismatch for {name}: {actual} vs {expected}")
  (p/name).write_bytes(raw)
  rows.append({"dex":name,"original_class_defs":expected,
               "built_class_defs":actual,"sha256":hashlib.sha256(raw).hexdigest()})
(p/"dex_reassembly_report.json").write_text(json.dumps(rows,indent=2)+"\n")
print("Six source-controlled DEX directories compiled and class-def counts matched")
PY
cp "$SOURCE" "$OUT/unsigned.apk"
for name in 'META-INF/*.RSA' 'META-INF/*.DSA' 'META-INF/*.EC' \
 'META-INF/*.SF' 'META-INF/MANIFEST.MF'; do
 zip -qd "$OUT/unsigned.apk" "$name" 2>/dev/null || true
done
(
  cd "$OUT"
  zip -q -0 -X "$OUT/unsigned.apk" \
   classes.dex classes2.dex classes3.dex classes4.dex classes5.dex classes6.dex
)
unzip -tq "$OUT/unsigned.apk" >/dev/null
SDK="$ANDROID_HOME"
BT="$(find "$SDK/build-tools" -mindepth 1 -maxdepth 1 -type d | sort -V | tail -1)"
[[ -x "$BT/zipalign" && -x "$BT/apksigner" ]] ||
  { echo "Android Build Tools zipalign/apksigner unavailable" >&2; exit 2; }
"$BT/zipalign" -f -p 4 "$OUT/unsigned.apk" "$OUT/aligned.apk"
"$BT/zipalign" -c -p 4 "$OUT/aligned.apk"
KEYSTORE="$OUT/local-test-only.jks"
if [[ ! -e "$KEYSTORE" ]]; then
  keytool -genkeypair -noprompt -keystore "$KEYSTORE" \
   -storepass "offline-temporary-only" -alias test \
   -keypass "offline-temporary-only" -keyalg RSA \
   -keysize 3072 -validity 1 \
   -dname "CN=PVZ2 Smali Local Test, O=Reconstructed, C=ZZ" >/dev/null 2>&1
fi
SIGNED="$OUT/PVZ2_CHN_4.2.8_from_repo_smali_test.apk"
"$BT/apksigner" sign --ks "$KEYSTORE" --ks-key-alias test \
 --ks-pass pass:offline-temporary-only \
 --key-pass pass:offline-temporary-only \
 --out "$SIGNED" "$OUT/aligned.apk"
"$BT/apksigner" verify --verbose "$SIGNED" > "$OUT/signature_verification.txt"
export SIGNED
python3 - <<'PY'
from pathlib import Path
import hashlib,json,os,zipfile
src=Path(os.environ["SOURCE"]);signed=Path(os.environ["SIGNED"])
out=Path(os.environ["OUT"])
six={"classes.dex"}|{f"classes{i}.dex" for i in range(2,7)}
with zipfile.ZipFile(src) as s,zipfile.ZipFile(signed) as t:
 original={i.filename:(i.CRC,i.file_size) for i in s.infolist()
           if not i.is_dir() and not i.filename.startswith("META-INF/")}
 rebuilt={i.filename:(i.CRC,i.file_size) for i in t.infolist()
          if not i.is_dir() and not i.filename.startswith("META-INF/")}
 assert original.keys()==rebuilt.keys(),"Non-signature entries were added or lost"
 for key in original.keys()-six:
  assert original[key]==rebuilt[key],f"Original non-Dex member changed: {key}"
report={
 "status":"SIGNED_APK_FROM_REPO_SMALI_BUILT",
 "signed_apk_sha256":(lambda path: hashlib.file_digest(path.open("rb"), "sha256").hexdigest())(signed),
 "signed_apk_size":signed.stat().st_size,
 "source_smali_roots":6,
 "rebuilt_dex_count":6,
 "unchanged_original_member_count":len(original)-6,
 "android_install_verified":False,
 "original_game_menu_verified":False,
 "original_game_level1_verified":False,
 "original_game_save_verified":False,
 "anti_tamper_warning_already_observed":True}
(out/"build_from_committed_smali_report.json").write_text(json.dumps(report,indent=2)+"\n")
print(json.dumps(report,indent=2))
PY
echo "Experiment APK: $SIGNED"
