#!/usr/bin/env python3
"""Derive candidate property-parser call arguments from actual ARM64 instruction windows.

The argument value passed in W3 to an indirect call can resemble a member
offset, but without decompilation/callee semantics this is not a verified
runtime member offset, combat hook location or writable memory layout.
"""
from __future__ import annotations
import argparse
import csv
import json
from pathlib import Path
from collections import defaultdict

CLUSTERS = (
    ("chemist_projectile_config", 0x3E25100, 0x3E25700),
    ("mulberry_plant_config", 0x3E29800, 0x3E29D00),
    ("mulberry_gas_projectile_config_candidate", 0x3E2DF00, 0x3E2E100),
)

def source_rows(path: Path):
    with path.open(encoding="utf-8-sig",newline="") as f:
        result=list(csv.DictReader(f))
    if not result or not {"field","xref_site","relative_bytes","mnemonic","operands"}.issubset(result[0]):
        raise ValueError("Expected ARM64 instruction window CSV")
    return result

def cluster(at: int):
    for name,lo,hi in CLUSTERS:
        if lo <= at < hi:
            return name
    return "other"

def parse_argument(operands: str):
    if not operands.startswith("w3, #"):
        return None
    arg=operands.split("#",1)[1].strip()
    try: return int(arg,0)
    except ValueError: return None

def derive(rows):
    grouped=defaultdict(list)
    for r in rows:
        grouped[(r["field"],r["xref_site"])].append(r)
    output=[]
    for (field,site),items in sorted(grouped.items(),key=lambda kv:int(kv[0][1],16)):
        site_int=int(site,16)
        items.sort(key=lambda r:int(r["relative_bytes"]))
        argument=None
        for pos,r in enumerate(items):
            rel=int(r["relative_bytes"])
            if not (24<=rel<=136 and r["mnemonic"]=="mov"):continue
            value=parse_argument(r["operands"])
            if value is None:continue
            for next_insn in items[pos+1:pos+4]:
                later=int(next_insn["relative_bytes"])
                if later>rel+12:break
                if next_insn["mnemonic"] in ("blr","bl"):
                    argument=(value,rel,next_insn["instruction_rva"],next_insn["mnemonic"])
                    break
            if argument:break
        output.append({
            "field":field,
            "string_xref_site":site,
            "candidate_parser_cluster":cluster(site_int),
            "w3_value_hex":hex(argument[0]) if argument else "",
            "w3_value_dec":str(argument[0]) if argument else "",
            "w3_relative_to_string_xref":str(argument[1]) if argument else "",
            "nearby_call_rva":argument[2] if argument else "",
            "nearby_call_kind":argument[3] if argument else "",
            "evidence_status":"static-argument-before-indirect-call" if argument else "no-matching-call-argument-in-window",
            "not_verified":"W3 semantic type, target object base, executing gameplay branch",
        })
    return output

def run(source:Path,out:Path):
    rows=derive(source_rows(source))
    out.mkdir(parents=True,exist_ok=True)
    path=out/"native_plant_parser_arguments.csv"
    fields=list(rows[0])
    with path.open("w",encoding="utf-8-sig",newline="") as f:
        w=csv.DictWriter(f,fieldnames=fields)
        w.writeheader();w.writerows(rows)
    selected=[r for r in rows if r["candidate_parser_cluster"]!="other" and r["w3_value_hex"]]
    counts=defaultdict(int)
    for r in rows:counts[r["candidate_parser_cluster"]]+=1
    summary={"source":"source-SHA256-verified real ARM64 instruction windows",
             "total_xref_sites":len(rows),
             "sites_with_w3_immediate_and_followup_call":sum(bool(r["w3_value_hex"]) for r in rows),
             "target_clusters":dict(counts),
             "target_field_parser_candidates":selected,
             "caution":"Do not call W3 immediate a verified struct offset until callee interface and object lifetime are confirmed."}
    (out/"SUMMARY.json").write_text(json.dumps(summary,indent=2,ensure_ascii=False)+"\n",encoding="utf-8")
    print("NATIVE_PARSER_ARGS_EXTRACTED",len(rows),"matched",summary["sites_with_w3_immediate_and_followup_call"])
    for r in selected:
        print("FIELD_ARG",r["candidate_parser_cluster"],r["field"],r["string_xref_site"],r["w3_value_hex"])
    return summary

def main():
    p=argparse.ArgumentParser()
    p.add_argument("--instructions",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    run(a.instructions,a.out)

if __name__=="__main__":
    main()
