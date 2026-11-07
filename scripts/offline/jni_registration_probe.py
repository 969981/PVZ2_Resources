#!/usr/bin/env python3
"""Pure-Python, read-only JNINativeMethod registration-table candidate scanner.

Input: private, SHA-guarded original PVZ2 CHN 4.2.8 arm64 libSrc.so.
Parses ELF64 PT_LOAD, PT_DYNAMIC DT_RELA relative relocations, and the usual
24-byte JNINativeMethod layout {name*, signature*, fnPtr*}. Finds rows whose
name is one of the known TWPurchase native methods; only accepts a signature
string in a mapped segment and a function pointer in an executable PT_LOAD.

No source APK, full ELF, signed game binary or function body is copied to the
output. Candidate native pointers STILL need Ghidra and runtime JNI validation.
A missing result is not proof a method lacks a native implementation.
"""
from __future__ import annotations

import argparse
import csv
import json
from pathlib import Path
import struct

METHODS = (
    "Native_SDKInitStart", "Native_SDKInitEnd",
    "Native_SDKLoginStart", "Native_SDKLoginEnd",
)
R_AARCH64_RELATIVE = 1027
DT_RELA, DT_RELASZ, DT_RELAENT = 7, 8, 9
CSV_FIELDS = [
    "native_java_method", "name_literal_elf_rva", "registration_entry_elf_rva",
    "jni_signature", "native_function_candidate_rva",
    "reference_provenance", "evidence_level",
]


def parse_elf64(data: bytes) -> tuple[list[dict], dict[int,int]]:
    if len(data)<64 or data[:4]!=b"\x7fELF" or data[4]!=2 or data[5]!=1:
        raise ValueError("Expected ELF64 little-endian libSrc.so")
    phoff=struct.unpack_from("<Q",data,32)[0]
    entsize, count=struct.unpack_from("<HH",data,54)
    if not (56<=entsize<=128 and 1<=count<=512):
        raise ValueError("Invalid program header count")
    if phoff+entsize*count>len(data):
        raise ValueError("Truncated program headers")
    segments=[]
    dynamic=None
    for i in range(count):
        p=phoff+i*entsize
        kind,flags=struct.unpack_from("<II",data,p)
        file_off,vaddr,_,file_sz=struct.unpack_from("<QQQQ",data,p+8)
        if file_off+file_sz>len(data):
            continue
        if kind==1:
            segments.append(dict(off=file_off,va=vaddr,size=file_sz,flags=flags))
        elif kind==2:
            dynamic=(file_off,file_sz)
    reloc={}
    if dynamic:
        off,size=dynamic
        tags={}
        for p in range(off,off+size-15,16):
            tag,value=struct.unpack_from("<QQ",data,p)
            if tag==0:
                break
            tags[tag]=value
        relasz=tags.get(DT_RELASZ,0)
        ent=tags.get(DT_RELAENT,24)
        addr=tags.get(DT_RELA)
        if addr and 24<=ent<=64 and 0<relasz<96*1024*1024:
            relafile=to_file_offset(segments,addr)
            if relafile is not None and relafile+relasz<=len(data):
                for pos in range(relafile,relafile+relasz-ent+1,ent):
                    r_offset,r_info,r_addend=struct.unpack_from("<QQq",data,pos)
                    if (r_info&0xffffffff)==R_AARCH64_RELATIVE and r_addend>=0:
                        reloc[r_offset]=r_addend
    return segments,reloc


def to_file_offset(segments: list[dict], va: int) -> int|None:
    for s in segments:
        if s["va"]<=va<s["va"]+s["size"]:
            return s["off"]+(va-s["va"])
    return None


def to_virtual_address(segments: list[dict], fileoff: int) -> int|None:
    for s in segments:
        if s["off"]<=fileoff<s["off"]+s["size"]:
            return s["va"]+(fileoff-s["off"])
    return None


def segment_is_exec(segments: list[dict], va: int) -> bool:
    return any((s["flags"]&1) and s["va"]<=va<s["va"]+s["size"] for s in segments)


def pointer_value(data:bytes,seg:list[dict],reloc:dict[int,int],va:int)->int|None:
    # Relocation addend is the post-loader virtual pointer.
    if va in reloc:
        return reloc[va]
    off=to_file_offset(seg,va)
    if off is None or off+8>len(data):
        return None
    return struct.unpack_from("<Q",data,off)[0]


def jni_signature(data: bytes, seg: list[dict], va: int|None) -> str|None:
    if va is None:
        return None
    off=to_file_offset(seg,va)
    if off is None:
        return None
    end=data.find(b"\x00",off,min(len(data),off+260))
    if end==-1 or end-off>250:
        return None
    value=data[off:end]
    if (not value.startswith(b"(") or b")" not in value or not value.isascii()
            or any(x<33 or x>126 for x in value)):
        return None
    result=value.decode("ascii")
    return result if result[-1] in "VZBCSIJFD;" else None


def scan_registration_rows(data:bytes, methods:tuple[str,...]=METHODS)->list[dict]:
    segments,reloc=parse_elf64(data)
    matches=[]
    seen=set()
    for method in methods:
        needle=method.encode("ascii")+b"\x00"
        start=0
        while True:
            at=data.find(needle,start)
            if at<0:
                break
            start=at+1
            name_va=to_virtual_address(segments,at)
            if name_va is None:
                continue
            name_bytes=struct.pack("<Q",name_va)
            # Direct pointers, such as those relocated by RELR/packed-RELATIVE.
            locations=[]
            search=0
            while True:
                p=data.find(name_bytes,search)
                if p<0:
                    break
                search=p+1
                entry_va=to_virtual_address(segments,p)
                if entry_va is not None and entry_va%8==0:
                    locations.append((entry_va,"literal_pointer"))
                if len(locations)>5000:
                    break
            # ELF RELA relative entries whose post-load addend equals the string VA.
            locations.extend((place,"relative_relocation")
                             for place,addend in reloc.items() if addend==name_va)
            for entry_va,source in locations:
                sig_va=pointer_value(data,segments,reloc,entry_va+8)
                signature=jni_signature(data,segments,sig_va)
                fn_va=pointer_value(data,segments,reloc,entry_va+16)
                if signature is None or fn_va is None or not segment_is_exec(segments,fn_va):
                    continue
                key=(method,entry_va,fn_va)
                if key in seen:
                    continue
                seen.add(key)
                matches.append({
                    "native_java_method":method,
                    "name_literal_elf_rva":hex(name_va),
                    "registration_entry_elf_rva":hex(entry_va),
                    "jni_signature":signature,
                    "native_function_candidate_rva":hex(fn_va),
                    "reference_provenance":source,
                    "evidence_level":"STRUCTURAL_TABLE_CANDIDATE_NOT_RUNTIME_PROVEN"
                })
    return matches


def audit(so:Path,out:Path)->dict:
    if not so.is_file():
        raise FileNotFoundError(so)
    if so.stat().st_size>256*1024*1024:
        raise ValueError("Unexpected native library size")
    rows=scan_registration_rows(so.read_bytes())
    out.mkdir(parents=True,exist_ok=True)
    with (out/"jni_registration_candidates.csv").open("w",encoding="utf-8-sig",newline="") as f:
        w=csv.DictWriter(f,fieldnames=CSV_FIELDS)
        w.writeheader()
        w.writerows(rows)
    report={
        "status":"STRUCTURAL_JNI_REGISTRATION_CANDIDATES_ONLY",
        "methods_scanned":list(METHODS),
        "candidate_rows":len(rows),
        "methods_with_candidate_table_entries":sorted({r["native_java_method"] for r in rows}),
        "not_proven":"RegisterNatives invocation, actual callback execution, safe patch or local session",
        "privacy":"No game bytes, original ELF, tokens, online credentials or decompiled bodies exported",
    }
    (out/"jni_registration_summary.json").write_text(json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    return report


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--so",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    if a.out.resolve()==a.so.resolve() or a.out.resolve().is_relative_to(a.so.parent.resolve()):
        p.error("Derived output must be separate from the original native library directory")
    print(json.dumps(audit(a.so,a.out),ensure_ascii=False,indent=2))


if __name__=="__main__":
    main()
