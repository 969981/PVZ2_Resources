#!/usr/bin/env python3
"""Classify real TWPurchase.Native_SDKLoginEnd callsite argument shapes.

Source stays in private JADX directory. This outputs only callback callsite
line, arity, argument *kinds*, nearby tiny integer comparisons, and source SHA;
never login payload strings, full Java source, raw credentials or server data.
Nearby comparisons are only static hints, not proven success/failure semantics.
"""
from __future__ import annotations
import argparse
import csv
import hashlib
import json
from pathlib import Path
import re

TW_PURCHASE="com/popcap/pvz2cthddev/TWPurchase.java"
NATIVE_CALL=re.compile(r"\bNative_SDKLoginEnd\s*\(")
DECL=re.compile(r"\bnative\s+\w+\s+Native_SDKLoginEnd\s*\(")
NUMBER_PREDICATE=re.compile(r"(?:==|!=|<=|>=|<|>)\s*(-?\d{1,2})\b")
FIELDS=["java_file","source_line","argument_count_hint","argument_type_hints",
        "nearby_integer_comparisons","source_sha256"]


def strip_literals(value:str)->str:
    return re.sub(r'"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])*\'', '""',value)


def parse_arguments(text:str,opening_pos:int)->list[str]|None:
    """opening_pos must point to '('; never returns anything to public output."""
    if opening_pos>=len(text) or text[opening_pos]!="(":
        return None
    depth=0
    arguments=[]
    start=opening_pos+1
    # Avoid copying/processing a huge game function body.
    for p in range(opening_pos,min(opening_pos+1600,len(text))):
        c=text[p]
        if c=="(":
            depth+=1
        elif c==")":
            depth-=1
            if depth==0:
                tail=text[start:p]
                if tail.strip():
                    arguments.append(tail.strip())
                return arguments
        elif c=="," and depth==1:
            arguments.append(text[start:p].strip())
            start=p+1
    return None


def argument_kind(value:str)->str:
    s=value.strip()
    if s in ('""',"''"):
        return "string_literal_redacted"
    if re.fullmatch(r"-?(?:0x[0-9A-Fa-f]+|\d+)",s):
        return "integer_literal"
    if s in ("true","false"):
        return "boolean_literal"
    if re.fullmatch(r"[\w$]+",s):
        return "variable"
    if s.startswith(("this.","super.")):
        return "member_field_or_call"
    if "(" in s:
        return "nested_method_call"
    if "." in s:
        return "field_reference"
    return "other_expression"


def analyze_source(java_source:str,sha:str)->list[dict]:
    scrubbed=strip_literals(java_source)
    rows=[]
    for m in NATIVE_CALL.finditer(scrubbed):
        line_start=scrubbed.rfind("\n",0,m.start())+1
        line=scrubbed.count("\n",0,m.start())+1
        line_end=scrubbed.find("\n",m.start())
        if line_end<0:
            line_end=len(scrubbed)
        if DECL.search(scrubbed[line_start:line_end]):
            continue
        args=parse_arguments(scrubbed,m.end()-1)
        if args is None:
            continue
        prior=scrubbed[max(0,line_start-2000):line_start].splitlines()[-28:]
        conditions=[]
        for entry in prior:
            if "if" not in entry and "switch" not in entry:
                continue
            conditions.extend(NUMBER_PREDICATE.findall(entry))
        rows.append({
            "java_file":TW_PURCHASE,
            "source_line":line,
            "argument_count_hint":len(args),
            "argument_type_hints":";".join(argument_kind(a) for a in args),
            "nearby_integer_comparisons":";".join(sorted(set(conditions),key=lambda x:(len(x),x)))[:100],
            "source_sha256":sha
        })
    return rows


def analyze(path:Path,out:Path)->dict:
    if not path.is_file():
        raise FileNotFoundError(path)
    code=path.read_bytes()
    rows=analyze_source(code.decode("utf-8","replace"),hashlib.sha256(code).hexdigest())
    out.mkdir(parents=True,exist_ok=True)
    with (out/"twpurchase_login_end_branch_shapes.csv").open("w",encoding="utf-8-sig",newline="") as f:
        w=csv.DictWriter(f,fieldnames=FIELDS)
        w.writeheader()
        w.writerows(rows)
    report={
        "status":"STATIC_CALLSITE_SHAPES_NOT_VALIDATED_RETURN_CODES",
        "source_file":TW_PURCHASE,
        "native_login_end_callsite_count":len(rows),
        "callsite_line_numbers":[r["source_line"] for r in rows],
        "argument_count_hints":[r["argument_count_hint"] for r in rows],
        "meaning_of_status_or_payload":"NOT_VERIFIED",
        "actual_offline_gameplay":"NOT_VERIFIED",
        "privacy":"No original body, payload, literal strings, secrets or APK exported"
    }
    (out/"twpurchase_login_end_branch_summary.json").write_text(
        json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    return report


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--sources",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    file=a.sources/TW_PURCHASE
    if a.out.resolve().is_relative_to(a.sources.resolve()):
        p.error("Keep exported metadata outside decompiled Java source tree")
    print(json.dumps(analyze(file,a.out),ensure_ascii=False,indent=2))


if __name__=="__main__":
    main()
