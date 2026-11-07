#!/usr/bin/env python3
"""Decode authentic PvZ2 CN PTX ASTC formats 160..163 to PNG, verifying all dimensions.

Data is reconstructed as 32-byte PopCap PTX header + raw GPU ASTC payload by
export_raw_media.py using RSB global metadata. This tool adds the Khronos ASTC
container header (5x5 for code 161), invokes open-source astcenc, and validates
the PNG IHDR. No fake placeholders and no unverified format substitutions.
Requires astcenc on PATH. Uses Python standard library.
"""
from __future__ import annotations
import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
import hashlib
import json
from pathlib import Path
import os
import shutil
import struct
import subprocess
import tempfile

FOOTPRINTS={160:(4,4),161:(5,5),162:(6,6),163:(8,8)}
PTX_MAGIC=1886681137
ASTC_MAGIC=0x5CA1AB13
PNG_MAGIC=b"\x89PNG\r\n\x1a\n"

def decode(src:Path,root:Path,out:Path,profile:str)->dict:
    relative=src.relative_to(root)
    result={"source":relative.as_posix(),"status":"unresolved"}
    target=out/relative.with_suffix(".png")
    try:
        with src.open("rb") as stream:
            h=stream.read(32)
            if len(h)!=32:
                raise ValueError("PTX header truncated")
            magic,version,width,height,check,fmt,alpha_size,alpha_format=struct.unpack("<8I",h)
            result.update(width=width,height=height,format=fmt,check=check,
                          alpha_size=alpha_size,alpha_format=alpha_format)
            if magic!=PTX_MAGIC or version!=1:
                raise ValueError("bad reconstructed PTX header")
            if fmt not in FOOTPRINTS:
                result.update(status="unsupported",error=f"unknown PTX format {fmt}")
                return result
            bx,by=FOOTPRINTS[fmt]
            if not(1<=width<=16384 and 1<=height<=16384):
                raise ValueError("unsafe dimensions")
            expected=((width+bx-1)//bx)*((height+by-1)//by)*16
            body=stream.read()
            if len(body)!=expected:
                raise ValueError(f"ASTC payload length mismatch: {len(body)} != {expected}")
            signature=hashlib.sha256(h+body).hexdigest()
            result.update(source_sha256=signature,payload_bytes=len(body),block=f"{bx}x{by}")
        target.parent.mkdir(parents=True,exist_ok=True)
        with tempfile.TemporaryDirectory(prefix="astc_",dir=target.parent) as tmpdir:
            astc=Path(tmpdir)/"texture.astc"
            decoded=Path(tmpdir)/"image.png"
            header=struct.pack("<I",ASTC_MAGIC)+bytes((bx,by,1))+width.to_bytes(3,"little")+height.to_bytes(3,"little")+(1).to_bytes(3,"little")
            astc.write_bytes(header+body)
            run=subprocess.run(["astcenc", "-ds" if profile=="srgb" else "-dl",str(astc),str(decoded)],
                               text=True,capture_output=True,timeout=180)
            if run.returncode:
                raise ValueError("astcenc failed: "+(run.stderr+"\n"+run.stdout)[-800:])
            with decoded.open("rb") as f:
                png=f.read(24)
            if len(png)<24 or png[:8]!=PNG_MAGIC:
                raise ValueError("astcenc output not a PNG")
            out_w,out_h=struct.unpack(">II",png[16:24])
            if (out_w,out_h)!=(width,height):
                raise ValueError(f"PNG dimension mismatch {out_w}x{out_h} != {width}x{height}")
            os.replace(decoded,target)
        result.update(status="ok",output=target.relative_to(out).as_posix(),
                      output_bytes=target.stat().st_size,output_sha256=hashlib.sha256(target.read_bytes()).hexdigest())
    except Exception as exc:
        target.unlink(missing_ok=True)
        result.update(status="error",error=str(exc)[:1000])
    return result

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("source",type=Path,help="folder of reconstructed .PTX files")
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--workers",type=int,default=2)
    p.add_argument("--profile",choices=("srgb","linear"),default="srgb")
    p.add_argument("--allow-empty",action="store_true",help="Allow an RSB shard with zero PTX textures")
    a=p.parse_args()
    if not 1<=a.workers<=8:p.error("workers must be 1..8")
    files=sorted(x for x in a.source.rglob("*") if x.is_file() and x.suffix.lower()==".ptx")
    a.out.mkdir(parents=True,exist_ok=True)
    with ThreadPoolExecutor(max_workers=a.workers) as pool:
        futures=[pool.submit(decode,src,a.source,a.out,a.profile) for src in files]
        entries=[f.result() for f in as_completed(futures)]
    entries.sort(key=lambda x:x["source"])
    summary={"ptx_total":len(files),"png_ok":sum(x["status"]=="ok" for x in entries),
             "unsupported":sum(x["status"]=="unsupported" for x in entries),
             "failed":sum(x["status"]=="error" for x in entries)}
    (a.out/"astc_decode_report.json").write_text(json.dumps(
        {"method":"PTX format 160-163 ASTC 4x4/5x5/6x6/8x8, astcenc",
         "profile":a.profile,"summary":summary,"entries":entries},indent=2,ensure_ascii=False),
        encoding="utf-8")
    print("SUMMARY",json.dumps(summary,ensure_ascii=False),flush=True)
    for e in entries:
        if e["status"]!="ok":print("REQUIRES_REVIEW",e["source"],e.get("error"))
    if summary["failed"] or (not summary["png_ok"] and not a.allow_empty):
        raise SystemExit(1)
if __name__=="__main__":
    main()
