#!/usr/bin/env python3
"""Map JNI/class/method identifier literals in original SHA-verified libSrc.so.

Read-only, bounded string inventory. A string literal's RVA is NOT an actual
JNI call target, verified network check or safe offline binary patch.
Metadata contains only normalized identifier names and offsets, never data
surrounding the strings, account IDs, tokens, URLs, app assets or ELF bytes.
"""
from __future__ import annotations
import argparse
import csv
import json
import mmap
from pathlib import Path
import shutil
import zipfile

try:
    from scripts.offline.audit_apk import SOURCE_SHA256, sha256_file
    from scripts.offline.reverse_dependencies import elf_load_segments, native_rva
except ModuleNotFoundError:
    from audit_apk import SOURCE_SHA256, sha256_file
    from reverse_dependencies import elf_load_segments, native_rva

TERMS = {
    "POPCAP_PURCHASE_ADAPTER_CLASS": b"com/popcap/pvz2cthddev/TWPurchase",
    "POPCAP_PURCHASE_ADAPTER_DOTTED": b"com.popcap.pvz2cthddev.TWPurchase",
    "POPCAP_PURCHASE_ADAPTER_SHORT": b"TWPurchase",
    "POPCAP_NATIVE_LOGIN_END": b"Native_SDKLoginEnd",
    "POPCAP_NATIVE_LOGIN_START": b"Native_SDKLoginStart",
    "POPCAP_NATIVE_INIT_END": b"Native_SDKInitEnd",
    "POPCAP_NATIVE_INIT_START": b"Native_SDKInitStart",
    "POPCAP_JNI_EXPORT_LOGIN_END": b"Java_com_popcap_pvz2cthddev_TWPurchase_Native_1SDKLoginEnd",
    "POPCAP_JNI_EXPORT_INIT_END": b"Java_com_popcap_pvz2cthddev_TWPurchase_Native_1SDKInitEnd",
    "POPCAP_GAME_ACTIVITY": b"SexyAppActivity",
    "POPCAP_GAME_FRAMEWORK": b"SexyAppFrameworkActivity",
    "POPCAP_NATIVE_GAME_APP": b"AndroidGameApp",
    "TW_OFFLINE_SDK_CLASS": b"TwOfflineSDK",
    "TW_OFFLINE_CALLBACK": b"TwOfflineCallback",
    "TW_LOGIN_CALLBACK": b"TwLoginCallback",
    "POPCAP_SET_IDS": b"SetIDs",
    "POPCAP_REQUEST_HEADER": b"GetTWRequestHead",
    "POPCAP_SDK_USER_ID": b"GetUserID",
    "POPCAP_USER_DATA_FOLDER": b"Resources_GetUserDataFolder",
    "GAME_PLAYER_INFO": b"PlayerInfo",
    "GAME_PROFILE_FILE": b"pp.dat",
    "GAME_LEVEL_DEFINITION": b"LevelDefinition",
    "GAME_WAVE_MANAGER": b"WaveManager",
}
MAX_HITS_PER_TERM = 500


def match_literals(data, segments, terms: dict[str,bytes] = TERMS) -> list[dict]:
    rows=[]
    for label, value in terms.items():
        start=0
        matches=0
        while matches<MAX_HITS_PER_TERM:
            offset=data.find(value,start)
            if offset<0:
                break
            # Require token boundaries to reduce incidental substring matches.
            before=data[offset-1] if offset else 0
            after_index=offset+len(value)
            after=data[after_index] if after_index<len(data) else 0
            if before in (0,ord('L'),ord('/'),ord('.'),ord(';'),ord('_')) and after in (0,ord(';'),ord('/'),ord('.'),ord('$')):
                rva=native_rva(segments,offset)
                rows.append({"identifier":label,"file_offset_hex":hex(offset),
                             "elf_rva_hex":rva,"mapped_to_load_segment":bool(rva)})
                matches+=1
            start=offset+1
    return sorted(rows,key=lambda r:(r["identifier"],int(r["file_offset_hex"],16)))


def index(apk:Path, scratch:Path, out:Path) -> dict:
    if sha256_file(apk)!=SOURCE_SHA256:
        raise ValueError("The original CHN 4.2.8 APK SHA256 did not match")
    scratch.mkdir(parents=True,exist_ok=True)
    out.mkdir(parents=True,exist_ok=True)
    dest=scratch/"libSrc-arm64.so"
    with zipfile.ZipFile(apk) as z:
        with z.open("lib/arm64-v8a/libSrc.so") as source,dest.open("wb") as output:
            shutil.copyfileobj(source,output,4*1024*1024)
    segments=elf_load_segments(dest)
    with dest.open("rb") as stream:
        with mmap.mmap(stream.fileno(),0,access=mmap.ACCESS_READ) as buffer:
            rows=match_literals(buffer,segments)
    with (out/"native_java_bridge_identifiers.csv").open("w",encoding="utf-8-sig",newline="") as f:
        writer=csv.DictWriter(f,fieldnames=["identifier","file_offset_hex",
                                           "elf_rva_hex","mapped_to_load_segment"])
        writer.writeheader()
        writer.writerows(rows)
    result={
        "status":"IDENTIFIER_LITERALS_ONLY_JNI_CALLS_NOT_VERIFIED",
        "source_sha256":SOURCE_SHA256,
        "arm64_libsrc_sha256":sha256_file(dest),
        "unique_identifiers_matched":len({r["identifier"] for r in rows}),
        "matches":len(rows),
        "all_identifiers":sorted({r["identifier"] for r in rows}),
        "not_proven":"exact JNI linkage, runtime execution, guest entry or patch safety",
        "original_elf_uploaded":False
    }
    (out/"native_java_bridge_summary.json").write_text(
        json.dumps(result,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    return result


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--apk",type=Path,required=True)
    p.add_argument("--scratch",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    if not a.apk.is_file():p.error("Original APK not found")
    if a.scratch.resolve()==a.out.resolve() or a.out.resolve().is_relative_to(a.scratch.resolve()):
        p.error("metadata must be outside private scratch")
    print(json.dumps(index(a.apk,a.scratch,a.out),ensure_ascii=False,indent=2))


if __name__=="__main__":
    main()
