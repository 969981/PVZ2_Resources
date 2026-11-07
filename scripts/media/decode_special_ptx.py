#!/usr/bin/env python3
"""Verify PopStudio conversion of non-ASTC PTX formats 0 and 147 on actual RSB members.

The input is the previously reconstructed 32-byte-header PTX, not headerless
data. Use PopStudio's native decoder for ARGB8888 / ETC1_RGB_A8, then inspect
output PNG dimensions. Preserve original format and SHA evidence on errors.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import struct
import subprocess

TARGET_FORMATS={0:"ARGB8888",147:"ETC1_RGB_A8"}
PNG_HEADER=b"\x89PNG\r\n\x1a\n"
MAGIC=1886681137

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("root",type=Path)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--popstudio-dll",type=Path,required=True)
    a=p.parse_args()
    a.out.mkdir(parents=True,exist_ok=True)
    result=[]
    for original in sorted(a.root.rglob("*")):
        if not original.is_file() or original.suffix.lower()!=".ptx": continue
        with original.open("rb") as stream:
            raw=stream.read(32)
        if len(raw)!=32:continue
        magic,version,width,height,check,fmt,alpha,alpha_fmt=struct.unpack("<8I",raw)
        if fmt not in TARGET_FORMATS:continue
        record={"source":original.relative_to(a.root).as_posix(),
                "format":fmt,"format_name":TARGET_FORMATS[fmt],
                "width":width,"height":height,"status":"failed",
                "raw_sha256":hashlib.sha256(original.read_bytes()).hexdigest()}
        try:
            if magic!=MAGIC or version!=1 or not(0<width<=16384 and 0<height<=16384):
                raise ValueError("Invalid original PTX header")
            dst=original.with_suffix(".png")
            dst.unlink(missing_ok=True)
            run=subprocess.run(["dotnet",str(a.popstudio_dll),str(original),"80"],
                               capture_output=True,text=True,timeout=120)
            if not dst.is_file():raise ValueError(
                "PopStudio did not output PNG: "+(run.stdout+run.stderr)[-700:])
            with dst.open("rb") as f:head=f.read(24)
            if len(head)!=24 or head[:8]!=PNG_HEADER:
                raise ValueError("Invalid PNG signature")
            w,h=struct.unpack(">II",head[16:24])
            if (w,h)!=(width,height):
                raise ValueError(f"Mismatch PNG {w}x{h}, PTX {width}x{height}")
            dest=a.out/original.relative_to(a.root).with_suffix(".png")
            dest.parent.mkdir(parents=True,exist_ok=True)
            shutil.move(str(dst),str(dest))
            record.update(status="ok",png_path=dest.relative_to(a.out).as_posix(),
                          png_bytes=dest.stat().st_size,
                          png_sha256=hashlib.sha256(dest.read_bytes()).hexdigest())
        except Exception as exc:
            record["error"]=str(exc)
        result.append(record)
    report={"candidate_count":len(result),"success":sum(x["status"]=="ok" for x in result),
            "failure":sum(x["status"]!="ok" for x in result),
            "format_ids":TARGET_FORMATS,"entries":result}
    (a.out/"special_ptx_report.json").write_text(json.dumps(
        report,ensure_ascii=False,indent=2),encoding="utf-8")
    print("SUMMARY",json.dumps({k:v for k,v in report.items() if k!="entries"},ensure_ascii=False),flush=True)
    for row in result:
        if row["status"]!="ok":print("UNRESOLVED",row,flush=True)
    if not result or report["failure"]:
        raise SystemExit(1)

if __name__=="__main__":
    main()
