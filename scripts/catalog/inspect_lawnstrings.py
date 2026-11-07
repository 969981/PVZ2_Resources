#!/usr/bin/env python3
"""Inspect the original LawnStrings token/value grammar; no fabricated key mapping."""
from pathlib import Path
import argparse,collections,hashlib,json,re

def main():
 p=argparse.ArgumentParser()
 p.add_argument("source",type=Path)
 p.add_argument("--out",type=Path,required=True)
 a=p.parse_args()
 files=list(a.source.rglob("LAWNSTRINGS.TXT"))
 if len(files)!=1:raise ValueError("Expected one LawnStrings, found "+str(files))
 f=files[0];b=f.read_bytes()
 enc="utf-8-sig"
 try:s=b.decode(enc)
 except UnicodeDecodeError:enc="utf-16";s=b.decode(enc)
 lines=s.splitlines()
 classes=collections.Counter()
 for x in lines:
  x=x.strip()
  if not x:kind="blank"
  elif x.startswith("//") or x.startswith("#"):kind="comment"
  elif x.isascii() and len(x)<200:kind="ascii-only"
  elif re.search(r"[\u3400-\u9fff]",x):kind="Chinese"
  else:kind="other"
  classes[kind]+=1
 out={"source":str(f.relative_to(a.source)),"sha256":hashlib.sha256(b).hexdigest(),
      "bytes":len(b),"encoding":enc,"lines":len(lines),"classes":dict(classes),
      "first_90":[{"line":i+1,"text":v[:160]} for i,v in enumerate(lines[:90])],
      "around_plant_names":[{"line":i+1,"text":v[:160]} for i,v in enumerate(lines) if re.search(r"Peashooter|豌豆射手|Sunflower|向日葵",v,re.I)][:50]}
 a.out.parent.mkdir(parents=True,exist_ok=True)
 a.out.write_text(json.dumps(out,ensure_ascii=False,indent=2),encoding="utf-8")
 print("FORMAT",json.dumps({k:v for k,v in out.items() if k not in ("first_90","around_plant_names")},ensure_ascii=False))
 print("LINE_SAMPLE",json.dumps(out["first_90"][:28],ensure_ascii=False))
if __name__=="__main__":main()
