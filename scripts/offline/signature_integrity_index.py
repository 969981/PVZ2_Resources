#!/usr/bin/env python3
"""Read-only actual Java APK-signature/integrity check candidate site index.

Class/method/line/category/code hash only: does not export original game source,
certificate blobs, hardcoded fingerprints, login tokens or personal data.
Static references do NOT prove checks are executed or caused startup exit.
"""
from __future__ import annotations
import argparse
from collections import Counter
import csv
import hashlib
import json
from pathlib import Path
import re

MARKERS = {
    "GET_PACKAGE_SIGNATURES": re.compile(
        r"\b(?:GET_SIGNATURES|GET_SIGNING_CERTIFICATES|signatures|signingInfo)\b"),
    "SIGNER_ACCESS": re.compile(
        r"\b(?:getApkContentsSigners|getSigningCertificateHistory|getPackageInfo|getPackageArchiveInfo|checkSignatures)\s*\("),
    "SIGNATURE_FINGERPRINT": re.compile(
        r"(?i)\b(?:getSign(?:ature)?(?:MD5|SHA1|SHA256)?|checkSign(?:ature)?|verifySign(?:ature)?|apkSignature|signatureCheck|getCert(?:ificate)?Fingerprint)\s*\("),
    "DIGEST_AND_CERT": re.compile(
        r"\b(?:MessageDigest|getInstance|X509Certificate|CertificateFactory|toCharsString)\s*(?:\.|\()"),
    "PROCESS_TERMINATION": re.compile(
        r"\b(?:System\.exit|Runtime\.getRuntime\(\)\.exit|Process\.killProcess|finishAffinity|finishAndRemoveTask|killProcess)\s*\("),
    "NATIVE_EXIT_BRIDGE": re.compile(
        r"\b(?:Native_ExitGame|Native_SDKLoginEnd|Native_SDKInitEnd|checkApk|checkPackage)\s*\("),
}
DECL = re.compile(r"(?m)^\s*(?:(?:public|private|protected|static|final|synchronized|native)\s+){0,5}(?:[\w$<>.,?\[\]]+\s+)+(?P<method>[\w$]+)\s*\(")
COLS = ["category","class_path","source_line","method_hint","first_party_or_sdk",
        "original_source_sha256"]
MAX_MATCHES=12000


def classify_path(path: str) -> str:
    if path.startswith("com/popcap/"): return "POPCAP_GAME"
    if path.startswith(("com/talkweb/","com/tw/")): return "TWGAME_SDK"
    return "OTHER_SDK"


def sanitize_java(value: str) -> str:
    return re.sub(r'"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])*\'',"\"\"",value)


def method_hint(lines: list[str],n:int)->str:
    for j in range(n,max(-1,n-100),-1):
        v=sanitize_java(lines[j].strip())
        if v.startswith(("if ","for ","while ","return ","switch ","catch ","import ","@","//","* ")):
            continue
        m=DECL.match(v)
        if m:
            return m.group("method")
    return "UNRESOLVED"


def scan_source(relative:str,source:str,digest:str)->list[dict]:
    result=[]
    lines=source.splitlines()
    for index,line in enumerate(lines):
        text=sanitize_java(line)
        if text.lstrip().startswith(("import ","package ","//","* ")):
            continue
        for category,rule in MARKERS.items():
            if rule.search(text):
                result.append({
                    "category":category,
                    "class_path":relative,
                    "source_line":index+1,
                    "method_hint":method_hint(lines,index),
                    "first_party_or_sdk":classify_path(relative),
                    "original_source_sha256":digest,
                })
    return result


def run(source_dir:Path,out:Path)->dict:
    out.mkdir(parents=True,exist_ok=True)
    rows=[]
    counts=Counter()
    files=0
    for path in sorted(source_dir.rglob("*.java")):
        if path.stat().st_size>4*1024*1024:continue
        rel=path.relative_to(source_dir).as_posix()
        content=path.read_bytes()
        files+=1
        hits=scan_source(rel,content.decode("utf-8","replace"),
                         hashlib.sha256(content).hexdigest())
        counts.update((r["first_party_or_sdk"],r["category"]) for r in hits)
        if len(rows)<MAX_MATCHES:
            rows.extend(hits[:MAX_MATCHES-len(rows)])
    rows.sort(key=lambda r:(0 if r["first_party_or_sdk"]=="POPCAP_GAME" else
                            1 if r["first_party_or_sdk"]=="TWGAME_SDK" else 2,
                            r["class_path"],r["source_line"]))
    with (out/"signature_integrity_candidate_sites.csv").open(
            "w",encoding="utf-8-sig",newline="") as f:
        w=csv.DictWriter(f,fieldnames=COLS)
        w.writeheader();w.writerows(rows)
    report={
        "status":"STATIC_CANDIDATES_NOT_PROVEN_EXECUTED_INTEGRITY_CHECKS",
        "java_files_scanned":files,"source_sites_count":sum(counts.values()),
        "source_sites_stored":len(rows),
        "by_library_and_role":{group+":"+role:value for (group,role),value in sorted(counts.items())},
        "no_actual_certificate_values_exported":True,
        "next_gate":"Runtime evidence must distinguish app self-signature checks, channel-sdk dependencies, and archive integrity errors."
    }
    (out/"signature_integrity_candidate_summary.json").write_text(
        json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    return report


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--sources",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    if not a.sources.is_dir():p.error("Original JADX private source directory missing")
    if a.out.resolve()==a.sources.resolve() or a.out.resolve().is_relative_to(a.sources.resolve()):
        p.error("Must keep derived metadata outside decompiled code directory")
    print(json.dumps(run(a.sources,a.out),ensure_ascii=False,indent=2))


if __name__=="__main__":
    main()
