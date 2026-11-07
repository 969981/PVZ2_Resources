#!/usr/bin/env python3
"""Rebuild only the ZIP central directory and one private DEX entry.

This preserves original local ZIP entry headers/data offsets for every untouched
member of a large Android APK. Avoid zipalign and other tools that repack the
2.27 GB archive. Output must remain in a private scratch path and be re-signed
with an isolated test key. Not a login bypass or proof of game compatibility.
"""
from __future__ import annotations
import argparse
import hashlib
from pathlib import Path
import shutil
import zipfile

V1_SIGNATURE_FILES=("META-INF/MANIFEST.MF",)
V1_SIGNATURE_ENDINGS=(".RSA",".DSA",".EC",".SF")


def is_v1_signature(name: str)->bool:
    if not name.startswith("META-INF/"):
        return False
    upper=name.upper()
    return upper in V1_SIGNATURE_FILES or upper.endswith(V1_SIGNATURE_ENDINGS)


def replace_one_dex(source:Path,dex:Path,target:str,out:Path)->dict:
    if source.resolve()==out.resolve():
        raise ValueError("Cannot overwrite original game APK")
    if target not in ("classes.dex","classes2.dex","classes3.dex",
                      "classes4.dex","classes5.dex","classes6.dex"):
        raise ValueError("Only exact six original classes*.dex may be replaced")
    if not source.is_file() or not dex.is_file():
        raise FileNotFoundError("APK or patched DEX missing")
    out.parent.mkdir(parents=True,exist_ok=True)
    shutil.copyfile(source,out)
    with zipfile.ZipFile(source,"r") as z:
        original={info.filename:(info.header_offset,info.CRC,
                  info.file_size,info.compress_size) for info in z.infolist()}
        if target not in original: raise KeyError(target)
    with zipfile.ZipFile(out,"a",allowZip64=True) as z:
        # In append mode, CPython seeks to the old central directory
        # (AFTER all original local entries). Its new central directory will
        # reference the unchanged source members at identical offsets.
        z.filelist=[info for info in z.filelist
                    if info.filename!=target and not is_v1_signature(info.filename)]
        z.NameToInfo={info.filename:info for info in z.filelist}
        z.writestr(target,dex.read_bytes(),compress_type=zipfile.ZIP_DEFLATED,
                   compresslevel=9)
    with zipfile.ZipFile(out,"r") as z:
        names=z.namelist()
        if len(names)!=len(set(names)) or names.count(target)!=1:
            raise ValueError("Duplicate APK entry after controlled DEX replacement")
        new_info={info.filename:info for info in z.infolist()}
        original_unmodified=[
            name for name in original if name!=target and not is_v1_signature(name)
        ]
        changed=[name for name in original_unmodified
                 if name not in new_info or
                    original[name][0]!=new_info[name].header_offset or
                    original[name][1]!=new_info[name].CRC or
                    original[name][2]!=new_info[name].file_size or
                    original[name][3]!=new_info[name].compress_size]
        if changed:
            raise ValueError(f"Untouched game ZIP offsets/metadata changed: {changed[:4]}")
        digest=hashlib.sha256(z.read(target)).hexdigest()
        with dex.open("rb") as f:
            expected=hashlib.file_digest(f,"sha256").hexdigest()
        if digest!=expected:
            raise ValueError("Appended DEX bytes corrupted")
        return {
            "status":"ONE_DEX_REPLACED_WITH_ALL_OTHER_ZIP_OFFSETS_PRESERVED",
            "source_file_count":len(original),
            "output_file_count":len(names),
            "untouched_entry_offsets_checked":len(original_unmodified),
            "untouched_entry_offset_mismatches":0,
            "target_dex":target,
            "patched_dex_sha256":expected,
            "v1_certificate_entries_removed":sum(is_v1_signature(n) for n in original),
            "original_gameplay_validation":"NOT_YET_EXECUTED",
        }


def main()->None:
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--apk",type=Path,required=True)
    p.add_argument("--dex",type=Path,required=True)
    p.add_argument("--target",required=True)
    p.add_argument("--output",type=Path,required=True)
    a=p.parse_args()
    import json
    print(json.dumps(replace_one_dex(a.apk,a.dex,a.target,a.output),ensure_ascii=False,indent=2))


if __name__=="__main__":
    main()
