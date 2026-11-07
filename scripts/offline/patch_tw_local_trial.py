#!/usr/bin/env python3
"""Explicit, reversible research-only TWPurchase local start experiment.

Input is a privately disassembled file from exact PVZ2 CHN 4.2.8 APK
(SHA256 of input APK verified by separate caller). Not general auth bypass.
It is NOT equivalent to a working offline APK, a valid user account or
evidence any level or original save is playable. Never send resulting
offline-only profile to an actual online service.

Changes only the instance run()V body in com.popcap.pvz2cthddev.TWPurchase
after verifying exact method/field/native descriptor structure. Reject
ambiguity and refuse unknown layouts. Keep unmodified source APK.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
import re

OWNER="Lcom/popcap/pvz2cthddev/TWPurchase;"
NATIVE={
    "Native_SDKInitStart": "(J)V",
    "Native_SDKInitEnd": "(JI)V",
    "Native_SDKLoginStart": "(J)V",
    "Native_SDKLoginEnd": "(JILjava/lang/String;)V",
}
FIELD=".field"
RUN_PATTERN=re.compile(r"(?m)^(?P<header>\.method\s+[^\n]*?\brun\(\)V)\s*\n(?P<body>.*?)^\.end method", re.S|re.M)
METHOD_DECL=re.compile(r"(?m)^\.method\s+[^\n]*\bstatic\b[^\n]*\bnative\b[^\n]*$")


def patch_smali(source: str, *, init_status:int, login_status:int,
                super_source: str|None=None)->tuple[str,dict]:
    if init_status not in (0,1) or login_status not in (0,1):
        raise ValueError("Trial status is 0 or 1 only")
    # No fallback or heuristic guess for an unknown APK class layout.
    if not re.search(r"(?m)^\.class\s+[^\n]*\bLcom/popcap/pvz2cthddev/TWPurchase;\s*$",source):
        raise ValueError("Not the exact TWPurchase class")
    parent=re.findall(r"(?m)^\.super\s+(L[^\s]+;)",source)
    if len(parent)!=1:
        raise ValueError("Expected exactly one superclass declaration")
    field_pattern=r"(?m)^\.field\b[^\n]*\bmNativeDriverPtr:J(?:\s|$)"
    if re.search(field_pattern,source):
        handle_owner=OWNER
    elif parent[0]=="Lcom/popcap/pvz2cthddev/ThirdpartyPurchaseDriver;" and (
            super_source is not None and
            re.search(r"(?m)^\.class\s+[^\n]*Lcom/popcap/pvz2cthddev/ThirdpartyPurchaseDriver;\s*$",super_source) and
            re.search(field_pattern,super_source)):
        handle_owner=parent[0]
    else:
        print(json.dumps({
            "smali_preflight":"NATIVE_POINTER_OWNER_NOT_VERIFIED",
            "superclass":parent,
            "class_pointer_symbols":[line.strip() for line in source.splitlines()
                                     if "mNativeDriverPtr" in line][:8],
            "parent_source_present":super_source is not None,
            "parent_pointer_declaration":bool(
                super_source and re.search(field_pattern,super_source)),
        },ensure_ascii=False))
        raise ValueError("Could not verify native driver field in class or exact superclass")
    invoke_modes={}
    for name,descriptor in NATIVE.items():
        pattern=re.compile(
            r"(?m)^\.method\s+(?P<flags>[^\n]*?)\b"
            +re.escape(name)+re.escape(descriptor)+r"\s*$"
        )
        matches=list(pattern.finditer(source))
        if len(matches)!=1:
            found=[line.strip() for line in source.splitlines()
                   if line.startswith(".method") and name in line][:6]
            print(json.dumps({"smali_preflight":"NATIVE_METHOD_DECLARATION_MISMATCH",
                              "method":name,"expected_descriptor":descriptor,
                              "native_method_declarations":found},ensure_ascii=False))
            raise ValueError(f"Expected exactly one verified native method: {name}{descriptor}")
        flags=matches[0].group("flags").split()
        if "native" not in flags:
            raise ValueError(f"Method is not native: {name}")
        if "static" in flags:
            invoke_modes[name]="invoke-static"
        elif "private" in flags:
            invoke_modes[name]="invoke-direct"
        elif "public" in flags or "protected" in flags:
            invoke_modes[name]="invoke-virtual"
        else:
            raise ValueError(f"Unrecognized invocation access for {name}")
    def emit_invoke(name:str, args:list[str])->str:
        op=invoke_modes[name]
        actual=args if op=="invoke-static" else ["p0"]+args
        return f"    {op} {{{', '.join(actual)}}}, {OWNER}->{name}{NATIVE[name]}\n"
    hits=list(RUN_PATTERN.finditer(source))
    if len(hits)!=1:
        raise ValueError(f"Expected one instance run()V method; got {len(hits)}")
    match=hits[0]
    if " static " in " "+match.group("header")+" ":
        raise ValueError("run() must be instance method")
    original=match.group(0)
    if "Native_SDKInitStart" not in original or "TwOfflineSDK" not in original:
        raise ValueError("Existing run() not established as SDK initialization method")
    # Preserve the original method access flags. p0 is the unchanged object.
    # Four local scratch registers; long v0/v1, status v2, string v3.
    h=match.group("header")
    body=(
        f"{h}\n"
        "    .locals 4\n"
        f"    iget-wide v0, p0, {handle_owner}->mNativeDriverPtr:J\n"
        emit_invoke("Native_SDKInitStart", ["v0","v1"])
        f"    const/4 v2, 0x{init_status:x}\n"
        emit_invoke("Native_SDKInitEnd", ["v0","v1","v2"])
        emit_invoke("Native_SDKLoginStart", ["v0","v1"])
        f"    const/4 v2, 0x{login_status:x}\n"
        '    const-string v3, "offline-local-test-only"\n'
        emit_invoke("Native_SDKLoginEnd", ["v0","v1","v2","v3"])
        "    return-void\n"
        ".end method"
    )
    patched=source[:match.start()]+body+source[match.end():]
    assert patched.count("offline-local-test-only")==1
    report={
        "status":"PATCHED_FOR_OFFLINE_EXPERIMENT_NOT_VALIDATED",
        "class":"com.popcap.pvz2cthddev.TWPurchase",
        "method":"run()V",
        "native_handle_field_owner":handle_owner,
        "native_invocation_modes":invoke_modes,
        "source_smali_sha256":hashlib.sha256(source.encode()).hexdigest(),
        "patched_smali_sha256":hashlib.sha256(patched.encode()).hexdigest(),
        "init_status_trial":init_status,
        "login_status_trial":login_status,
        "session_string_kind":"non-authenticating_offline_marker",
        "original_method_contains_tw_offline_sdk":True,
        "native_status_semantics_confirmed":False,
        "online_service_authenticated":False,
        "gameplay_main_menu_verified":False,
        "original_save_verified":False,
    }
    return patched,report


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--smali",type=Path,required=True)
    p.add_argument("--output",type=Path,required=True)
    p.add_argument("--summary",type=Path,required=True)
    p.add_argument("--super-smali",type=Path,help="Verify inherited ThirdpartyPurchaseDriver field")
    p.add_argument("--init-status",type=int,choices=(0,1),required=True)
    p.add_argument("--login-status",type=int,choices=(0,1),required=True)
    a=p.parse_args()
    if not a.smali.is_file():
        p.error("Input smali missing")
    if a.smali.resolve()==a.output.resolve():
        p.error("Refusing to overwrite original smali")
    original=a.smali.read_text(encoding="utf-8")
    super_text=a.super_smali.read_text(encoding="utf-8") if a.super_smali and a.super_smali.is_file() else None
    result,summary=patch_smali(original,init_status=a.init_status,login_status=a.login_status,super_source=super_text)
    a.output.parent.mkdir(parents=True,exist_ok=True)
    a.summary.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text(result,encoding="utf-8")
    a.summary.write_text(json.dumps(summary,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print(json.dumps(summary,ensure_ascii=False,indent=2))


if __name__=="__main__":
    main()
