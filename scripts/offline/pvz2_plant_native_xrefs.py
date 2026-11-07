#!/usr/bin/env python3
"""Read-only targeted native literal & ARM64 XREF audit for PvZ2 CHN 4.2.8.

Input: SHA256-verified original APK. Output: names and ELF addresses only.
Class/field literals and static code references are *not* runtime branch proofs.
"""
from __future__ import annotations
import argparse
import csv
import json
import mmap
from pathlib import Path
import re
import shutil
import subprocess
import zipfile

try:
    from scripts.offline.audit_apk import SOURCE_SHA256, sha256_file
    from scripts.offline.reverse_dependencies import elf_load_segments, native_rva
    from scripts.offline.arm64_xrefs import scan_xrefs, exec_segments
except ModuleNotFoundError:
    from audit_apk import SOURCE_SHA256, sha256_file
    from reverse_dependencies import elf_load_segments, native_rva
    from arm64_xrefs import scan_xrefs, exec_segments

TERMS = (
    "MulberryPlasmaGrenade", "MulberryFlashGrenade", "MulberryGasGrenade",
    "MulberryProjectile", "PlantMulberry", "ConvallariaChemistProjectile",
    "ConvallariaChemistSuperProjectile", "ConvallariaChemistPlantfoodProjectile",
    "PlantConvallariaChemist", "PoisonDamage", "PoisonDuration",
    "PoisonInfos", "MaximumStackLevel", "MaximumStacksPerLevel",
    "StacksToAdd", "BasicVenomRate", "AdvancedVenomRate", "VenomItemName",
    "SplitGrenadeRate", "ImprovedGrenadeBonus", "Level5AttackRate",
    "PlasmaSection", "FlashSection", "StunDuration", "SplashRadius",
)
SYMBOL_PATTERN = re.compile(
    r"Mulberry|Convallaria|Poison|Venom|Projectile|StatusEffect|Damage", re.I
)

def literals(data, segments, term, cap=80):
    termbytes = term.encode("ascii")
    offset, found = 0, []
    while len(found) < cap:
        index = data.find(termbytes, offset)
        if index < 0:
            break
        before = data[index-1] if index else 0
        end = index + len(termbytes)
        after = data[end] if end < len(data) else 0
        # Require a left/right word delimiter; allow the field name in
        # mangled typeinfo as a separate named category, not an exact field.
        if before in (0, ord('_'), ord(':'), ord(' '), ord('N')) and after in (0, ord(';'), ord('_'), ord(' '), ord('E')):
            v = native_rva(segments,index)
            found.append({"identifier":term, "file_offset":hex(index),
                          "elf_rva_hex":v, "exact_cstring":before == 0 and after == 0,
                          "boundary_only":not(before==0 and after==0)})
        offset = index + 1
    return found

def symbols(so):
    try:
        run = subprocess.run(["readelf", "-W", "--symbols", str(so)],
                             capture_output=True, text=True, timeout=90, check=True)
    except (OSError, subprocess.TimeoutExpired, subprocess.CalledProcessError):
        return [], "not_available"
    names = []
    for line in run.stdout.splitlines():
        vals = line.strip().split()
        if len(vals) < 8 or not vals[0].endswith(":"):
            continue
        name=vals[7]
        if SYMBOL_PATTERN.search(name):
            names.append({"symbol":name[:350], "value":vals[1],
                          "size":vals[2],"type":vals[3], "bind":vals[4]})
        if len(names)>=400:
            break
    return names, "ok"

def audit(apk: Path, scratch: Path, output: Path):
    if sha256_file(apk) != SOURCE_SHA256:
        raise ValueError("Wrong APK SHA256; refusing cross-build audit")
    scratch.mkdir(parents=True, exist_ok=True)
    output.mkdir(parents=True, exist_ok=True)
    so=scratch/"libSrc.so"
    with zipfile.ZipFile(apk) as z, z.open("lib/arm64-v8a/libSrc.so") as src, so.open("wb") as out:
        shutil.copyfileobj(src,out,4*1024*1024)
    segs=elf_load_segments(so)
    if not segs or not exec_segments(so):
        raise ValueError("ELF 64-bit executable segments not found")
    with so.open("rb") as src, mmap.mmap(src.fileno(),0,access=mmap.ACCESS_READ) as buffer:
        found=[row for term in TERMS for row in literals(buffer,segs,term)]
    targets={}
    for row in found:
        if not row["elf_rva_hex"]: continue
        key=int(row["elf_rva_hex"],16)
        targets.setdefault(key,[]).append({"domain_hint":row["identifier"]})
    xrefs=scan_xrefs(so,targets,max_results=6000)
    syms,sym_status=symbols(so)
    for filename, fields, rows in (
        ("native_literals.csv",["identifier","file_offset","elf_rva_hex","exact_cstring","boundary_only"],found),
        ("native_field_xrefs.csv",["domain_hint","native_literal_rva_hex","code_reference_rva_hex","followup_add_rva_hex","instruction_pattern","warning"],xrefs),
        ("native_candidate_symbols.csv",["symbol","value","size","type","bind"],syms)):
        with (output/filename).open("w",encoding="utf-8-sig",newline="") as f:
            w=csv.DictWriter(f,fieldnames=fields)
            w.writeheader()
            w.writerows(rows)
    counts={term:sum(x["identifier"]==term for x in found) for term in TERMS}
    xcounts={term:sum(x["domain_hint"]==term for x in xrefs) for term in TERMS}
    result={
        "source_apk_sha256":SOURCE_SHA256,
        "source_libsrc_arm64_sha256":sha256_file(so),
        "libsrc_bytes":so.stat().st_size,
        "elf_exec_segments":len(exec_segments(so)),
        "string_counts":counts,
        "xref_counts":xcounts,
        "native_literal_rows":len(found),
        "native_xref_rows":len(xrefs),
        "candidate_symbol_rows":len(syms),
        "symbol_scan_status":sym_status,
        "native_static_evidence_only":True,
        "not_proven":["executed call path", "RNG selection order", "damage formula",
                      "percent-of-health semantics","battle timing","patch sites"],
    }
    (output/"SUMMARY.json").write_text(json.dumps(result,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print("PVZ2_NATIVE_SOURCE_VERIFIED", json.dumps({"strings":len(found), "xrefs":len(xrefs),
              "symbols":len(syms), "per_field_xrefs":xcounts},ensure_ascii=False))
    return result

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("--apk",type=Path,required=True)
    ap.add_argument("--scratch",type=Path,required=True)
    ap.add_argument("--out",type=Path,required=True)
    a=ap.parse_args()
    if a.scratch.resolve()==a.out.resolve():
        ap.error("Separate private SO location from published metadata")
    audit(a.apk,a.scratch,a.out)

if __name__=="__main__":
    main()
