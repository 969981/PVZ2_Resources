#!/usr/bin/env python3
"""Version-specific metadata of TwGame SDK <-> PopCap JNI boundary.

Examines private JADX sources and optional arm64 libSrc.so. Emits ONLY method
names, arity, class names, original source line and checksums, optional symbol
addresses, NOT source bodies, tokens, credentials, JNI parameters or game bytes.
This does not patch login, invent an offline token or prove that a native call
is executed. No copyrighted code artifacts should be uploaded.
"""
from __future__ import annotations
import argparse
from collections import Counter
import csv
import hashlib
import json
from pathlib import Path
import re
import subprocess

CLASSES = (
    "com/popcap/pvz2cthddev/TWPurchase.java",
    "com/popcap/pvz2cthddev/AndroidGameApp.java",
    "com/popcap/pvz2cthddev/SexyAppFrameworkActivity.java",
    "com/tw/gamesdk/core/GameSDK.java",
    "com/tw/gamesdk/core/UserDataManager.java",
    "com/talkweb/twOfflineSdk/TwOfflineSDK.java",
    "com/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl.java",
    "com/talkweb/twOfflineSdk/callback/CallbackManager.java",
)
NATIVE_DECL = re.compile(
    r"\bnative\s+[\w$.\[\]<>]+\s+(?P<name>Native_[A-Za-z_0-9]+)\s*"
    r"\((?P<args>[^)]*)\)\s*;"
)
NATIVE_CALL = re.compile(r"\b(?P<name>Native_(?:SDK|GameApp|application|CallCertification|ExitGame|CheckGameCenterStatus)[\w$]*)\s*\(")
SDK_CALL = re.compile(
    r"\b(?P<class>TwOfflineSDK|TwOfflineSDKImpl|GameSDK|TwPay|UserDataManager|CallbackManager)"
    r"\s*\.\s*(?P<method>[A-Za-z_$][\w$]*)\s*\("
)
CALLBACK_CALL = re.compile(r"\b(?P<callback>[\w$]*(?:callback|Callback|Listener)[\w$]*)"
                           r"\s*\.\s*(?P<method>onSuccess|onFailure|onResponse|result|loginSuccess|loginFailed)\s*\(")
METHOD_DECL = re.compile(
    r"^\s*(?:(?:public|private|protected|static|final|synchronized|native|abstract)\s+)*"
    r"(?:(?:[\w$<>.,?\[\]]+)\s+)+(?P<name>[A-Za-z_$][\w$]*)\s*\("
)
CONTROL = {"if", "for", "while", "switch", "catch", "return", "new", "throw", "super"}
FIELDS = ["java_source", "line", "enclosing_method_hint", "edge_type",
          "target", "arity_hint", "source_sha256"]


def scrub_literals(line: str) -> str:
    return re.sub(r'"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])*\'', '""', line)


def arity_hint(arguments: str) -> int:
    if not arguments.strip():
        return 0
    # No parameter values are retained.
    return arguments.count(",") + 1


def find_method_hint(lines: list[str], start: int) -> str:
    for idx in range(start, max(-1, start-200), -1):
        candidate=scrub_literals(lines[idx])
        if candidate.lstrip().startswith(("import ", "package ", "//", "* ", "@")):
            continue
        m=METHOD_DECL.match(candidate)
        if m and m.group("name") not in CONTROL:
            return m.group("name")
    return "UNRESOLVED"


def inspect_java(relative: str, source: str, source_sha: str) -> list[dict]:
    rows = []
    lines = source.splitlines()
    for i, raw in enumerate(lines):
        line=scrub_literals(raw)
        if line.lstrip().startswith(("import ", "package ", "//", "* ", "@")):
            continue
        native_declaration=NATIVE_DECL.search(line)
        if native_declaration:
            rows.append({
                "java_source":relative,"line":i+1,
                "enclosing_method_hint":"DECLARATION","edge_type":"NATIVE_DECLARATION",
                "target":native_declaration.group("name"),
                "arity_hint":arity_hint(native_declaration.group("args")),
                "source_sha256":source_sha
            })
        if not native_declaration:
            for m in NATIVE_CALL.finditer(line):
                rows.append({
                    "java_source":relative,"line":i+1,
                    "enclosing_method_hint":find_method_hint(lines,i),
                    "edge_type":"JAVA_TO_NATIVE_CALL","target":m.group("name"),
                    "arity_hint":None,"source_sha256":source_sha
                })
        for m in SDK_CALL.finditer(line):
            rows.append({
                "java_source":relative,"line":i+1,
                "enclosing_method_hint":find_method_hint(lines,i),
                "edge_type":"JAVA_TO_SDK_CALL",
                "target":m.group("class")+"."+m.group("method"),
                "arity_hint":None,"source_sha256":source_sha
            })
        for m in CALLBACK_CALL.finditer(line):
            rows.append({
                "java_source":relative,"line":i+1,
                "enclosing_method_hint":find_method_hint(lines,i),
                "edge_type":"CALLBACK_DISPATCH_HINT",
                "target":m.group("callback")+"."+m.group("method"),
                "arity_hint":None,"source_sha256":source_sha
            })
    return rows


def read_jni_dynamic_symbols(path: Path) -> list[dict]:
    """Only exported dynamic ELF names. Missing symbols can mean RegisterNatives."""
    if not path.is_file():
        return []
    try:
        p=subprocess.run(["readelf", "--dyn-syms", "--wide", str(path)],
                         capture_output=True,text=True,timeout=45,check=False)
    except (OSError,subprocess.TimeoutExpired):
        return []
    if p.returncode:
        return []
    rows=[]
    for line in p.stdout.splitlines():
        if not ("Java_com_popcap_pvz2cthddev_TWPurchase_" in line or
                "Java_com_popcap_pvz2cthddev_AndroidGameApp_" in line):
            continue
        items=line.split()
        if len(items)<8 or not re.fullmatch(r"[a-fA-F0-9]+", items[1]):
            continue
        rows.append({
            "symbol":items[-1][:240],
            "elf_value_hex":"0x"+items[1].lower(),
            "binding":items[4],
        })
    return rows


def audit(sources: Path, out: Path, so: Path|None=None) -> dict:
    out.mkdir(parents=True,exist_ok=True)
    rows=[]
    checks=[]
    for relative in CLASSES:
        file=sources/relative
        if not file.is_file():
            checks.append({"java_source":relative,"status":"not_recovered"})
            continue
        content=file.read_bytes()
        found=inspect_java(relative,content.decode("utf-8","replace"),
                           hashlib.sha256(content).hexdigest())
        rows.extend(found)
        checks.append({"java_source":relative,"status":"scanned","edges":len(found)})
    with (out/"twpurchase_native_contract.csv").open("w",encoding="utf-8-sig",newline="") as f:
        writer=csv.DictWriter(f,fieldnames=FIELDS)
        writer.writeheader()
        writer.writerows(rows)
    symbols=read_jni_dynamic_symbols(so) if so else []
    with (out/"twpurchase_exported_jni_symbols.csv").open("w",encoding="utf-8-sig",newline="") as f:
        writer=csv.DictWriter(f,fieldnames=["symbol","elf_value_hex","binding"])
        writer.writeheader()
        writer.writerows(symbols)
    typed=Counter(row["edge_type"] for row in rows)
    target_declarations=sorted({row["target"] for row in rows if
        row["java_source"].endswith("/TWPurchase.java")
        and row["edge_type"]=="NATIVE_DECLARATION"})
    report={
        "status":"JAVA_JNI_BOUNDARY_CANDIDATES_NOT_EXECUTED_CALLS",
        "sources_checked":len(CLASSES),
        "sources_found":sum(c["status"]=="scanned" for c in checks),
        "edge_counts":dict(typed),"edges":len(rows),
        "twpurchase_native_methods":target_declarations,
        "jni_exported_symbols_count":len(symbols),
        "elf_dynsym_missing_does_not_exclude_registered_jni":True,
        "source_checks":checks,
        "next_gate":"Validate original GameSDK/TwOfflineSDK callback to TWPurchase.Native_SDKLoginEnd and real on-device execution",
        "privacy":"No method bodies, account data, tokens, URLs, game code, or APK uploaded"
    }
    (out/"twpurchase_bridge_summary.json").write_text(
        json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    return report


def main() -> None:
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--sources",type=Path,required=True)
    p.add_argument("--so",type=Path)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    if not a.sources.is_dir():
        p.error("Need private JADX source tree")
    if a.out.resolve()==a.sources.resolve() or a.out.resolve().is_relative_to(a.sources.resolve()):
        p.error("Derived reports must not be inside copyrighted decompiled sources")
    print(json.dumps(audit(a.sources,a.out,a.so),ensure_ascii=False,indent=2))


if __name__=="__main__":
    main()
