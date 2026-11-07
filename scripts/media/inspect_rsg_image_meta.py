#!/usr/bin/env python3
"""Probe RSGP image metadata on genuine RSB source before raw PTX -> PNG conversion."""
from __future__ import annotations
import argparse
import json
import mmap
from pathlib import Path
import struct
from core.rsb_format import iter_rsb_rsg_files
from core.rsg_format import _rsg_header, _read_rsg_entries

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("rsb",type=Path)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    a.out.mkdir(parents=True,exist_ok=True)
    rows=[]
    with a.rsb.open("rb") as f, mmap.mmap(f.fileno(),0,access=mmap.ACCESS_READ) as container:
        for group_name,data in iter_rsb_rsg_files(container,str(a.rsb)):
            h=_rsg_header(data)
            for entry in _read_rsg_entries(data):
                if not entry.is_image:
                    continue
                end=entry.info_end
                if end<20 or end>len(data):
                    raise ValueError(f"image record boundary invalid: {group_name}:{entry.name}")
                meta=data[end-20:end]
                vals=struct.unpack("<5I",meta)
                rows.append({"group":group_name,"name":entry.name,
                    "image_section_offset":entry.offset,"data_bytes":entry.size,
                    "metadata_le_u32":list(vals),"metadata_hex":meta.hex(),
                    "rsg_version":h["version"],
                    "image_section_uncompressed":h["decompressed_image_data_size"]})
    dest=a.out/"rsg_image_metadata.json"
    dest.write_text(json.dumps(rows,ensure_ascii=False,indent=2),encoding="utf-8")
    print(json.dumps({"rsb":a.rsb.name,"image_entry_count":len(rows),"examples":rows[:5]},ensure_ascii=False),flush=True)
if __name__=="__main__":
    main()
