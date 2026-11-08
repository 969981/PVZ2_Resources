#!/usr/bin/env python3
"""Census only: source paths, method names and category first-line metadata.

A hit does NOT prove a runtime signature check nor explain any process exit.
No certificate bytes, tokens or raw smali method bodies are exported.
"""
from __future__ import annotations
import argparse
from collections import Counter
import json
from pathlib import Path
import re

RULES = {
    "PIRACY_WARNING": re.compile(r"盗版游戏|请使用正版游戏|盗版|pirat(?:ed|e|ing)|counterfeit|tamper", re.I),
    "SIGNATURE_QUERY": re.compile(r"getApkContentsSigners|getSigningCertificateHistory|GET_SIGNATURES|GET_SIGNING_CERTIFICATES|checkSignatures|Landroid/content/pm/Signature;|->signatures:|->signingInfo:"),
    "CERT_DIGEST": re.compile(r"Ljava/security/MessageDigest;|Ljava/security/cert/|SHA-256|SHA256|SHA-1|MD5"),
    "PACKAGE_QUERY": re.compile(r"Landroid/content/pm/PackageManager;->getPackageInfo|->getPackageCodePath\(|->getInstallerPackageName\("),
    "EXIT_PATH": re.compile(r"Ljava/lang/System;->exit\(|Ljava/lang/Runtime;->(?:exit|halt)\(|Landroid/os/Process;->killProcess\(|Landroid/app/Activity;->(?:finish|finishAffinity|finishAndRemoveTask)\(|->Device_ExitApp\("),
    "SDK_START": re.compile(r"Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->(?:init|login)\("),
    "JNI_INIT_LOGIN": re.compile(r"->Native_SDK(?:Init|Login)(?:Start|End)\("),
}
METHOD = re.compile(r"^\s*\.method\s+.*?\s(?P<name>[^\s(]+)\(")
ROOTS = ("smali", "smali_classes2", "smali_classes3", "smali_classes4", "smali_classes5", "smali_classes6")

def scan_file(path: Path, root: Path) -> list[dict]:
    rel = path.relative_to(root).as_posix()
    rows = []
    current = None
    for num, line in enumerate(path.read_text(encoding="utf-8", errors="replace").splitlines(), 1):
        header = METHOD.match(line)
        if header:
            current = {"file": rel, "method": header.group("name")[:160], "first_line": num,
                       "categories": set(), "first_hits": {}, "hit_count": 0}
        if current is None:
            continue
        if line.strip() == ".end method":
            cats = current["categories"]
            if cats:
                score = (30 * ("PIRACY_WARNING" in cats) +
                         12 * ("SIGNATURE_QUERY" in cats) +
                         6 * ("CERT_DIGEST" in cats) +
                         5 * ("PACKAGE_QUERY" in cats) +
                         10 * ("EXIT_PATH" in cats) +
                         2 * ("SDK_START" in cats) +
                         2 * ("JNI_INIT_LOGIN" in cats))
                if "PIRACY_WARNING" in cats and "EXIT_PATH" in cats:
                    score += 70
                if "SIGNATURE_QUERY" in cats and "EXIT_PATH" in cats:
                    score += 35
                if "CERT_DIGEST" in cats and "EXIT_PATH" in cats:
                    score += 15
                rows.append({"file": current["file"], "method": current["method"],
                             "first_line": current["first_line"],
                             "first_hits": current["first_hits"],
                             "categories": sorted(cats),
                             "hit_count": current["hit_count"],
                             "triage_score": score})
            current = None
            continue
        for category, rule in RULES.items():
            if rule.search(line):
                current["categories"].add(category)
                current["first_hits"].setdefault(category, num)
                current["hit_count"] += 1
    return rows

def analyze(root: Path, out: Path, limit: int = 500) -> dict:
    if not root.is_dir():
        raise ValueError("Smali project root missing")
    if out.resolve() == root.resolve() or out.resolve().is_relative_to(root.resolve()):
        raise ValueError("Output must be outside Smali source")
    rows, counts = [], {}
    for name in ROOTS:
        folder = root/name
        if not folder.is_dir():
            raise ValueError("Missing DEX root: " + name)
        count = 0
        for p in folder.rglob("*.smali"):
            count += 1
            rows.extend(scan_file(p, root))
        counts[name] = count
    rows.sort(key=lambda row: (-row["triage_score"], row["file"], row["first_line"]))
    categories = Counter(category for row in rows for category in row["categories"])
    out.mkdir(parents=True, exist_ok=True)
    (out/"smali_gate_candidates.json").write_text(
        json.dumps(rows[:limit], ensure_ascii=False, indent=2)+"\n", encoding="utf-8")
    result = {
        "status": "STATIC_CANDIDATES_RUNTIME_CAUSALITY_UNVERIFIED",
        "smali_files_scanned": sum(counts.values()),
        "dex_root_counts": counts,
        "candidate_methods": len(rows),
        "categories_by_method": dict(sorted(categories.items())),
        "candidate_rows_exported": min(limit, len(rows)),
        "full_source_exported": False,
        "signature_validation_cause_verified": False,
        "native_main_menu_verified": False,
        "first_level_completed": False,
        "original_game_save_reloaded": False
    }
    (out/"smali_gate_summary.json").write_text(
        json.dumps(result, ensure_ascii=False, indent=2)+"\n", encoding="utf-8")
    return result

def main() -> None:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--smali-root", type=Path, required=True)
    p.add_argument("--out", type=Path, required=True)
    p.add_argument("--limit", type=int, default=500)
    args = p.parse_args()
    if not 1 <= args.limit <= 5000:
        p.error("limit must be 1..5000")
    print(json.dumps(analyze(args.smali_root, args.out, args.limit), ensure_ascii=False))

if __name__ == "__main__":
    main()
