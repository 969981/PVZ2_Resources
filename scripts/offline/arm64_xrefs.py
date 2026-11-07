#!/usr/bin/env python3
"""Read-only AArch64 references to source-version-verified network host strings.

Inspect ADR or ADRP+ADD instructions that materialize exact native string RVAs.
These are CODE REFERENCE HINTS only, not verified requests, callback/function
entry points, bypass targets or legal patch sites. All game bytes stay private.
"""
from __future__ import annotations

import argparse
import csv
import hashlib
import json
import mmap
from pathlib import Path
import shutil
import struct
import zipfile

try:
    from scripts.offline.audit_apk import SOURCE_SHA256, sha256_file
    from scripts.offline.reverse_dependencies import scan_native
except ModuleNotFoundError:
    from audit_apk import SOURCE_SHA256, sha256_file
    from reverse_dependencies import scan_native

RELEVANT_HOST_SUFFIXES = ("ditwan.cn", "hrgame.com.cn", "popcap.com.cn", "talkyun.com.cn")


def exec_segments(path: Path) -> list[tuple[int, int, int]]:
    """(file_offset, byte_count, virtual_address) of executable ELF64 PT_LOAD."""
    with path.open("rb") as f:
        h=f.read(64)
        if len(h)<64 or h[:4]!=b"\x7fELF" or h[4]!=2 or h[5]!=1:
            return []
        phoff=struct.unpack_from("<Q",h,32)[0]
        ent, count=struct.unpack_from("<HH",h,54)
        if not (56<=ent<=128 and 1<=count<=128):
            return []
        if phoff+ent*count > path.stat().st_size:
            return []
        f.seek(phoff)
        data=f.read(ent*count)
    segs=[]
    for i in range(count):
        b=i*ent
        kind,flags=struct.unpack_from("<II",data,b)
        if kind!=1 or not (flags&1):
            continue
        off,vaddr=struct.unpack_from("<QQ",data,b+8)
        count_file=struct.unpack_from("<Q",data,b+32)[0]
        if off+count_file<=path.stat().st_size:
            segs.append((off,count_file,vaddr))
    return segs


def sign_extend(n:int, bits:int)->int:
    return n-(1<<bits) if n & (1<<(bits-1)) else n


def decode_adr(ins:int,pc:int) -> int|None:
    if (ins&0x9f000000)!=0x10000000:
        return None
    imm=((ins>>5)&0x7ffff)<<2 | ((ins>>29)&3)
    return pc+sign_extend(imm,21)


def decode_adrp(ins:int,pc:int) -> tuple[int,int]|None:
    if (ins&0x9f000000)!=0x90000000:
        return None
    imm=((ins>>5)&0x7ffff)<<2 | ((ins>>29)&3)
    return (pc & ~0xfff) + sign_extend(imm,21)*4096,ins & 31


def decode_add_imm_x(ins:int, src_reg:int, base:int) -> int|None:
    # Only ADD (64-bit immediate) Xd,Xn,#imm; no S flag, no register ADD.
    if (ins&0xff000000)!=0x91000000 or ((ins>>5)&31)!=src_reg:
        return None
    imm12=(ins>>10)&0xfff
    shift=(ins>>22)&1
    return base+(imm12<<(12 if shift else 0))


def scan_xrefs(path:Path, targets:dict[int,list[dict]], max_results:int=1000):
    if not targets:
        return []
    pages={k&~0xfff for k in targets}
    result=[]
    observed=set()
    segments=exec_segments(path)
    with path.open("rb") as f, mmap.mmap(f.fileno(),0,access=mmap.ACCESS_READ) as mm:
        for fileoff,nbytes,vaddr in segments:
            end=fileoff+nbytes-4
            for file_pos in range(fileoff,end+1,4):
                ins=struct.unpack_from("<I",mm,file_pos)[0]
                pc=vaddr+(file_pos-fileoff)
                direct=decode_adr(ins,pc)
                if direct is not None and direct in targets:
                    refs=[(direct,"ADR",pc,None)]
                else:
                    refs=[]
                info=decode_adrp(ins,pc)
                if info is not None:
                    page,reg=info
                    if page in pages:
                        for next_pos in range(file_pos+4,min(file_pos+4*10,end+1),4):
                            ins2=struct.unpack_from("<I",mm,next_pos)[0]
                            dst=decode_add_imm_x(ins2,reg,page)
                            if dst is not None and dst in targets:
                                next_pc=vaddr+(next_pos-fileoff)
                                refs.append((dst,"ADRP_ADD",pc,next_pc))
                for literal,kind,adrpc,addpc in refs:
                    for row in targets[literal]:
                        identity=(literal,kind,adrpc,addpc,row["domain_hint"])
                        if identity in observed:
                            continue
                        observed.add(identity)
                        result.append({
                            "domain_hint":row["domain_hint"],
                            "native_literal_rva_hex":hex(literal),
                            "code_reference_rva_hex":hex(adrpc),
                            "followup_add_rva_hex":hex(addpc) if addpc is not None else "",
                            "instruction_pattern":kind,
                            "warning":"String reference only; not a verified network-check branch."
                        })
                        if len(result)>=max_results:
                            return result
    return result


def audit(apk:Path, private:Path, out:Path) ->dict:
    apkhash=sha256_file(apk)
    if apkhash!=SOURCE_SHA256:
        raise ValueError("Wrong source APK SHA256")
    private.mkdir(parents=True,exist_ok=True)
    out.mkdir(parents=True,exist_ok=True)
    lib=private/"libSrc-arm64.so"
    with zipfile.ZipFile(apk) as z:
        with z.open("lib/arm64-v8a/libSrc.so") as src,lib.open("wb") as dst:
            shutil.copyfileobj(src,dst,4*1024*1024)
    hints,counts=scan_native(lib,"lib/arm64-v8a/libSrc.so",max_rows=3000)
    targets={}
    for row in hints:
        host=row.get("domain_hint","")
        if not host or not any(host==suffix or host.endswith("."+suffix) for suffix in RELEVANT_HOST_SUFFIXES):
            continue
        if not row.get("elf_rva_hex"):
            continue
        address=int(row["elf_rva_hex"],16)
        targets.setdefault(address,[]).append(row)
    rows=scan_xrefs(lib,targets)
    with (out/"arm64_url_string_xrefs.csv").open("w",encoding="utf-8-sig",newline="") as stream:
        columns=["domain_hint","native_literal_rva_hex","code_reference_rva_hex",
                 "followup_add_rva_hex","instruction_pattern","warning"]
        writer=csv.DictWriter(stream,fieldnames=columns)
        writer.writeheader()
        writer.writerows(rows)
    with (out/"candidate_host_literals.csv").open("w",encoding="utf-8-sig",newline="") as stream:
        columns=["domain_hint","elf_rva_hex","file_offset_hex"]
        writer=csv.DictWriter(stream,fieldnames=columns)
        writer.writeheader()
        for address, records in sorted(targets.items()):
            for row in records:
                writer.writerow({k:row[k] for k in columns})
    report={
        "status":"STATIC_STRINGS_AND_CODE_CANDIDATES_ONLY",
        "apk_sha256":apkhash,"libSrc_arm64_sha256":sha256_file(lib),
        "arm64_exec_segments":len(exec_segments(lib)),
        "selected_literal_rvas":len(targets),
        "xrefs":len(rows),"not_proven":"Actual code control flow, server usage, level/save behavior and patch safety",
        "no_binary_uploaded":True
    }
    (out/"arm64_xref_summary.json").write_text(json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    return report


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--apk",type=Path,required=True)
    p.add_argument("--scratch",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    args=p.parse_args()
    if not args.apk.is_file():p.error("APK file missing")
    if args.scratch.resolve()==args.out.resolve():p.error("Keep private binary and uploadable metadata separate")
    print(json.dumps(audit(args.apk,args.scratch,args.out),ensure_ascii=False,indent=2))


if __name__=="__main__":
    main()
