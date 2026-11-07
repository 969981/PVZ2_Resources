#!/usr/bin/env python3
"""Prioritize static Ghidra branches for human investigation, not patching.

Inputs contain only original-ELF-relative instruction addresses. Proximity
does not prove a branch is an integrity/online check. No code bytes are emitted.
"""
from __future__ import annotations

import argparse
import csv
import json
from pathlib import Path


def parse_addr(value: str) -> int:
    text = value.strip().lower().removeprefix("0x")
    if not text or len(text) > 16 or not all(c in "0123456789abcdef" for c in text):
        raise ValueError("Invalid ELF-relative address")
    return int(text, 16)


def rank(rows: list[dict], maximum: int = 50) -> dict:
    entries = [r for r in rows if r.get("type") == "entry"]
    if len(entries) != 1:
        raise ValueError("Expected one exact Ghidra JNI pointer row")
    query = parse_addr(entries[0]["query_jni_pointer"])
    boundary = parse_addr(entries[0]["function_entry"])
    if boundary > query:
        raise ValueError("JNI candidate outside function start")
    candidates = []
    for row in rows:
        if "branch" not in row.get("type", ""):
            continue
        address = parse_addr(row["instruction_address"])
        last = row.get("last_callsite", "")
        prior = parse_addr(last) if last else None
        distance = address - query
        call_gap = address - prior if prior is not None else None
        score = 100000 - min(abs(distance), 100000)
        if call_gap is not None and 0 <= call_gap <= 64:
            score += 500
        candidates.append({
            "rva": f"0x{address:x}",
            "branch_mnemonic": row.get("mnemonic", ""),
            "flow_target_rvas": row.get("flow_targets", ""),
            "relative_to_jni_pointer_bytes": distance,
            "nearest_prior_callsite_rva": f"0x{prior:x}" if prior is not None else None,
            "bytes_from_prior_call": call_gap,
            "ranking_score": score,
            "evidence_level": "STATIC_DISTANCE_ONLY_NOT_INTEGRITY_CHECK",
        })
    candidates.sort(key=lambda x: (-x["ranking_score"], abs(x["relative_to_jni_pointer_bytes"])))
    return {
        "status": "RANKED_STATIC_CANDIDATES_NO_CAUSALITY",
        "function_entry_rva": f"0x{boundary:x}",
        "registration_pointer_rva": f"0x{query:x}",
        "conditional_branches_total": len(candidates),
        "top_candidates": candidates[:maximum],
        "actual_signature_or_login_branch_verified": False,
        "playability_verified": False,
    }


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--in-csv",required=True,type=Path)
    p.add_argument("--out",required=True,type=Path)
    args=p.parse_args()
    with args.in_csv.open(encoding="utf-8",newline="") as f:
        rows=list(csv.DictReader(f))
    result=rank(rows)
    args.out.parent.mkdir(parents=True,exist_ok=True)
    args.out.write_text(json.dumps(result,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print(json.dumps({k:v for k,v in result.items() if k!="top_candidates"},ensure_ascii=False))


if __name__=="__main__":
    main()
