#!/usr/bin/env python3
"""Parse Wwise BNK BKHD/DIDX/DATA/HIRC/STID and extract sound WEM by DIDX offsets.

Does not attempt to interpret WEM as WAV. Decode WEM separately with vgmstream.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
import struct

def parse_bnk(source:Path,out:Path,extract=True)->dict:
    out.mkdir(parents=True,exist_ok=True)
    raw=source.read_bytes()
    offset=0
    chunks=[]
    sections={}
    errors=[]
    while offset+8<=len(raw):
        magic,size=struct.unpack_from("<4sI",raw,offset)
        start=offset+8
        end=start+size
        kind=magic.decode("ascii","replace")
        if end>len(raw):
            errors.append(f"{kind}@{offset}: exceeds BNK end")
            break
        chunks.append({"type":kind,"offset":start,"size":size})
        sections.setdefault(kind,[]).append((start,end))
        offset=end
    if offset!=len(raw):
        errors.append(f"{len(raw)-offset} trailing bytes")
    rows=[]
    if sections.get("DIDX") and sections.get("DATA"):
        start,stop=sections["DIDX"][0]
        data_start,data_stop=sections["DATA"][0]
        if (stop-start)%12:
            errors.append("DIDX length not multiple of 12")
        for pos in range(start,stop-11,12):
            media_id,rel,size=struct.unpack_from("<III",raw,pos)
            lo=data_start+rel
            hi=lo+size
            row={"media_id":media_id,"data_offset":rel,"bytes":size}
            if size<12 or lo<data_start or hi>data_stop:
                row["status"]="invalid"
                errors.append(str(media_id)+" invalid DATA range")
            else:
                payload=raw[lo:hi]
                row["magic"]=payload[:4].decode("ascii","replace")
                row["sha256"]=hashlib.sha256(payload).hexdigest()
                if extract:
                    dst=out/f"{media_id:010d}.wem"
                    dst.write_bytes(payload)
                    row["file"]=dst.name
                row["status"]="extracted" if extract else "indexed"
            rows.append(row)
    report={"source":source.name,"sha256":hashlib.sha256(raw).hexdigest(),
            "source_bytes":len(raw),"chunks":chunks,"wem":rows,"errors":errors,
            "note":"DIDX/DATA WEM extraction only, not WAV/OGG audio decoding"}
    (out/(source.stem+".bnk.json")).write_text(
        json.dumps(report,ensure_ascii=False,indent=2),encoding="utf-8")
    return report

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("bnk",type=Path)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--no-media",action="store_true")
    a=p.parse_args()
    result=parse_bnk(a.bnk,a.out,not a.no_media)
    print(json.dumps({"source":a.bnk.name,"wem":len(result["wem"]),
                      "errors":result["errors"]},ensure_ascii=False),flush=True)
    if result["errors"]:
        raise SystemExit(1)
if __name__=="__main__":
    main()
