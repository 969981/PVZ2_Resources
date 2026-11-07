#!/usr/bin/env python3
"""Extract authentic PvZ2 PTX/PAM/BNK, reconstruct embedded raw PTX header.

Requires PYTHONPATH pointing at pinned PVZ2-CN-Reverse-Tools/Resource_Tool.
The RSB global PTX table supplies width/height/format/alpha while RSG records
supply the member-local image index. Use PopStudio to convert PTX to PNG.
"""
from __future__ import annotations
import argparse
from collections import Counter
import hashlib
import json
import mmap
import os
from pathlib import Path
import struct

from core.rsb_format import _read_rsb_subgroups, iter_rsb_rsg_files
from core.rsg_format import _inflate_rsg_sections, _read_rsg_entries

PTX_MAGIC=1886681137
def safe_path(path: str) -> Path:
    parts=path.replace("\\","/").split("/")
    if not parts or any(p in ("",".","..") or ":" in p for p in parts):
        raise ValueError(f"Unsafe internal name: {path!r}")
    return Path(*parts)

def convert(rsb: Path, out: Path, *, only: str | None = None) -> dict:
    report={"rsb":rsb.name,"source_sha256":None,"groups":[],"files":[],
            "errors":[],"counts":{},"ptx_global":{}}
    sha=hashlib.sha256()
    with rsb.open("rb") as stream:
        for b in iter(lambda:stream.read(4<<20), b""):
            sha.update(b)
        report["source_sha256"]=sha.hexdigest()
        stream.seek(0)
        with mmap.mmap(stream.fileno(),0,access=mmap.ACCESS_READ) as data:
            if data[:4]!=b"1bsr" or len(data)<108:
                raise ValueError("not a full unwrapped RSB v4")
            version=struct.unpack_from("<I",data,4)[0]
            if version!=4:
                raise ValueError("requires RSB v4, got "+str(version))
            # RsbHeadInfo: offsets 0x54 / 0x58 / 0x5C; CN uses 24-byte entries.
            ptx_count,ptx_base,ptx_stride=struct.unpack_from("<III",data,0x54)
            if ptx_stride not in (16,20,24) or ptx_count>2_000_000:
                raise ValueError(f"unrecognized global PTX table {ptx_count}/{ptx_stride}")
            if ptx_base+ptx_count*ptx_stride>len(data):
                raise ValueError("global PTX info table out of bounds")
            report["ptx_global"]={"count":ptx_count,"offset":ptx_base,"stride":ptx_stride}
            subgroups=_read_rsb_subgroups(data)
            byname={row.name:row for row in subgroups}
            groups=0
            for group_file, raw in iter_rsb_rsg_files(data, str(rsb)):
                group_name=group_file.removesuffix(".rsg")
                if only and group_name!=only:
                    continue
                groups+=1
                subgroup=byname[group_name]
                ptx_number,ptx_before=struct.unpack_from("<II",data,subgroup.info_start+0xC4)
                h,uncompressed,images=_inflate_rsg_sections(raw)
                entries=_read_rsg_entries(raw)
                n=0
                for entry in entries:
                    ext=Path(entry.name).suffix.lower()
                    if ext not in (".ptx",".pam",".bnk"):
                        continue
                    try:
                        relative=safe_path(entry.name)
                        target=out/rsb.stem/group_name/relative
                        source=images if entry.is_image else uncompressed
                        if source is None or entry.offset+entry.size>len(source):
                            raise ValueError("member extent past decoded section")
                        payload=bytes(source[entry.offset:entry.offset+entry.size])
                        row={"group":group_name,"name":entry.name,"original_size":len(payload),
                             "source_rsb":rsb.name,"status":"ok"}
                        if ext==".ptx":
                            if not entry.is_image:
                                raise ValueError("PTX member not marked image")
                            local,_,_,w,hgt=struct.unpack_from("<5I",raw,entry.info_end-20)
                            if local>=ptx_number:
                                raise ValueError(f"local image index {local} outside subgroup {ptx_number}")
                            global_index=ptx_before+local
                            if global_index>=ptx_count:
                                raise ValueError("global PTX index out of range")
                            vals=struct.unpack_from("<"+"I"*(ptx_stride//4),
                                                    data,ptx_base+global_index*ptx_stride)
                            dims=list(vals[:2])
                            if dims != [w,hgt]:
                                raise ValueError(f"PTX table dims {dims} != RSG dims {[w,hgt]}")
                            width,height,check,format_=vals[:4]
                            alpha_size=vals[4] if len(vals)>4 else 0
                            alpha_format=vals[5] if len(vals)>5 else (100 if alpha_size else 0)
                            binary=struct.pack("<8I",PTX_MAGIC,1,width,height,check,format_,alpha_size,alpha_format)+payload
                            row.update(ptx_global_index=global_index,width=width,height=height,
                                       format=format_,alpha_size=alpha_size,alpha_format=alpha_format,
                                       raw_texture_bytes=len(payload))
                        else:
                            binary=payload
                        target.parent.mkdir(parents=True,exist_ok=True)
                        temp=target.with_name(target.name+".part")
                        temp.write_bytes(binary)
                        os.replace(temp,target)
                        row.update(path=str(target.relative_to(out)),size=len(binary),
                                   sha256=hashlib.sha256(binary).hexdigest())
                        n+=1
                        report["files"].append(row)
                    except Exception as exc:
                        report["errors"].append({"group":group_name,"name":entry.name,"error":str(exc)})
                report["groups"].append({"name":group_name,"media_members":n})
            report["scope"]="PTX reconstructed using RSB global format/dimensions; PAM and BNK byte-extracted"
            ct=Counter(Path(row["path"]).suffix.lower() for row in report["files"])
            report["counts"]=dict(ct)
            report["group_count_scanned"]=groups
    out.mkdir(parents=True,exist_ok=True)
    (out/"media_export_report.json").write_text(
        json.dumps(report,ensure_ascii=False,indent=2),encoding="utf-8")
    print(json.dumps({"rsb":rsb.name,"groups":groups,"counts":report["counts"],
                      "errors":len(report["errors"])},ensure_ascii=False),flush=True)
    return report

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("rsb",type=Path)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--only",help="single named RSG group")
    a=p.parse_args()
    result=convert(a.rsb,a.out,only=a.only)
    if result["errors"]:
        raise SystemExit(1)

if __name__=="__main__":
    main()
