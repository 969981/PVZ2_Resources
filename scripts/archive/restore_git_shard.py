#!/usr/bin/env python3
"""Verify a versioned Git archive manifest and restore its original files."""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys

def hash_stream(stream, expected=None):
    digest=hashlib.sha256()
    size=0
    while True:
        b=stream.read(4*1024*1024)
        if not b:
            break
        size+=len(b)
        digest.update(b)
        yield b
    if expected and digest.hexdigest()!=expected:
        raise ValueError("aggregate archive SHA256 mismatch")

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("shard_dir",type=Path)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--verify-only",action="store_true")
    args=p.parse_args()
    manifest=json.loads((args.shard_dir/"manifest.json").read_text(encoding="utf-8"))
    if not manifest["parts"]:
        p.error("no parts")
    archive_digest=hashlib.sha256()
    def read_parts():
        total=0
        for part in manifest["parts"]:
            path=args.shard_dir/part["file"]
            if path.stat().st_size!=part["bytes"]:
                raise ValueError(f"size mismatch: {path}")
            h=hashlib.sha256()
            with path.open("rb") as src:
                for data in iter(lambda:src.read(4*1024*1024),b""):
                    h.update(data)
                    archive_digest.update(data)
                    total+=len(data)
                    yield data
            if h.hexdigest()!=part["sha256"]:
                raise ValueError(f"chunk SHA256 mismatch: {path}")
        if archive_digest.hexdigest()!=manifest["archive_sha256"]:
            raise ValueError("combined archive SHA256 mismatch")
        if total!=manifest["archive_bytes"]:
            raise ValueError("combined archive byte count mismatch")
    if args.verify_only:
        for _ in read_parts():
            pass
        print("verified",manifest["stage"],manifest["shard"])
        return
    args.out.mkdir(parents=True,exist_ok=True)
    decomp=subprocess.Popen(["zstd","-dc"],stdin=subprocess.PIPE,stdout=subprocess.PIPE)
    extraction=subprocess.Popen(["tar","-x","-C",str(args.out),"-f","-"],
                                stdin=decomp.stdout)
    decomp.stdout.close()
    try:
        for data in read_parts():
            decomp.stdin.write(data)
        decomp.stdin.close()
    except Exception:
        decomp.kill()
        extraction.kill()
        raise
    if decomp.wait() or extraction.wait():
        raise RuntimeError("zstd or tar extraction failed")
    print("restored",manifest["stage"],manifest["shard"],"to",args.out)
if __name__=="__main__":
    main()
