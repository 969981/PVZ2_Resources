#!/usr/bin/env python3
"""Read-only original CHN 4.2.8 login result MODEL schema inventory.

Private JADX input; no copied game methods, values, tokens, passwords, APK,
classes.dex, SO, login JSON, user credentials, or server responses uploaded.
Output contains ONLY discovered class paths, field/type declarations and
callback method type signatures. Static declarations don't establish success
codes, required fields, or permission to impersonate an online account.
"""
from __future__ import annotations
import argparse
import csv
import hashlib
import json
from pathlib import Path
import re

try:
    from scripts.offline.inspect_native_callbacks import declarations
except ModuleNotFoundError:
    from inspect_native_callbacks import declarations

NAMES = {
    "LoginResultBean.java",
    "TwOfflineCallback.java",
    "SimpleUserData.java",
    "UserInfo.java",
    "LoginCallback.java",
    "SDKUserInfo.java",
}
FIRST_PARTY = ("com/popcap/", "com/tw/", "com/talkweb/")
FIELDS = re.compile(
    r"^\s*(?:(?:public|private|protected|static|final|transient|volatile)\s+)*"
    r"(?P<type>[A-Za-z_$][\w.$<>,?\[\] ]{0,180}?)\s+"
    r"(?P<field>[A-Za-z_$][\w$]*)\s*(?:;|=)",
)
MAX_FILES = 60


def field_schema(source: str, path: str, source_hash: str) -> list[dict]:
    """Return best-effort class-level fields, never raw values or body lines."""
    lines=source.splitlines()
    depth=0
    rows=[]
    for i,line in enumerate(lines):
        # Ignore inline text to avoid treating literal braces as structure.
        cleaned=re.sub(r'"(?:\\.|[^"\\])*"', '""', line)
        if depth==1:
            m=FIELDS.match(cleaned)
            if m and not cleaned.lstrip().startswith(("//", "*", "@", "return ")):
                name=m.group("field")
                typ=m.group("type").strip()
                # Reject obvious method-local keywords and statements.
                if name not in {"class","interface","return","package","import"} and not any(
                    typ.startswith(x) for x in ("return ","throw ","new ")
                ):
                    rows.append({
                        "class_path":path.removesuffix(".java").replace("/","."),
                        "decl_line":i+1,
                        "field":name,
                        "field_type":typ,
                        "source_sha256":source_hash,
                    })
        depth+=cleaned.count("{")-cleaned.count("}")
        depth=max(0,depth)
    return rows


def collect(sources:Path,out:Path)->dict:
    out.mkdir(parents=True,exist_ok=True)
    fields=[]
    callbacks=[]
    paths=[]
    for file in sorted(sources.rglob("*.java")):
        if file.name not in NAMES:
            continue
        rel=file.relative_to(sources).as_posix()
        if not rel.startswith(FIRST_PARTY):
            continue
        if len(paths)>=MAX_FILES or file.stat().st_size>1024*1024:
            continue
        data=file.read_bytes()
        digest=hashlib.sha256(data).hexdigest()
        source=data.decode("utf-8","replace")
        fields.extend(field_schema(source,rel,digest))
        callbacks.extend(declarations(source,{"onResponse","onSuccess","onFailure",
                                             "getUid","getUserId","getToken",
                                             "getCode","getResult","getData"},
                                       rel,digest))
        paths.append(rel)
    # Also inventory callback declarations from the PopCap-owned TWPurchase.
    twp=sources/"com/popcap/pvz2cthddev/TWPurchase.java"
    if twp.is_file():
        data=twp.read_bytes()
        callbacks.extend(declarations(data.decode("utf-8","replace"),
                                      {"onResponse"}, "com/popcap/pvz2cthddev/TWPurchase.java",
                                      hashlib.sha256(data).hexdigest()))
    with (out/"login_model_fields.csv").open("w",encoding="utf-8-sig",newline="") as f:
        cols=["class_path","decl_line","field","field_type","source_sha256"]
        w=csv.DictWriter(f,fieldnames=cols)
        w.writeheader()
        w.writerows(fields)
    with (out/"login_model_callbacks.csv").open("w",encoding="utf-8-sig",newline="") as f:
        cols=["source_class","method","source_line","return_type","parameter_types",
              "parameter_count","native_declaration","source_sha256"]
        w=csv.DictWriter(f,fieldnames=cols)
        w.writeheader()
        w.writerows(callbacks)
    result={
        "status":"STATIC_JAVA_MODEL_SCHEMA_ONLY",
        "model_java_files":len(paths),
        "models":paths,
        "field_declarations":len(fields),
        "callback_and_getter_declarations":len(callbacks),
        "native_login_payload_verified":False,
        "no_credentials_or_class_bodies_uploaded":True,
        "next_evidence":"Correlate the actual TWPurchase onResponse callback arguments and Native_SDKLoginEnd on live device",
    }
    (out/"login_model_schema_summary.json").write_text(
        json.dumps(result,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    return result


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--sources",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    if not a.sources.is_dir():p.error("Private Java source directory unavailable")
    if a.out.resolve()==a.sources.resolve() or a.out.resolve().is_relative_to(a.sources.resolve()):
        p.error("Derived metadata must be separate from copyrighted Java")
    print(json.dumps(collect(a.sources,a.out),ensure_ascii=False,indent=2))


if __name__=="__main__":
    main()
