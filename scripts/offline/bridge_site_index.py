#!/usr/bin/env python3
"""Find actual Java source references linking TwGame login, game init and JNI.

This emits ONLY source member path, line, method-name hint, fixed event label
and source checksum. No original APK, Java source bodies, arguments, URLs,
token values or game resource bytes may enter uploadable metadata.

A source reference is not proof a branch executes or can be bypassed.
"""
from __future__ import annotations
from collections import Counter
import argparse
import csv
import hashlib
import json
from pathlib import Path
import re

EVENTS = {
    "GAME_SDK_INSTANCE": re.compile(r"\bGameSDK\s*\.\s*getInstance\s*\("),
    "TW_PAY_LOGIN": re.compile(r"\bTwPay\s*\.\s*(?:loginSdk|loginQuickSdk)\s*\("),
    "TWGAME_LOGIN_HTTP": re.compile(r"\bRequestUtils\s*\.\s*(?:twgameLogin|loginRequest|tokenAuthRequest)\s*\("),
    "GAME_SDK_LOGIN_CALLBACK": re.compile(r"\b(?:loginCallback|val\$callback)\s*\.\s*(?:onSuccess|onFailure)\s*\("),
    "LOGIN_STATE_LISTENER": re.compile(r"\b(?:loginStateListener|loginStateListeners)\b"),
    "TWOFFLINE_SDK_CALL": re.compile(r"\bTwOfflineSDK\s*\.\s*[\w$]+\s*\("),
    "TWOFFLINE_IMPL_CALL": re.compile(r"\bTwOfflineSDKImpl\s*\.\s*[\w$]+\s*\("),
    "TWGAME_INIT": re.compile(r"\bTwGameSDK(?:Impl)?\s*\.\s*(?:init|initGame)\s*\("),
    "TWGAME_INIT_CALLBACK": re.compile(r"\b(?:SyncTwgameCallback|TwOfflineCallback|TwLoginCallback)\b"),
    "LOCAL_USER_MANAGER": re.compile(r"\bUserDataManager\s*\.\s*(?:getInstance|getCurrentUser|saveUser|setCurrentUser)\s*\("),
    "LOCAL_USER_RECORD": re.compile(r"\b(?:SimpleUserData|GameConstant)\b"),
    "GAME_ACTIVITY_REFERENCE": re.compile(r"\b(?:SexyAppFrameworkActivity|AndroidGameApp)\b"),
    "NATIVE_GAME_LIFECYCLE": re.compile(r"\bNative_(?:GameAppInitialize|applicationDidFinishLaunching|applicationDidBecomeActive)\s*\("),
    "NATIVE_APP_BRIDGE": re.compile(r"\b(?:native|Native_)\w+\s*\("),
}

METHOD_START = re.compile(
    r"(?:(?:public|private|protected|static|final|synchronized|native)\s+){0,4}"
    r"(?:[\w$<>\[\].?,]+\s+)+(?P<method>[\w$]+)\s*\(")
MAX_MATCHES = 18000


def remove_java_strings(text: str) -> str:
    return re.sub(r'"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])*\'', '""', text)


def method_hint(lines: list[str], lineidx: int) -> str:
    # Only a METHOD HINT; no inferred exact AST from decompiled Java.
    for i in range(lineidx, max(-1, lineidx - 150), -1):
        part=remove_java_strings(lines[i].strip())
        if part.startswith(("if ", "while ", "for ", "catch ", "switch ", "return ", "//", "* ", "@")):
            continue
        m=METHOD_START.search(part)
        if m:
            name=m.group("method")
            if name not in {"if","for","while","switch","catch","new","return"}:
                return name
    return "UNRESOLVED_METHOD"


def collect_source_events(relative: str, text: str, digest: str) -> list[dict]:
    rows=[]
    lines=text.splitlines()
    for index, line in enumerate(lines):
        candidate=remove_java_strings(line)
        if candidate.lstrip().startswith(("import ", "package ", "//", "* ")):
            continue
        kinds=[k for k, rx in EVENTS.items() if rx.search(candidate)]
        for event in kinds:
            rows.append({
                "source_class_path":relative,
                "method_hint":method_hint(lines,index),
                "source_line":index+1,
                "event":event,
                "source_sha256":digest
            })
    return rows


def audit(root: Path, out: Path) -> dict:
    out.mkdir(parents=True,exist_ok=True)
    rows=[]
    counts=Counter()
    source_files=0
    for file in sorted(root.rglob("*.java")):
        rel=file.relative_to(root).as_posix()
        # Domain-specific rather than thousands of unrelated third party SDKs.
        if not rel.startswith(("com/popcap/", "com/tw/", "com/talkweb/")):
            continue
        if file.stat().st_size>4*1024*1024:
            continue
        data=file.read_bytes()
        source_files+=1
        sample=collect_source_events(rel,data.decode("utf-8","replace"),
                                     hashlib.sha256(data).hexdigest())
        counts.update(row["event"] for row in sample)
        if len(rows)<MAX_MATCHES:
            rows.extend(sample[:MAX_MATCHES-len(rows)])
    path=out/"login_game_jni_bridge_sites.csv"
    columns=["source_class_path","method_hint","source_line","event","source_sha256"]
    with path.open("w",encoding="utf-8-sig",newline="") as f:
        w=csv.DictWriter(f,fieldnames=columns)
        w.writeheader()
        w.writerows(rows)
    report={
        "status":"STATIC_CALLSITE_HINTS_NEED_NATIVE_AND_UI_VALIDATION",
        "first_party_java_sources_scanned":source_files,
        "matching_source_sites_stored":len(rows),
        "event_counts":dict(counts),
        "truncated":sum(counts.values())>len(rows),
        "privacy":"Only metadata; no Java bodies, argument values, account credentials or original bytes",
        "integration_gate":"Identify actual SDK login result callback consumed by PopCap/JNI",
    }
    (out/"login_game_jni_bridge_summary.json").write_text(
        json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    return report


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--sources",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    if not a.sources.is_dir():p.error("Private JADX sources directory not found")
    if a.out.resolve()==a.sources.resolve() or a.out.resolve().is_relative_to(a.sources.resolve()):
        p.error("Derived metadata must be separate from private Java source")
    print(json.dumps(audit(a.sources,a.out),ensure_ascii=False,indent=2))


if __name__=="__main__":
    main()
