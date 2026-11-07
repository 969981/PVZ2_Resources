#!/usr/bin/env python3
"""Metadata-only Smali study of dynamically resolved signature warning UI.

This cannot infer the runtime caller without trace evidence. It does not
patch package verification, licensing, purchase or login functionality.
"""
from __future__ import annotations

import json
from pathlib import Path
import re
from collections import Counter

ROOTS = ("smali", "smali_classes2", "smali_classes3",
         "smali_classes4", "smali_classes5", "smali_classes6")

CATEGORIES = {
    "CHECK_SIGN_NAME_LITERAL": re.compile(r'const-string(?:/jumbo)?\s+\S+,\s*"check_sign_failed"'),
    "CHECK_SIGN_FIELD": re.compile(r"R\$string;->check_sign_failed:I"),
    "CHECK_SIGN_RESOURCE_ID": re.compile(r"0x7f0f01d6\b", re.I),
    "DYNAMIC_RESOURCE_LOOKUP": re.compile(r"Landroid/content/res/Resources;->getIdentifier\("),
    "SIGNATURE_GET_PACKAGE": re.compile(r"Landroid/content/pm/PackageManager;->getPackageInfo\("),
    "SIGNATURE_READ": re.compile(r"PackageInfo;->signatures:|PackageInfo;->signingInfo:"),
    "SIG_VERIFICATION_NAMED": re.compile(r"checkSign|verifySign|validateSign|verifyCert|SignatureVerifier|checkPackage", re.I),
    "DIALOG_BUILDER": re.compile(r"Landroid/app/AlertDialog\$Builder;->"),
    "EXIT_PROCESS": re.compile(r"Landroid/os/Process;->killProcess|Ljava/lang/System;->exit\("),
}


def scan(root: Path) -> dict:
    records = []
    scanned_files = 0
    for sub in ROOTS:
        folder = root/sub
        if not folder.is_dir():
            raise ValueError("Missing DEX dir " + sub)
        for file in folder.rglob("*.smali"):
            scanned_files += 1
            current = None
            for lineno, line in enumerate(file.read_text(encoding="utf-8", errors="replace").splitlines(), 1):
                if line.startswith(".method "):
                    current = {"file": file.relative_to(root).as_posix(),
                               "method": line.strip()[:190], "line": lineno,
                               "categories": set(), "hits": {}}
                if current:
                    for name, rx in CATEGORIES.items():
                        if rx.search(line):
                            current["categories"].add(name)
                            current["hits"].setdefault(name, lineno)
                if line.strip() == ".end method" and current:
                    cats = current["categories"]
                    if cats:
                        interesting = bool(cats & {"CHECK_SIGN_NAME_LITERAL", "CHECK_SIGN_FIELD",
                            "CHECK_SIGN_RESOURCE_ID", "DYNAMIC_RESOURCE_LOOKUP", "SIG_VERIFICATION_NAMED"})
                        if interesting:
                            score = (100 * ("CHECK_SIGN_NAME_LITERAL" in cats) +
                                     90 * ("CHECK_SIGN_FIELD" in cats) +
                                     80 * ("CHECK_SIGN_RESOURCE_ID" in cats) +
                                     15 * ("DYNAMIC_RESOURCE_LOOKUP" in cats) +
                                     8 * ("SIGNATURE_READ" in cats) +
                                     10 * ("SIG_VERIFICATION_NAMED" in cats) +
                                     3 * ("DIALOG_BUILDER" in cats) +
                                     3 * ("EXIT_PROCESS" in cats))
                            records.append({**current,"categories":sorted(cats),"rank_score":score})
                    current = None
    records.sort(key=lambda item: (-item["rank_score"],item["file"],item["line"]))
    return {
        "status": "STATIC_DYNAMIC_RESOURCE_CANDIDATES_NOT_PROVEN",
        "smali_files_examined": scanned_files,
        "candidate_methods": len(records),
        "category_totals": dict(Counter(c for r in records for c in r["categories"])),
        "methods": records[:180],
        "warning_caller_verified": False,
        "anti_tamper_cause_verified": False,
        "offline_gameplay_verified": False,
    }


def main():
    import argparse
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--smali-root",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    result=scan(a.smali_root)
    a.out.parent.mkdir(parents=True,exist_ok=True)
    a.out.write_text(json.dumps(result,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print(json.dumps({k:v for k,v in result.items() if k!="methods"},ensure_ascii=False))


if __name__=="__main__":
    main()
