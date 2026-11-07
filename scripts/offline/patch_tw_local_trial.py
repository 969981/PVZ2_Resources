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


def patch_smali(source: str, *, init_status:int, login_status:int)->tuple[str,dict]:
    if init_status not in (0,1) or login_status not in (0,1):
        raise ValueError("Trial status is 0 or 1 only")
    # No fallback or heuristic guess for an unknown APK class layout.
    if not re.search(r"(?m)^\.class\s+[^\n]*\bLcom/popcap/pvz2cthddev/TWPurchase;\s*$",source):
        raise ValueError("Not the exact TWPurchase class")
    if not re.search(r"(?m)^\.field\b[^\n]*\bmNativeDriverPtr:J(?:\s|$)",source):
        references=[line.strip() for line in source.splitlines()
                    if "mNativeDriverPtr" in line][:12]
        supers=re.findall(r"(?m)^\.super\s+(L[^\s]+;)",source)[:1]
        fields=[line.strip() for line in source.splitlines()
                if line.startswith(".field")][:20]
        print(json.dumps({"smali_preflight":"POINTER_FIELD_NOT_IN_CLASS_DECLARATIONS",
                          "superclass":supers,
                          "native_pointer_symbol_references":references,
                          "own_field_declarations":fields},ensure_ascii=False))
        raise ValueError("Native driver pointer field not confirmed; no patch applied")
    for name,descriptor in NATIVE.items():
        declaration=re.compile(
            r"(?m)^\.method\b(?=[^\n]*\bstatic\b)(?=[^\n]*\bnative\b)"
            +r"[^\n]*\b"+re.escape(name)+re.escape(descriptor)+r"\s*$"
        )
        if not declaration.search(source):
            raise ValueError(f"Expected static native method missing: {name}{descriptor}")
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
        f"    iget-wide v0, p0, {OWNER}->mNativeDriverPtr:J\n"
        f"    invoke-static {{v0, v1}}, {OWNER}->Native_SDKInitStart(J)V\n"
        f"    const/4 v2, 0x{init_status:x}\n"
        f"    invoke-static {{v0, v1, v2}}, {OWNER}->Native_SDKInitEnd(JI)V\n"
        f"    invoke-static {{v0, v1}}, {OWNER}->Native_SDKLoginStart(J)V\n"
        f"    const/4 v2, 0x{login_status:x}\n"
        '    const-string v3, "offline-local-test-only"\n'
        f"    invoke-static {{v0, v1, v2, v3}}, {OWNER}->Native_SDKLoginEnd(JILjava/lang/String;)V\n"
        "    return-void\n"
        ".end method"
    )
    patched=source[:match.start()]+body+source[match.end():]
    assert patched.count("offline-local-test-only")==1
    report={
        "status":"PATCHED_FOR_OFFLINE_EXPERIMENT_NOT_VALIDATED",
        "class":"com.popcap.pvz2cthddev.TWPurchase",
        "method":"run()V",
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
    p.add_argument("--init-status",type=int,choices=(0,1),required=True)
    p.add_argument("--login-status",type=int,choices=(0,1),required=True)
    a=p.parse_args()
    if not a.smali.is_file():
        p.error("Input smali missing")
    if a.smali.resolve()==a.output.resolve():
        p.error("Refusing to overwrite original smali")
    original=a.smali.read_text(encoding="utf-8")
    result,summary=patch_smali(original,init_status=a.init_status,login_status=a.login_status)
    a.output.parent.mkdir(parents=True,exist_ok=True)
    a.summary.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text(result,encoding="utf-8")
    a.summary.write_text(json.dumps(summary,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print(json.dumps(summary,ensure_ascii=False,indent=2))


if __name__=="__main__":
    main()
