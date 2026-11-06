#!/usr/bin/env python3
"""Parallel per-bundle CHN 4.2.8 RSLB -> RSB unpack. Outer layer only."""
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timezone
import argparse
import hashlib
import json
import os
from pathlib import Path
import tempfile
import zipfile
from unpack_smf import copy_zip_member, probe_rsb, unwrap_rslb

def sha(path):
    h = hashlib.sha256()
    with open(path, 'rb') as f:
        for b in iter(lambda: f.read(4 << 20), b''):
            h.update(b)
    return h.hexdigest()

def extract_one(apk, out, name, resume):
    dst = out / "RSB" / Path(name).name.removesuffix(".smf")
    row = {"source": name, "type": "RSLB"}
    try:
        if resume and dst.is_file():
            try:
                details = probe_rsb(dst)
                row.update(status="skipped-verified", sha256=sha(dst), size=dst.stat().st_size, rsb=details)
                return row
            except (OSError, ValueError, IndexError):
                dst.unlink(missing_ok=True)
        with tempfile.TemporaryDirectory(prefix="rslb_", dir=out) as td:
            staged = Path(td) / Path(name).name
            with zipfile.ZipFile(apk) as z:
                copy_zip_member(z, name, staged)
            row.update(unwrap_rslb(staged, dst))
        row.update(status="ok", size=dst.stat().st_size, rsb=probe_rsb(dst))
    except Exception as e:
        row.update(status="error", error=str(e))
        dst.unlink(missing_ok=True)
    return row

def copy_one(apk, out, name, resume):
    direct = name.endswith(".rton.smf")
    dest = out / ("RTON" if direct else "SMF-Metadata")
    dest = (dest / Path(name).name.removesuffix(".smf") if direct
            else dest / Path(name).relative_to("assets"))
    row = {"source": name, "type": "direct-RTON" if direct else "SMF-metadata"}
    try:
        with zipfile.ZipFile(apk) as z:
            info = z.getinfo(name)
            if resume and dest.exists() and dest.stat().st_size == info.file_size:
                row["status"] = "skipped-verified"
            else:
                copy_zip_member(z, name, dest)
                row["status"] = "ok"
        if direct and dest.open("rb").read(4) != b"RTON":
            raise ValueError("unexpected direct RTON header")
        row.update(sha256=sha(dest), size=dest.stat().st_size)
    except Exception as e:
        row.update(status="error", error=str(e))
        dest.unlink(missing_ok=True)
    return row

def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("apk", type=Path)
    p.add_argument("--out", type=Path, default=Path("Unpack/CHN/4.2.8/stage1"))
    p.add_argument("--workers", type=int, default=4)
    p.add_argument("--mode", choices=("probe", "all"), default="probe")
    p.add_argument("--resume", action="store_true")
    p.add_argument("--sha256", help="expected APK SHA256")
    args = p.parse_args()
    if not 1 <= args.workers <= 12:
        p.error("workers must be 1..12")
    args.out.mkdir(parents=True, exist_ok=True)
    digest = sha(args.apk)
    if args.sha256 and digest.lower() != args.sha256.lower():
        p.error("APK SHA256 does not match: " + digest)
    with zipfile.ZipFile(args.apk) as z:
        items = {i.filename: i for i in z.infolist() if not i.is_dir()}
    bundles = sorted((n for n in items if n.startswith("assets/") and n.endswith(".rsb.smf")),
                     key=lambda n: (-items[n].file_size, n))
    rtons = sorted(n for n in items if n.startswith("assets/properties/") and n.endswith(".rton.smf"))
    other = sorted(n for n in items if n.startswith("assets/") and n.endswith(".smf")
                   and n not in bundles and n not in rtons)
    if args.mode == "probe":
        bundles = [n for n in bundles if n == "assets/dino.rsb.smf"]
        rtons = [n for n in rtons if n == "assets/properties/resourcesDino.rton.smf"]
        other = []
        if not bundles:
            p.error("dino resource absent from input APK")
    jobs = [(extract_one, n) for n in bundles] + [(copy_one, n) for n in rtons + other]
    report = {"mode": args.mode, "workers": args.workers, "source_sha256": digest,
              "version_label": "CHN 4.2.8", "started_utc": datetime.now(timezone.utc).isoformat(),
              "scope": "outer RSLB; not RSGP member decoding", "entries": []}
    with ThreadPoolExecutor(max_workers=args.workers) as pool:
        tasks = {pool.submit(fn, args.apk, args.out, n, args.resume): n for fn, n in jobs}
        for future in as_completed(tasks):
            row = future.result()
            report["entries"].append(row)
            print(f"[{len(report['entries'])}/{len(jobs)}] {row['source']} {row['status']} {row.get('error','')}", flush=True)
    report["entries"].sort(key=lambda r: r["source"])
    failed = sum(r["status"] == "error" for r in report["entries"])
    report["summary"] = {
        "total": len(jobs), "failed": failed,
        "ok": sum(r["status"] == "ok" for r in report["entries"]),
        "skipped": sum(r["status"] == "skipped-verified" for r in report["entries"]),
        "rsb_bytes": sum(r.get("size", 0) for r in report["entries"] if r["type"] == "RSLB")
    }
    target = args.out / ("report_" + args.mode + ".json")
    target.write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    print("SUMMARY", report["summary"], flush=True)
    if failed:
        raise SystemExit(1)

if __name__ == "__main__":
    main()
