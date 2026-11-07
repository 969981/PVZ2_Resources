#!/usr/bin/env bash
# Reconstruct full six-DEX Java reference/Smali source plus original payload,
# and reassemble a test-signed Android APK from the original bytecode.
set -euo pipefail
if [[ $# -ne 4 ]]; then
  echo "Usage: reconstruct_ch428_project.sh original.apk private-dir apktool.jar jadx-cli" >&2
  exit 2
fi
SOURCE="$(realpath "$1")"
mkdir -p "$2"
DEST="$(realpath "$2")"
APKTOOL="$(realpath "$3")"
JADX="$(realpath "$4")"
EXPECTED="64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4"
echo "$EXPECTED  $SOURCE" | sha256sum -c -
test -f "$APKTOOL" && test -x "$JADX"
if [[ "$DEST" == "$PWD" || "$DEST" == "$PWD/"* ]]; then
  echo "Cannot write decompiled game into the public git checkout" >&2
  exit 2
fi
PROJECT="$DEST/CHN_4.2.8_reconstructed"
META="$DEST/reports"
BUILD="$DEST/build"
mkdir -p "$PROJECT/dex_original" "$PROJECT/original_payload" "$META" "$BUILD"
export SOURCE PROJECT META BUILD
python3 - <<'PY'
from pathlib import Path
import hashlib,json,os,shutil,struct,zipfile
source=Path(os.environ["SOURCE"])
project=Path(os.environ["PROJECT"])
meta=Path(os.environ["META"])
def hashfile(path):
 h=hashlib.sha256()
 with path.open("rb") as f:
  for x in iter(lambda:f.read(4*1024*1024),b""):h.update(x)
 return h.hexdigest()
members=[];dex=[]
with zipfile.ZipFile(source) as arc:
 seen=set()
 for ent in arc.infolist():
  name=ent.filename
  if ent.is_dir() or name.startswith("META-INF/"):continue
  path=Path(name)
  if path.is_absolute() or ".." in path.parts or name in seen:
   raise RuntimeError("Invalid/duplicate APK ZIP member")
  seen.add(name)
  isdex=name=="classes.dex" or (
   name.startswith("classes") and name.endswith(".dex")
   and name[7:-4].isdigit() and len(path.parts)==1)
  local=project/("dex_original" if isdex else "original_payload")/path
  local.parent.mkdir(parents=True,exist_ok=True)
  with arc.open(ent) as reader,local.open("wb") as writer:
   shutil.copyfileobj(reader,writer,4*1024*1024)
  row={"name":name,"size":ent.file_size,"crc":ent.CRC,"sha256":hashfile(local)}
  if isdex:
   dex.append(name)
   with local.open("rb") as f: header=f.read(112)
   assert header.startswith(b"dex\n") and len(header)>=112
   row["class_defs"]=struct.unpack_from("<I",header,96)[0]
  members.append(row)
expected=["classes.dex","classes2.dex","classes3.dex","classes4.dex","classes5.dex","classes6.dex"]
assert dex==expected,(dex,expected)
(meta/"original_apk_members.json").write_text(json.dumps(members,indent=2)+"\n")
(meta/"reconstruction_inventory.json").write_text(json.dumps({
 "source_sha256":hashfile(source),
 "original_apk_non_signature_members":len(members),
 "dex_count":len(dex),
 "original_native_binaries_retained":sum(r["name"].endswith(".so") for r in members),
 "cpp_native_source_recovered":False,
 "all_original_non_dex_members_materialized":True,
 "only_private_scratch":True},indent=2)+"\n")
print("Original member count:",len(members),"DEX count:",len(dex))
PY

echo "=== Decompile six original DEX to Java reference sources ==="
set +e
JAVA_OPTS="-Xmx3g" "$JADX" --no-res -j 2 \
 -d "$PROJECT/java_reference" "$PROJECT"/dex_original/classes*.dex \
 > "$META/jadx_private.log" 2>&1
JADX_RESULT="$?"
set -e
JAVA_COUNT="$(find "$PROJECT/java_reference/sources" -name '*.java' -type f 2>/dev/null | wc -l)"
echo "JADX code=$JADX_RESULT Java count=$JAVA_COUNT"
test "$JAVA_COUNT" -ge 7000

echo "=== Decode all original DEX to rebuildable Smali ==="
java -Xmx5g -jar "$APKTOOL" d -f --no-res --no-assets \
 -o "$PROJECT/apktool_smali" "$SOURCE" \
 > "$META/decode_private.log" 2>&1
SMALI_COUNT="$(find "$PROJECT/apktool_smali" -name '*.smali' -type f | wc -l)"
echo "Smali count=$SMALI_COUNT"
test "$SMALI_COUNT" -ge 7000

echo "=== Recompile all Smali back to six DEX ==="
java -Xmx5g -jar "$APKTOOL" b "$PROJECT/apktool_smali" \
 -o "$BUILD/apktool_compiled.apk" > "$META/build_private.log" 2>&1
python3 - <<'PY'
from pathlib import Path
import os,json,zipfile,struct,hashlib
build=Path(os.environ["BUILD"])
project=Path(os.environ["PROJECT"])
rows=[]
with zipfile.ZipFile(build/"apktool_compiled.apk") as a:
 for n in ["classes.dex","classes2.dex","classes3.dex",
           "classes4.dex","classes5.dex","classes6.dex"]:
  data=a.read(n)
  assert data.startswith(b"dex\n")
  dest=build/"rebuilt_dex"/n
  dest.parent.mkdir(parents=True,exist_ok=True)
  dest.write_bytes(data)
  original=(project/"dex_original"/n).read_bytes()
  before=struct.unpack_from("<I",original,96)[0]
  after=struct.unpack_from("<I",data,96)[0]
  assert before==after,(n,before,after)
  rows.append({"dex":n,"classes":before,"original_bytes":len(original),
               "new_bytes":len(data),"byte_identical":original==data,
               "sha256":hashlib.sha256(data).hexdigest()})
(Path(os.environ["META"])/"six_dex_roundtrip.json").write_text(json.dumps(rows,indent=2)+"\n")
print("Rebuilt DEX:",len(rows))
PY

echo "=== Overlay compiled DEX over original untouched native/assets/res ==="
cp "$SOURCE" "$BUILD/unsigned.apk"
for pattern in 'META-INF/*.RSA' 'META-INF/*.DSA' 'META-INF/*.EC' \
 'META-INF/*.SF' 'META-INF/MANIFEST.MF'; do
 zip -qd "$BUILD/unsigned.apk" "$pattern" 2>/dev/null || true
done
(
 cd "$BUILD/rebuilt_dex"
 zip -q -0 -X "$BUILD/unsigned.apk" \
  classes.dex classes2.dex classes3.dex classes4.dex classes5.dex classes6.dex
)
unzip -tq "$BUILD/unsigned.apk" >/dev/null
BT="$ANDROID_HOME/build-tools"
BT="$(find "$BT" -mindepth 1 -maxdepth 1 -type d | sort -V | tail -1)"
test -x "$BT/zipalign" && test -x "$BT/apksigner"
"$BT/zipalign" -f -p 4 "$BUILD/unsigned.apk" "$BUILD/aligned.apk"
"$BT/zipalign" -c -p 4 "$BUILD/aligned.apk"
keytool -genkeypair -noprompt -keystore "$BUILD/test.jks" \
 -storepass offline-temporary-only -alias test -keypass offline-temporary-only \
 -keyalg RSA -keysize 3072 -validity 1 \
 -dname "CN=Isolated Reconstruction, O=Local, C=ZZ" >/dev/null 2>&1
SIGNED="$BUILD/PVZ2_CHN_4.2.8_reassembled_test.apk"
"$BT/apksigner" sign --ks "$BUILD/test.jks" --ks-key-alias test \
 --ks-pass pass:offline-temporary-only --key-pass pass:offline-temporary-only \
 --out "$SIGNED" "$BUILD/aligned.apk"
"$BT/apksigner" verify --verbose "$SIGNED" > "$META/apksigner_verify.txt"

export SIGNED JAVA_COUNT SMALI_COUNT JADX_RESULT
python3 - <<'PY'
from pathlib import Path
import os,json,hashlib,zipfile
src=Path(os.environ["SOURCE"]); target=Path(os.environ["SIGNED"])
dex={"classes.dex","classes2.dex","classes3.dex","classes4.dex","classes5.dex","classes6.dex"}
with zipfile.ZipFile(src) as a,zipfile.ZipFile(target) as b:
 original={f.filename:f for f in a.infolist() if not f.is_dir() and not f.filename.startswith("META-INF/")}
 result={f.filename:f for f in b.infolist() if not f.is_dir() and not f.filename.startswith("META-INF/")}
 assert original.keys()==result.keys(),"Missing original asset/native/resource"
 for n in original.keys()-dex:
  assert (original[n].CRC,original[n].file_size)==(result[n].CRC,result[n].file_size),n
def sha(p):
 h=hashlib.sha256()
 with p.open("rb") as f:
  for x in iter(lambda:f.read(4*1024*1024),b""):h.update(x)
 return h.hexdigest()
summary={
 "status":"REASSEMBLED_SIGNED_NOT_PLAYABILITY_VERIFIED",
 "original_apk_sha256":sha(src),"reassembled_apk_sha256":sha(target),
 "reassembled_apk_bytes":target.stat().st_size,
 "java_reference_files":int(os.environ["JAVA_COUNT"]),
 "smali_files":int(os.environ["SMALI_COUNT"]),
 "jadx_return_code":int(os.environ["JADX_RESULT"]),
 "recompiled_dex_count":len(dex),
 "non_dex_members_preserved_by_crc_and_size":len(original)-len(dex),
 "full_native_cpp_source_restored":False,
 "android_install_test":"PENDING","native_menu_verified":False,
 "first_level_completed":False,"original_save_loaded":False,
 "apk_not_publicly_distributed":True}
(Path(os.environ["META"])/"reassembly_report.json").write_text(json.dumps(summary,indent=2)+"\n")
print(json.dumps(summary,indent=2))
PY
echo "Built private signed test APK: $SIGNED"
