#!/usr/bin/env python3
"""Extract only Java METHOD TYPE contracts for original CHN 4.2.8 SDK/JNI.

From private JADX sources, return class, method, type names and parameter
counts for known login/init/callback entry points. The commercial game source
bodies, arguments names/values, tokens and binaries are NEVER uploaded.
A declaration does not prove runtime execution or safe local session patch.
"""
from __future__ import annotations
import argparse
import csv
import hashlib
import json
from pathlib import Path
import re

TARGETS = {
    "com/popcap/pvz2cthddev/TWPurchase.java": {
        "InitializeSDK", "Native_SDKInitEnd", "Native_SDKInitStart",
        "Native_SDKLoginEnd", "Native_SDKLoginStart", "SetIDs",
    },
    "com/talkweb/twOfflineSdk/TwOfflineSDK.java": {"init", "login", "userInfo"},
    "com/talkweb/twOfflineSdk/callback/CallbackManager.java": {
        "onLoginCallBack", "getLoginUserId", "setLoginCallBack",
    },
    "com/talkweb/twOfflineSdk/TalkwebProxy.java": {"loginChannel", "loginSend"},
    "com/talkweb/twOfflineSdk/sdk/TwOfflineSDKImpl.java": {"loginTalkweb"},
    "com/tw/OnLinePaySdk/SdkTW/PayToolTW.java": {
        "loginSDK", "getTalkwebUserInfo", "loginTWSdk",
    },
    "com/tw/gamesdk/core/GameSDK.java": {
        "login", "showLoginUI", "autoLogin", "saveUserInfo", "getUserInfo",
    },
    "com/popcap/pvz2cthddev/AndroidGameApp.java": {
        "Native_GameAppInitialize", "Native_applicationDidFinishLaunching",
    },
}
DECLARATION = re.compile(
    r"(?P<mods>(?:(?:public|protected|private|static|final|native|"
    r"synchronized|abstract|strictfp)\s+)*)"
    r"(?P<return>[A-Za-z_$][\w.$<>\[\]?]*|void)\s+"
    r"(?P<method>[A-Za-z_$][\w$]*)\s*"
    r"\((?P<args>[^()]{0,1500})\)\s*(?:throws\s+[\w.,\s]+)?\s*(?:;|\{)",
    re.M
)
PARAM_ANN = re.compile(r"@\w+(?:\([^)]*\))?\s*")


def type_list(arguments: str) -> list[str]:
    """Split Java declaration parameters without splitting generic arguments."""
    if not arguments.strip():
        return []
    parts=[]
    nesting=0
    start=0
    for pos,char in enumerate(arguments):
        if char=="<":
            nesting+=1
        elif char==">":
            nesting=max(0,nesting-1)
        elif char=="," and nesting==0:
            parts.append(arguments[start:pos].strip())
            start=pos+1
    parts.append(arguments[start:].strip())
    result=[]
    for part in parts:
        sanitized=PARAM_ANN.sub("",part)
        sanitized=re.sub(r"\bfinal\s+","",sanitized)
        # Keep type only. Local parameter identifiers are not exported.
        match=re.match(r"(?P<type>.+?)\s+[A-Za-z_$][\w$]*$",sanitized.strip())
        result.append(match.group("type").strip() if match else "UNKNOWN_TYPE")
    return result


def declarations(source: str, wanted: set[str], path: str, sha: str) -> list[dict]:
    result=[]
    for match in DECLARATION.finditer(source):
        name=match.group("method")
        if name not in wanted:
            continue
        modifiers=match.group("mods").split()
        args=type_list(match.group("args"))
        result.append({
            "source_class":path.removesuffix(".java").replace("/","."),
            "method":name,
            "source_line":source.count("\n",0,match.start())+1,
            "return_type":match.group("return"),
            "parameter_types":";".join(args),
            "parameter_count":len(args),
            "native_declaration":"native" in modifiers,
            "source_sha256":sha,
        })
    return result


def inspect(sources:Path,out:Path)->dict:
    out.mkdir(parents=True,exist_ok=True)
    rows=[]
    status=[]
    for relative,wanted in TARGETS.items():
        file=sources/relative
        if not file.is_file():
            status.append({"source_class":relative,"status":"missing"})
            continue
        data=file.read_bytes()
        rows.extend(declarations(data.decode("utf-8","replace"),wanted,
                                 relative,hashlib.sha256(data).hexdigest()))
        status.append({"source_class":relative,"status":"available"})
    fields=["source_class","method","source_line","return_type","parameter_types",
            "parameter_count","native_declaration","source_sha256"]
    with (out/"actual_login_jni_method_contracts.csv").open("w",encoding="utf-8-sig",newline="") as f:
        writer=csv.DictWriter(f,fieldnames=fields)
        writer.writeheader()
        writer.writerows(rows)
    has_native_login=any(
        r["method"]=="Native_SDKLoginEnd" and r["native_declaration"] for r in rows
    )
    report={
        "status":"REAL_JAVA_DECLARATION_TYPES_NOT_RUNTIME_CALLBACK_VALUES",
        "target_java_files":len(TARGETS),
        "available_files":sum(s["status"]=="available" for s in status),
        "declarations_found":len(rows),
        "has_native_sdk_login_end_declaration":has_native_login,
        "methods_by_class":{s["source_class"]:sum(r["source_class"]==s["source_class"].removesuffix(".java").replace("/",".") for r in rows) for s in status},
        "no_proprietary_java_body_uploaded":True,
        "not_proven":"JNI implementation behavior, game session requirements, offline patch",
    }
    (out/"actual_login_jni_contract_summary.json").write_text(
        json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    return report


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--sources",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    if not a.sources.is_dir():p.error("JADX private sources missing")
    if a.sources.resolve()==a.out.resolve() or a.out.resolve().is_relative_to(a.sources.resolve()):
        p.error("metadata must be separate from source bodies")
    print(json.dumps(inspect(a.sources,a.out),ensure_ascii=False,indent=2))


if __name__=="__main__":
    main()
