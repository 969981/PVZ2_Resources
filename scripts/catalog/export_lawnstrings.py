#!/usr/bin/env python3
"""Export exact PvZ2 CHN LawnStrings [KEY] -> UTF-8 source text, with line evidence."""
from __future__ import annotations
import argparse
from collections import Counter
import csv
import hashlib
import json
from pathlib import Path
import re
import sqlite3
import zipfile

SOURCE_SHA="456919ff3866c82e55629d0f8af39420ddaa90b873e50eb84a6286b60122d9cb"
ID=re.compile(r"^\[([A-Za-z0-9_.:/+-]{1,180})\]$")
HAN=re.compile(r"[\u3400-\u9fff]")
NAME=re.compile(r"(?:^|_)(?:NAME|TITLE|DISPLAYNAME|PLANTNAME|ZOMBIENAME)(?:_|$)",re.I)

def classify(name):
    name=name.upper()
    if "ZOMBIE" in name or name.startswith("ZOMB"):return "zombie"
    if "PLANT" in name or "SEEDPACKET" in name:return "plant"
    if any(x in name for x in ("LEVEL","WORLD","STAGE","WAVE","QUEST")):return "level"
    if any(x in name for x in ("SKILL","ABILITY","ATTACK","PROJECTILE")):return "skill"
    return "other"

def extract(root,out):
    files=list(root.rglob("LAWNSTRINGS.TXT"))
    if len(files)!=1:raise ValueError("Expected one LawnStrings file; found "+str(len(files)))
    source=files[0]
    data=source.read_bytes()
    sha=hashlib.sha256(data).hexdigest()
    if sha!=SOURCE_SHA:raise ValueError("Wrong source SHA256 "+sha)
    lines=data.decode("utf-8-sig").splitlines()
    if len(lines)!=94291:raise ValueError("Unexpected source line count")
    parsed=[]
    ident=None
    start=0
    value=[]
    orphan=[]
    def finish(end):
        if ident is None:return
        x=list(value)
        while x and not x[0].strip():x.pop(0)
        while x and not x[-1].strip():x.pop()
        parsed.append((ident,"\n".join(x),start,start+1,end))
    for lineno,line in enumerate(lines,1):
        m=ID.fullmatch(line.strip()) if line.isascii() else None
        if m:
            finish(lineno-1)
            ident=m.group(1)
            start=lineno
            value=[]
        elif ident is not None:
            value.append(line)
        elif line.strip():
            orphan.append({"line":lineno,"sample":line[:60]})
    finish(len(lines))
    if len(parsed)<25000:raise ValueError("Insufficient recognized key/value records "+str(len(parsed)))
    out.mkdir(parents=True,exist_ok=True)
    db=sqlite3.connect(out/"pvz2_chs428_lawnstrings.sqlite")
    db.executescript("""
CREATE TABLE strings(
  occurrence INTEGER PRIMARY KEY,
  string_id TEXT NOT NULL,
  text_zh_cn TEXT NOT NULL,
  category_hint TEXT NOT NULL,
  name_key_hint INTEGER NOT NULL,
  key_source_line INTEGER NOT NULL,
  value_start_line INTEGER NOT NULL,
  value_end_line INTEGER NOT NULL,
  source_sha256 TEXT NOT NULL
);
CREATE INDEX ix_strings_key ON strings(string_id);
CREATE INDEX ix_strings_category ON strings(category_hint);
""")
    fields=["string_id","text_zh_cn","category_hint","name_key_hint",
            "key_source_line","value_start_line","value_end_line","source_sha256"]
    counts=Counter()
    seen=Counter()
    with (out/"lawnstrings.csv").open("w",encoding="utf-8-sig",newline="") as raw,\
         (out/"name_candidates.csv").open("w",encoding="utf-8-sig",newline="") as names:
        writer=csv.DictWriter(raw,fieldnames=fields)
        name_writer=csv.DictWriter(names,fieldnames=fields)
        writer.writeheader();name_writer.writeheader()
        for n,(ident,text,key_line,from_line,to_line) in enumerate(parsed):
            cat=classify(ident)
            name=int(bool(NAME.search(ident)))
            row=dict(zip(fields,(ident,text,cat,name,key_line,from_line,to_line,sha)))
            writer.writerow(row)
            db.execute("INSERT INTO strings VALUES (?,?,?,?,?,?,?,?,?)",
                       (n,ident,text,cat,name,key_line,from_line,to_line,sha))
            seen[ident]+=1
            counts[cat]+=1
            if HAN.search(text):
                counts["chinese_records"]+=1
                if name:
                    name_writer.writerow(row)
                    counts["chinese_name_key_candidates"]+=1
    db.commit();db.close()
    report={
        "game":"PvZ2","region":"CHN","version":"4.2.8",
        "source":"04_JSON/dynamic/LawnStrings/PROPERTIES/LAWNSTRINGS.TXT",
        "source_sha256":sha,"source_lines":len(lines),
        "records":len(parsed),"unique_ids":len(seen),
        "duplicate_id_occurrences":sum(v-1 for v in seen.values() if v>1),
        "counts":dict(counts),"orphan_before_first_key":orphan,
        "scope":"Verbatim source key->text. Category and name-key columns are unverified ID-pattern hints."
    }
    (out/"SUMMARY.json").write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding="utf-8")
    (out/"README.md").write_text(
        "# PvZ2 国服 4.2.8 LawnStrings\n\n"
        "From the original game-provided key/value table, not generated translations. "
        "Original token, text, source line numbers and SHA256 are retained. "
        "Name/category hints are only provisional; they are not automatically verified species IDs.\n",
        encoding="utf-8")
    print("SUMMARY",json.dumps(report,ensure_ascii=False),flush=True)
    return report

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("source",type=Path)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--zip",type=Path,required=True)
    a=p.parse_args()
    extract(a.source,a.out)
    a.zip.parent.mkdir(parents=True,exist_ok=True)
    with zipfile.ZipFile(a.zip,"w",zipfile.ZIP_DEFLATED,compresslevel=7) as z:
        for f in a.out.iterdir():
            if f.is_file():z.write(f,f.name)
    if a.zip.stat().st_size>=95_000_000:
        raise ValueError("ZIP too large for a single Git blob, split it")
if __name__=="__main__":
    main()
