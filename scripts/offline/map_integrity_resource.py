#!/usr/bin/env python3
"""Map a known privacy/integrity warning from Android resources back to Smali refs.

No executable code or commercial resources are exported. This is a static
cross-reference index; it cannot prove runtime caller or solve licensing.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path
import re
import subprocess

PREFIX = "盗版游戏"
RESOURCE = re.compile(r"(?<!spec )\bresource\s+(0x[0-9a-fA-F]{8})\s+([^\s:]+:string/[\w.$-]+)")
ROOTS = ("smali", "smali_classes2", "smali_classes3",
         "smali_classes4", "smali_classes5", "smali_classes6")


def parse_dump(data: str) -> list[dict]:
    resource = None
    matches = []
    for line in data.splitlines():
        m = RESOURCE.search(line)
        if m:
            resource = (m.group(1).lower(), m.group(2))
        if PREFIX in line or "请使用正版游戏" in line:
            if resource:
                ident, name = resource
                entry = {"id": ident, "name": name}
                if entry not in matches:
                    matches.append(entry)
    return matches


def locate_source_refs(smali_root: Path, resources: list[dict], max_hits=300) -> dict:
    ids = {r["id"].lower() for r in resources}
    names = {r["name"].split("/")[-1] for r in resources}
    for root_name in ROOTS:
        if not (smali_root/root_name).is_dir():
            raise ValueError("Missing Smali root: " + root_name)
    refs = []
    examined = 0
    for root_name in ROOTS:
        for path in (smali_root/root_name).rglob("*.smali"):
            examined += 1
            method = None
            for n, line in enumerate(path.read_text(encoding="utf-8", errors="replace").splitlines(), 1):
                if line.lstrip().startswith(".method "):
                    method = line.strip()[:220]
                if line.strip() == ".end method":
                    method = None
                low = line.lower()
                direct = any(ident in low for ident in ids)
                via_field = ("R$string;->" in line and any("->"+key+":I" in line for key in names))
                if (direct or via_field) and len(refs) < max_hits:
                    refs.append({
                        "file": path.relative_to(smali_root).as_posix(),
                        "line": n, "method": method,
                        "match_kind": "resource_id_constant" if direct else "R_string_field",
                    })
    refs.sort(key=lambda r: (r["method"] is None, "R$string.smali" in r["file"], r["file"], r["line"]))
    return {"smali_files_examined": examined, "references": refs[:max_hits],
            "max_results": max_hits, "no_runtime_causality_claim": True}


def analyze(apk: Path, aapt2: Path, smali_root: Path) -> dict:
    cmd = [str(aapt2), "dump", "resources", str(apk)]
    completed = subprocess.run(cmd, capture_output=True, timeout=150, check=False)
    if completed.returncode:
        return {"status": "AAPT2_RESOURCE_DUMP_FAILED", "returncode": completed.returncode,
                "references": [], "resource_ids": []}
    found = parse_dump(completed.stdout.decode("utf-8", "replace"))
    report = {"status": "STATIC_RESOURCE_REFERENCES_RUNTIME_UNVERIFIED",
              "resource_ids": found, "wording_found_in_aapt2_dump": bool(found),
              "binary_resource_source_confirmed_by_prior_scan": True}
    report.update(locate_source_refs(smali_root, found))
    return report


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--apk", type=Path, required=True)
    p.add_argument("--aapt2", type=Path, required=True)
    p.add_argument("--smali-root", type=Path, required=True)
    p.add_argument("--out", type=Path, required=True)
    a = p.parse_args()
    result = analyze(a.apk, a.aapt2, a.smali_root)
    a.out.parent.mkdir(parents=True, exist_ok=True)
    a.out.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({k: v for k, v in result.items() if k != "references"}, ensure_ascii=False))


if __name__ == "__main__":
    main()
