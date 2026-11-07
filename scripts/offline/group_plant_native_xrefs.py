#!/usr/bin/env python3
"""Group real Ghidra-resolved native plant combat field XREFs by functions.

Groups are static parser / code topology evidence, not runtime damage semantics.
"""
from __future__ import annotations
import argparse
import csv
from collections import defaultdict
import json
from pathlib import Path

NEEDLES = {
    "mulberry_level5": {"Level5AttackRate", "PlasmaSection", "FlashSection"},
    "mulberry_split": {"SplitGrenadeRate", "ImprovedGrenadeBonus"},
    "mulberry_poison": {"MulberryGasGrenade", "PoisonDamage", "PoisonDuration"},
    "chemist_venom": {"MaximumStackLevel", "MaximumStacksPerLevel", "BasicVenomRate", "AdvancedVenomRate", "PoisonInfos"},
}

def analyze(path:Path, out:Path):
    with path.open(encoding="utf-8-sig",newline="") as f:
        rows=list(csv.DictReader(f))
    if not rows or not {"domain_hint","function_entry","function_name","code_reference_rva_hex"}.issubset(rows[0]):
        raise ValueError("Expected real Ghidra function reference CSV")
    groups=defaultdict(list)
    for r in rows:
        key=r["function_entry"] if r["function_entry"] else "UNRESOLVED:"+r["code_reference_rva_hex"]
        groups[key].append(r)
    result=[]
    for key, items in groups.items():
        labels=sorted({r["domain_hint"] for r in items})
        result.append({
            "function_entry":key,
            "function_name":items[0]["function_name"],
            "source_ref_rows":len(items),
            "field_names":labels,
            "group_overlap":{name:sorted(set(labels)&terms) for name,terms in NEEDLES.items() if len(set(labels)&terms)>=2},
            "caller_count_hint":items[0].get("caller_count",""),
            "callee_count_hint":items[0].get("callee_count",""),
            "candidate_only":"Fields used inside same recovered function; cannot conclude random decision or damage math",
        })
    result.sort(key=lambda x:(-x["source_ref_rows"],x["function_entry"]))
    out.mkdir(parents=True,exist_ok=True)
    data={
        "xref_rows":len(rows),
        "resolved_function_rows":sum(bool(x["function_entry"]) for x in rows),
        "candidate_function_groups":len(result),
        "multi_field_groups":sum(len(x["field_names"])>=2 for x in result),
        "groups":result,
        "not_proven":["actual executed code path", "RNG distribution", "poison damage max HP scaling", "damage ticks"],
    }
    (out/"native_plant_function_clusters.json").write_text(json.dumps(data,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print("REAL_GHIDRA_XREF_GROUPS",json.dumps({k:v for k,v in data.items() if k!="groups"},ensure_ascii=False))
    for x in result[:30]:
        print("FUNCTION",x["function_entry"],x["source_ref_rows"],",".join(x["field_names"]),json.dumps(x["group_overlap"],ensure_ascii=False))
    return data

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument("--ghidra",type=Path,required=True)
    parser.add_argument("--out",type=Path,required=True)
    a=parser.parse_args()
    analyze(a.ghidra,a.out)

if __name__=="__main__":
    main()
