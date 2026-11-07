#!/usr/bin/env python3
"""Privacy-safe, class-scoped method-call topology from private JADX output.

It records only method signatures (name/arity), coarse method-level call
targets, and structural flags (return/branch counts), never copyrighted
method bodies, string literals, credentials, request URLs or game assets.

Does NOT infer valid offline login callbacks or safe patch offsets.
"""
from __future__ import annotations
import argparse
import csv
import hashlib
import json
from pathlib import Path
import re

TARGETS = (
    "com/popcap/pvz2cthddev/SexyAppFrameworkActivity.java",
    "com/popcap/pvz2cthddev/SexyAppActivity.java",
    "com/popcap/pvz2cthddev/AndroidHttpProxy.java",
    "com/popcap/pvz2cthddev/AndroidHttpTransaction.java",
    "com/popcap/pvz2cthddev/AndroidGameApp.java",
    "com/popcap/util/NetWorkHttp.java",
    "com/popcap/util/NtfUtil.java",
    "com/talkweb/twgame/TwGameSDK.java",
    "com/talkweb/twgame/sdk/TwGameSDKImpl.java",
    "com/talkweb/twgame/net/RequestHelper.java",
    "com/talkweb/twgame/net/HttpUrlConnectionHelper.java",
    "com/talkweb/twgame/tools/Tools.java",
    "com/tw/gamesdk/core/GameSDK.java",
    "com/tw/gamesdk/core/UserDataManager.java",
    "com/tw/gamesdk/net/RequestUtils.java",
    "com/tw/gamesdk/oneclicklogin/OneClickLoginManager.java",
    "com/tw/gamesdk/oneclicklogin/TwgameOneClickLoginUtil.java",
    "com/tw/gamesdk/ui/TwGameLoginUtil.java",
    "com/tw/gamesdk/ui/TwgameAccountLoginUtil.java",
    "com/tw/gamesdk/ui/TwgameLoginQuickUtil.java",
    "com/tw/OnLinePaySdk/SdkTW/PayToolTW.java",
    "com/tw/pay/sdk/ui/MainActivity.java",
    "com/talkweb/twOfflineSdk/TwOfflineSDK.java",
    "com/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl.java",
    "com/talkweb/twOfflineSdk/callback/CallbackManager.java",
    "com/talkweb/twOfflineSdk/TalkwebProxy.java",
    "com/popcap/pvz2cthddev/TWPurchase.java",
    "com/popcap/pvz2cthddev/TWGameAd.java",
)
DECL = re.compile(
    r"^\s*(?:(?:public|protected|private|static|final|native|synchronized|abstract|strictfp|default)\s+)"
    r"(?:[\w<>\[\].?,]+\s+)*"
    r"([A-Za-z_$][A-Za-z_0-9$]*)\s*\(([^)]{0,800})\)\s*"
    r"(?:throws\s+[\w,. ]+)?\s*(?:\{|;)\s*$"
)
CALL = re.compile(r"(?:(?P<class>[a-zA-Z_$][\w$]*)\.)?(?P<method>[a-zA-Z_$][\w$]*)\s*\(")
CONTROL = {"if", "for", "while", "switch", "catch", "new", "return", "throw",
           "synchronized", "super", "this", "try"}
ROLE_TERMS = {
    "INIT": re.compile(r"(?i)(?:init|oncreate|onresume|attach|setup|startup)"),
    "LOGIN": re.compile(r"(?i)(?:login|auth|token|account|guest|visitor|user)"),
    "REQUEST": re.compile(r"(?i)(?:network|request|http|send|post|connect|socket)"),
    "SAVE": re.compile(r"(?i)(?:save|load|store|write|read|profile|player|prefs)"),
    "RESOURCE": re.compile(r"(?i)(?:download|update|unpack|asset|file|resource|cache)"),
    "GAME": re.compile(r"(?i)(?:game|level|result|finish|complete|enter|launch)"),
}


def remove_java_literals(text: str) -> str:
    """Remove string and character literal contents before scanning methods."""
    return re.sub(r'"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])*\'', '""', text)


def java_methods(source: str, class_path: str, digest: str, max_methods: int = 500) -> list[dict]:
    lines = source.splitlines()
    rows = []
    for index, line in enumerate(lines):
        match = DECL.match(line)
        if not match:
            continue
        name, params = match.group(1), match.group(2)
        if name in CONTROL:
            continue
        # Multiline bytecode-decompiler output can be malformed; do not
        # invent methods for lines missing their closing brace.
        brace = line.count("{") - line.count("}")
        body_lines = []
        if "{" in line:
            for inner in lines[index+1:]:
                brace += remove_java_literals(inner).count("{") - remove_java_literals(inner).count("}")
                body_lines.append(inner)
                if brace <= 0 or len(body_lines) >= 5000:
                    break
        scrubbed = remove_java_literals("\n".join(body_lines))
        calls = []
        for c in CALL.finditer(scrubbed):
            target = c.group("method")
            if target in CONTROL or target == name:
                continue
            call_name = (c.group("class") + "." if c.group("class") else "") + target
            if len(call_name) < 90:
                calls.append(call_name)
        unique_calls = sorted(set(calls))
        param_count = 0 if not params.strip() else params.count(",") + 1
        roles = sorted({role for role, regex in ROLE_TERMS.items()
                        if regex.search(name) or any(regex.search(x) for x in unique_calls)})
        rows.append({
            "java_class": class_path.removesuffix(".java").replace("/", "."),
            "method": name, "arity_hint": param_count, "decl_line": index+1,
            "role_hints": ";".join(roles), "outbound_methods": ";".join(unique_calls[:35]),
            "outbound_unique_count": len(unique_calls),
            "branch_count_hint": len(re.findall(r"\bif\s*\(", scrubbed)),
            "return_count_hint": len(re.findall(r"\breturn\b", scrubbed)),
            "source_sha256": digest,
        })
        if len(rows) >= max_methods:
            break
    return rows


def analyze(root: Path, out: Path) -> dict:
    out.mkdir(parents=True, exist_ok=True)
    rows, statuses = [], []
    for relative in TARGETS:
        path = root / relative
        if not path.is_file():
            statuses.append({"java_class": relative, "status": "missing_from_jadx"})
            continue
        content = path.read_bytes()
        source = content.decode("utf-8", "replace")
        entries = java_methods(source, relative, hashlib.sha256(content).hexdigest())
        rows.extend(entries)
        statuses.append({"java_class": relative, "status": "methods_indexed",
                         "method_count": len(entries)})
    columns = ["java_class", "method", "arity_hint", "decl_line", "role_hints",
               "outbound_methods", "outbound_unique_count", "branch_count_hint",
               "return_count_hint", "source_sha256"]
    with (out/"first_party_login_methods.csv").open("w", encoding="utf-8-sig", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=columns)
        writer.writeheader()
        writer.writerows(rows)
    report = {
        "status": "STRUCTURAL_HINTS_NOT_VERIFIED_CALLBACKS",
        "source_path_count": len(TARGETS),
        "source_path_found": sum(s["status"]=="methods_indexed" for s in statuses),
        "methods_indexed": len(rows), "classes": statuses,
        "source_text_uploaded": False,
        "next_gate": "Trace login/init callback and native entry using actual source in private scratch.",
    }
    (out/"first_party_login_summary.json").write_text(
        json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    return report


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--sources",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    if not a.sources.is_dir():
        p.error("--sources must be the private JADX sources directory")
    if a.out.resolve() == a.sources.resolve() or a.out.resolve().is_relative_to(a.sources.resolve()):
        p.error("--out must be outside the private JADX source tree")
    print(json.dumps(analyze(a.sources,a.out),ensure_ascii=False,indent=2))


if __name__=="__main__":
    main()
