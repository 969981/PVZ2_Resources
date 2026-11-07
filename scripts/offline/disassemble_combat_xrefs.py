#!/usr/bin/env python3
"""Read-only ARM64 instruction neighborhoods around verified PVZ2 combat string XREFs.

A field name XREF plus nearby BL/conditional instructions is not proof that
the instructions execute gameplay damage, poison ticks, or grenade RNG.
"""
from __future__ import annotations
import argparse
import csv
import hashlib
import json
import mmap
from pathlib import Path
import struct
from collections import defaultdict

def elf_exec_segments(path:Path):
    with path.open("rb") as f:
        header=f.read(64)
        if header[:6]!=b"\x7fELF\x02\x01":
            raise ValueError("Expected little-endian ELF64")
        phoff=struct.unpack_from("<Q",header,32)[0]
        entsize, count=struct.unpack_from("<HH",header,54)
        if not (56<=entsize<=128 and 1<=count<=256):
            raise ValueError("Suspicious program header size/count")
        f.seek(phoff)
        block=f.read(entsize*count)
    result=[]
    for i in range(count):
        base=i*entsize
        kind,flags=struct.unpack_from("<II",block,base)
        if kind!=1 or not(flags&1):
            continue
        off,vaddr=struct.unpack_from("<QQ",block,base+8)
        length=struct.unpack_from("<Q",block,base+32)[0]
        if off+length>path.stat().st_size:
            raise ValueError("Executable segment exceeds ELF file size")
        result.append((off,int(vaddr),int(length)))
    if not result:
        raise ValueError("No executable PT_LOAD")
    return result

def locate(segs, virtual):
    for off,va,length in segs:
        if va<=virtual<va+length:
            return off+(virtual-va),va,length
    return None

def load_references(path):
    with path.open(encoding="utf-8-sig",newline="") as f:
        rows=list(csv.DictReader(f))
    required={"domain_hint","code_reference_rva_hex","instruction_pattern"}
    if not rows or not required.issubset(rows[0]):
        raise ValueError("Source XREF CSV missing columns")
    entries=[]
    seen=set()
    for r in rows:
        address=int(r["code_reference_rva_hex"],16)
        label=r["domain_hint"]
        ident=(label,address)
        if ident in seen:continue
        seen.add(ident)
        entries.append((label,address,r["instruction_pattern"]))
    return sorted(entries,key=lambda x:(x[1],x[0]))

def audit(so, raw_csv, out):
    try:
        from capstone import Cs,CS_ARCH_ARM64,CS_MODE_ARM
    except ImportError as exc:
        raise SystemExit("Missing Capstone: python -m pip install capstone==5.0.5") from exc
    segments=elf_exec_segments(so)
    references=load_references(raw_csv)
    cs=Cs(CS_ARCH_ARM64,CS_MODE_ARM)
    cs.detail=False
    result=[]
    examples=[]
    byname=defaultdict(list)
    with so.open("rb") as stream, mmap.mmap(stream.fileno(),0,access=mmap.ACCESS_READ) as data:
        for label,site,kind in references:
            mapped=locate(segments,site)
            if mapped is None:
                raise ValueError(f"XREF {label} at {hex(site)} outside executable mapping")
            file_offset,seg_start,seg_length=mapped
            left=min(96,site-seg_start)
            right=min(160,seg_start+seg_length-site)
            addr=site-left
            off=file_offset-left
            code=data[off:off+left+right]
            if len(code)!=left+right:raise ValueError("Disassembly bounds mismatch")
            decoded=list(cs.disasm(code,addr))
            if not any(ins.address==site for ins in decoded):
                raise ValueError(f"Capstone failed to decode source {label} at {hex(site)}")
            nearby_branches=[]
            for ins in decoded:
                dst=""
                if ins.mnemonic.lower() in {"bl","b","blr","br","ret"} or ins.mnemonic.lower().startswith(("b.","cb","tb")):
                    dst=ins.op_str
                    if len(nearby_branches)<20:
                        nearby_branches.append(ins.mnemonic+" "+ins.op_str)
                row={
                    "field":label,"xref_site":hex(site),"instruction_rva":hex(ins.address),
                    "relative_bytes":ins.address-site,
                    "mnemonic":ins.mnemonic,"operands":ins.op_str,
                    "at_exact_xref":ins.address==site,"branch_operand":dst,
                }
                result.append(row)
            byname[label].append(site)
            examples.append({"field":label,"xref_site":hex(site),"instructions":len(decoded),
                            "nearby_branch_mnemonics":nearby_branches[:10],
                            "classification":"disassembly-neighborhood-only"})
    out.mkdir(parents=True,exist_ok=True)
    fields=["field","xref_site","instruction_rva","relative_bytes","mnemonic",
            "operands","at_exact_xref","branch_operand"]
    with (out/"native_combat_instructions.csv").open("w",encoding="utf-8-sig",newline="") as f:
        writer=csv.DictWriter(f,fieldnames=fields)
        writer.writeheader()
        writer.writerows(result)
    source_sha=hashlib.sha256(so.read_bytes()).hexdigest()
    groups=[]
    bysite=sorted(references,key=lambda r:r[1])
    for label,site,kind in bysite:
        peers=[{"field":v,"distance_bytes":addr-site} for v,addr,_ in bysite
               if v!=label and abs(addr-site)<=0x200]
        if peers:
            groups.append({"field":label,"site":hex(site),"peers_within_512_bytes":peers[:24],
                           "meaning":"potential common parser/registration routine; not combat execution"})
    summary={
        "source_so_sha256":source_sha,
        "exec_segments":len(segments),
        "xref_sites":len(references),
        "disassembled_instruction_rows":len(result),
        "unique_field_labels":len(byname),
        "field_code_reference_counts":{name:len(sites) for name,sites in sorted(byname.items())},
        "nearby_field_groups":groups,
        "site_examples":examples[:12],
        "verified":"ELF map and instruction decodes at 100% of selected XREFs",
        "not_verified":["runtime RNG action selection","percent health poison damage formula",
                        "real device battle events","function entry boundaries"],
    }
    (out/"SUMMARY.json").write_text(json.dumps(summary,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print("ARM64_SITE_DISASSEMBLY_COMPLETE",json.dumps({
        "sites":len(references),"insn_rows":len(result),"fields":len(byname),
        "adjacent_fields":len(groups)},ensure_ascii=False))
    return summary

def main():
    p=argparse.ArgumentParser()
    p.add_argument("--so",type=Path,required=True)
    p.add_argument("--xrefs",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    audit(a.so,a.xrefs,a.out)

if __name__=="__main__":
    main()
