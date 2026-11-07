#!/usr/bin/env python3
"""Wrap one GitHub Actions artifact into recoverable <=64 MiB Git blobs.

Input is the extracted Actions artifact directory; output is a versioned path
with a deterministic tar.zst split set and a SHA256 manifest. No game bytes
are transformed in this step. Requires external tar and zstd.
"""
from __future__ import annotations
import argparse
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import tempfile

CHUNK_BYTES = 64 * 1024 * 1024
RUN_IDS = {"RSB": 42256393599, "RSGP": 42258406327, "Internal": 42259266531, "Media": 42321977158}

def digest(path: Path) -> str:
    h=hashlib.sha256()
    with path.open("rb") as f:
        for buffer in iter(lambda: f.read(4 * 1024 * 1024), b""):
            h.update(buffer)
    return h.hexdigest()

def main() -> None:
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--input", type=Path, required=True)
    p.add_argument("--output-root", type=Path, default=Path("Unpack/CHN/V4.2.8"))
    p.add_argument("--stage", choices=tuple(RUN_IDS), required=True)
    p.add_argument("--shard", type=int, required=True)
    p.add_argument("--temporary", type=Path)
    args=p.parse_args()
    if not 0 <= args.shard <= 7:
        p.error("shard must be 0..7")
    if not args.input.is_dir():
        p.error("artifact directory missing")
    source_files=[f for f in args.input.rglob("*") if f.is_file() and not f.is_symlink()]
    if not source_files:
        p.error("artifact empty")
    if any(x.is_symlink() for x in args.input.rglob("*")):
        p.error("symlinks in artifact are not supported")
    # Avoid source path traversal or special tar members.
    total=sum(f.stat().st_size for f in source_files)
    out=args.output_root / args.stage / f"shard-{args.shard:02d}"
    out.mkdir(parents=True,exist_ok=True)
    if any(out.iterdir()):
        p.error("destination not empty: " + str(out))
    with tempfile.TemporaryDirectory(prefix="pvz2_pack_", dir=args.temporary) as td:
        packed=Path(td)/"archive.tar.zst"
        with packed.open("wb") as fout:
            tar=subprocess.Popen(
                ["tar","--sort=name","--mtime=@0","--owner=0","--group=0",
                 "--numeric-owner","-C",str(args.input),"-cf","-","."],
                stdout=subprocess.PIPE)
            compressor=subprocess.Popen(["zstd","-q","-T2","-5","-c"],
                                        stdin=tar.stdout,stdout=fout)
            tar.stdout.close()
            ret=compressor.wait()
            tar_result=tar.wait()
            if ret or tar_result:
                p.error(f"tar/zstd failed: {tar_result}/{ret}")
        compressed=packed.stat().st_size
        chunks=[]
        with packed.open("rb") as inp:
            index=0
            while True:
                part=out/f"archive.tar.zst.part-{index:03d}"
                h=hashlib.sha256()
                written=0
                with part.open("wb") as target:
                    while written < CHUNK_BYTES:
                        block=inp.read(min(4*1024*1024,CHUNK_BYTES-written))
                        if not block:
                            break
                        target.write(block)
                        h.update(block)
                        written+=len(block)
                if not written:
                    part.unlink(missing_ok=True)
                    break
                chunks.append({"file":part.name,"bytes":written,"sha256":h.hexdigest()})
                index+=1
        manifest={
            "schema_version":1, "game":"PvZ2","region":"CHN",
            "version_label":"4.2.8", "stage":args.stage,"shard":args.shard,
            "source_actions_run_id":RUN_IDS[args.stage],
            "source_file_count":len(source_files),
            "source_total_bytes":total,
            "archive_filename":"archive.tar.zst",
            "archive_bytes":compressed, "archive_sha256":digest(packed),
            "chunk_size_bytes":CHUNK_BYTES, "parts":chunks,
            "created_utc":datetime.now(timezone.utc).isoformat(),
            "scope_note":"Git objects contain compressed original Actions artifact contents. Restore and verify before use."
        }
        (out/"manifest.json").write_text(
            json.dumps(manifest,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print(json.dumps({"stage":args.stage,"shard":args.shard,
        "file_count":len(source_files),"raw_bytes":total,
        "compressed_bytes":compressed,"parts":len(chunks),
        "destination":str(out)},ensure_ascii=False),flush=True)

if __name__=="__main__":
    main()
