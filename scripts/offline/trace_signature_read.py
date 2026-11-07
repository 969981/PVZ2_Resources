#!/usr/bin/env python3
"""Add *observation-only* markers to one verified TWPurchase.GetSignature().

The method's original signature retrieval, digest result, exceptions and
return value are left untouched. Run only on a temporary Smali copy.
No signature values, private keys or package identifiers are logged.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import re

OWNER = "Lcom/popcap/pvz2cthddev/TWPurchase;"
METHOD = ".method public GetSignature()Ljava/lang/String;"
CALLEE = "Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getSignature(Landroid/content/Context;)Ljava/lang/String;"
INVOKE = "    invoke-static {v0}, " + CALLEE
RETURN = "    return-object v0"
TRACE_TAG = "PVZ2SignatureTrace"


def patch_get_signature(source: str) -> tuple[str, dict]:
    if source.count(".class public " + OWNER) != 1:
        raise ValueError("Unexpected TWPurchase class")
    if source.count(METHOD) != 1:
        raise ValueError("Expected one exact GetSignature")
    before, rest = source.split(METHOD, 1)
    if ".end method" not in rest:
        raise ValueError("Missing method end")
    body, after = rest.split(".end method", 1)
    if not re.search(r"(?m)^\s*\.locals 1\s*$", body):
        raise ValueError("Unexpected register count")
    if body.count(INVOKE) != 1 or body.count(RETURN) != 1 or TRACE_TAG in body:
        raise ValueError("Unexpected GetSignature implementation")
    entry = ("    const-string v1, \"" + TRACE_TAG + "\"\n"
             "    const-string v2, \"GetSignature.enter\"\n"
             "    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I\n")
    departure = ("    const-string v1, \"" + TRACE_TAG + "\"\n"
                 "    const-string v2, \"GetSignature.exit\"\n"
                 "    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I\n")
    body = re.sub(r"(?m)^(\s*)\.locals 1(\s*)$",r"\1.locals 3\2",body,count=1)
    pos = body.find("    invoke-static {}")
    if pos < 0:
        raise ValueError("Expected original SexyAppFrameworkActivity.instance call")
    body = body[:pos] + entry + body[pos:]
    body = body.replace(RETURN, departure + RETURN, 1)
    patched = before + METHOD + body + ".end method" + after
    return patched, {
        "status": "INSTRUMENTED_OBSERVATION_ONLY",
        "method": "TWPurchase.GetSignature()",
        "source_sha256": hashlib.sha256(source.encode("utf-8")).hexdigest(),
        "patched_sha256": hashlib.sha256(patched.encode("utf-8")).hexdigest(),
        "trace_tag": TRACE_TAG,
        "return_value_modified": False,
        "signature_or_digest_logged": False,
    }


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--source", required=True, type=Path)
    p.add_argument("--output", required=True, type=Path)
    p.add_argument("--report", required=True, type=Path)
    a = p.parse_args()
    if not a.source.is_file() or a.source.resolve() == a.output.resolve():
        p.error("Requires readable source and distinct output")
    changed, report = patch_get_signature(a.source.read_text(encoding="utf-8"))
    a.output.parent.mkdir(parents=True, exist_ok=True)
    a.output.write_text(changed, encoding="utf-8")
    a.report.parent.mkdir(parents=True, exist_ok=True)
    a.report.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(report))


if __name__ == "__main__":
    main()
