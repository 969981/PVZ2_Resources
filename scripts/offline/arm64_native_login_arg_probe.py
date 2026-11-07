#!/usr/bin/env python3
"""Bounded read-only AArch64 JNI entry argument-use probe for original libSrc.so.

Requires capstone >=5 (install in private venv). Original ELF remains private.
Only derived register-read offsets, small comparison constants and trampoline
targets are exported; these cannot prove game authentication or player state.
"""
from __future__ import annotations
import argparse
import csv
import json
from pathlib import Path
from scripts.offline.jni_registration_probe import parse_elf64, scan_registration_rows, to_file_offset

REG_GROUP = {"x2": "native_handle_long", "w2": "native_handle_long",
             "x3": "login_status_int", "w3": "login_status_int",
             "x4": "jni_string_ref", "w4": "jni_string_ref"}
OBS_FIELDS = ["method", "native_entry_rva", "instruction_offset_rva",
              "mnemonic", "input_register_group", "within_entry_instructions",
              "evidence"]
COMPARE_FIELDS = ["method", "native_entry_rva", "instruction_offset_rva",
                  "mnemonic", "small_immediate", "evidence"]
COMPARE_OPS = {"cmp", "cmn", "subs", "adds", "cbz", "cbnz", "tbz", "tbnz", "tst"}
STOP_OPS = {"ret", "retab", "eret"}


def examine(data: bytes, capstone_module, window: int = 1024) -> tuple[list[dict], list[dict], dict]:
    segments,_ = parse_elf64(data)
    candidates = scan_registration_rows(data)
    reader = capstone_module.Cs(
        capstone_module.CS_ARCH_ARM64, capstone_module.CS_MODE_LITTLE_ENDIAN
    )
    reader.detail = True
    observed, comparisons = [], []
    summary={}
    for c in candidates:
        name = c["native_java_method"]
        va = int(c["native_function_candidate_rva"],16)
        off = to_file_offset(segments,va)
        if off is None:
            continue
        sample = data[off:min(len(data),off+window)]
        first = {}
        count=0
        entry_list=[]
        for ins in reader.disasm(sample,va):
            if count>=240:
                break
            count+=1
            reg_reads,_=ins.regs_access()
            for reg in reg_reads:
                rname=reader.reg_name(reg).lower()
                group=REG_GROUP.get(rname)
                if group and group not in first and count<=100:
                    first[group]=hex(ins.address)
                    observed.append({
                        "method":name,
                        "native_entry_rva":hex(va),
                        "instruction_offset_rva":hex(ins.address),
                        "mnemonic":ins.mnemonic,
                        "input_register_group":group,
                        "within_entry_instructions":count,
                        "evidence":"direct_register_read_not_dataflow_proof"
                    })
            if ins.mnemonic in COMPARE_OPS:
                for op in ins.operands:
                    if op.type == capstone_module.arm64.ARM64_OP_IMM:
                        imm = int(op.imm)
                        if -65535<=imm<=65535:
                            comparisons.append({
                                "method":name,
                                "native_entry_rva":hex(va),
                                "instruction_offset_rva":hex(ins.address),
                                "mnemonic":ins.mnemonic,
                                "small_immediate":imm,
                                "evidence":"compare_constant_not_linked_to_java_status"
                            })
            if ins.mnemonic in STOP_OPS:
                break
        summary[name]={
            "candidate_native_entry_rva":hex(va),
            "disassembled_instructions_sampled":count,
            "direct_first_input_groups":first,
            "is_bounded_straight_line_probe":True
        }
    return observed,comparisons,summary


def write_csv(path:Path,rows:list[dict],cols:list[str])->None:
    with path.open("w",encoding="utf-8-sig",newline="") as f:
        w=csv.DictWriter(f,fieldnames=cols)
        w.writeheader()
        w.writerows(rows)


def run(so:Path,out:Path)->dict:
    if not so.is_file():
        raise FileNotFoundError(so)
    if so.stat().st_size>256*1024*1024:
        raise ValueError("Unexpected ELF size")
    import capstone
    out.mkdir(parents=True,exist_ok=True)
    observed,comparisons,by_method=examine(so.read_bytes(),capstone)
    write_csv(out/"arm64_jni_first_register_reads.csv",observed,OBS_FIELDS)
    write_csv(out/"arm64_jni_small_comparison_constants.csv",comparisons,COMPARE_FIELDS)
    report={
        "status":"STATIC_ARM64_DIRECT_REGISTER_READS_NOT_AUTH_DATAFLOW",
        "capstone_version":getattr(capstone,"__version__","unknown"),
        "entry_methods":list(by_method),
        "entries":by_method,
        "first_reads_count":len(observed),
        "small_comparison_rows":len(comparisons),
        "no_runtime_login_proven":True,
        "source":"ELF JNINativeMethod function pointers, validated separately",
        "limits":"Direct x2/x3/x4 read is not high-level parameter dataflow; comparison constants are not necessarily auth checks."
    }
    (out/"arm64_jni_status_probe.json").write_text(
        json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8"
    )
    return report


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--so",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    if a.out.resolve()==a.so.resolve() or a.out.resolve().is_relative_to(a.so.parent.resolve()):
        p.error("Output metadata must be outside source ELF directory")
    print(json.dumps(run(a.so,a.out),ensure_ascii=False,indent=2))


if __name__=="__main__":
    main()
