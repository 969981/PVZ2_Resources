#!/usr/bin/env python3
"""PVZ2 CHN Stage 1: RSLB -> RSB, direct RTON and other SMF copy; no inner RSGP decode."""
from __future__ import annotations
import argparse
import hashlib
import json
import lzma
import os
from pathlib import Path
import shutil
import struct
import tempfile
import zipfile

HEADER = struct.Struct("<4sIQQIIQQ")
BLOCK = struct.Struct("<QI5s3x")
LINK = struct.Struct("<QQ")

def copy_zip_member(archive: zipfile.ZipFile, name: str, output: Path) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    temp = output.with_name(output.name + ".part")
    try:
        with archive.open(name) as src, temp.open("wb") as out:
            shutil.copyfileobj(src, out, 1024 * 1024)
        os.replace(temp, output)
    finally:
        temp.unlink(missing_ok=True)

def unwrap_rslb(source: Path, output: Path) -> dict:
    """Stream genuine RSLB v1: fixed 0x30 header + 20-byte entries + 16-byte inter-block links.

    Older synthetic parsers incorrectly treated the 0x20 metadata as a uniform 36-byte
    table; this accidentally aligns for a single block but fails on multi-block samples.
    Real RSLB blocks can omit an LZMA end marker; decode exactly the declared size.
    """
    size = source.stat().st_size
    with source.open("rb") as stream:
        raw = stream.read(HEADER.size)
        if len(raw) != HEADER.size:
            raise ValueError("truncated RSLB v1 header")
        magic, version, total, packed, nominal, count, reserved, repeated = HEADER.unpack(raw)
        if magic != b"RSLB" or version != 1:
            raise ValueError(f"unsupported RSLB version or magic: {magic!r}/{version}")
        if not (1 <= count <= 65536 and 1 <= nominal <= 128 * 1024 * 1024):
            raise ValueError("invalid chunk count or nominal size")
        if packed not in (0, size - 0x20):
            raise ValueError(f"packed length mismatch: {packed} != {size - 0x20}")
        if repeated not in (total, nominal):
            raise ValueError(f"unrecognized +0x28 size-field style: {repeated}")
        table_end = HEADER.size + count * BLOCK.size + (count - 1) * LINK.size
        if table_end > size:
            raise ValueError("RSLB chunk table truncated")
        chunks = []
        produced = 0
        cursor = HEADER.size
        for i in range(count):
            stream.seek(cursor)
            entry = stream.read(BLOCK.size)
            if len(entry) != BLOCK.size:
                raise ValueError(f"block {i}: short descriptor")
            data_offset, compressed_size, props = BLOCK.unpack(entry)
            cursor += BLOCK.size
            next_size = None
            if i < count - 1:
                link = stream.read(LINK.size)
                if len(link) != LINK.size:
                    raise ValueError(f"block {i}: truncated link")
                end, next_size = LINK.unpack(link)
                cursor += LINK.size
                usize = end - produced
                if not (produced < end < total and 0 < next_size <= nominal
                        and end + next_size <= total):
                    raise ValueError(f"block {i}: invalid uncompressed boundaries")
            else:
                usize = total - produced
            prop = props[0]
            dictionary = int.from_bytes(props[1:], "little")
            if not (0 < usize <= nominal and 5 < compressed_size
                    and data_offset >= table_end and data_offset + compressed_size <= size):
                raise ValueError(f"block {i}: size/bounds invalid")
            if not (prop < 225 and 4096 <= dictionary <= 256 * 1024 * 1024):
                raise ValueError(f"block {i}: unsupported LZMA settings")
            if chunks and data_offset < chunks[-1]["data_end"]:
                raise ValueError(f"block {i}: overlapping compressed ranges")
            chunks.append({"offset": data_offset, "csize": compressed_size,
                           "props": props, "usize": usize, "next_size": next_size,
                           "data_end": data_offset + compressed_size})
            produced += usize
        if produced != total:
            raise ValueError(f"declared output length mismatch: {produced} != {total}")
        for i, current in enumerate(chunks[:-1]):
            if current["next_size"] != chunks[i + 1]["usize"]:
                raise ValueError(f"block {i}: next block length mismatch")
        output.parent.mkdir(parents=True, exist_ok=True)
        tmp = output.with_name(output.name + ".part")
        checksum = hashlib.sha256()
        try:
            with tmp.open("wb") as dest:
                for i, chunk in enumerate(chunks):
                    stream.seek(chunk["offset"])
                    actual_props = stream.read(5)
                    if actual_props != chunk["props"]:
                        raise ValueError(f"block {i}: descriptor/payload properties differ")
                    compressed = stream.read(chunk["csize"] - 5)
                    if len(compressed) != chunk["csize"] - 5:
                        raise ValueError(f"block {i}: truncated compressed bytes")
                    prop = chunk["props"][0]
                    dictionary = int.from_bytes(chunk["props"][1:], "little")
                    decoder = lzma.LZMADecompressor(
                        format=lzma.FORMAT_RAW,
                        filters=[{"id": lzma.FILTER_LZMA1, "dict_size": dictionary,
                                  "lc": prop % 9, "lp": (prop // 9) % 5, "pb": prop // 45}])
                    try:
                        decoded = decoder.decompress(compressed, max_length=chunk["usize"])
                    except lzma.LZMAError as exc:
                        raise ValueError(f"block {i}: LZMA error: {exc}") from exc
                    if len(decoded) != chunk["usize"]:
                        raise ValueError(
                            f"block {i}: decoded size {len(decoded)}, expected {chunk['usize']}")
                    dest.write(decoded)
                    checksum.update(decoded)
            with tmp.open("rb") as verify:
                if verify.read(4) != b"1bsr":
                    raise ValueError("decoded output is not RSB magic 1bsr")
            os.replace(tmp, output)
        finally:
            tmp.unlink(missing_ok=True)
    return {"rslb_version": version, "blocks": count, "decoded_bytes": total,
            "size_field_style": "total" if repeated == total else "chunk",
            "sha256": checksum.hexdigest()}

def probe_rsb(path: Path) -> dict:
    """Read RSB header and group bounds; NOT internal resource files."""
    with path.open("rb") as f:
        raw = f.read(27 * 4)
        if len(raw) != 108 or raw[:4] != b"1bsr":
            raise ValueError("invalid RSB header")
        fields = struct.unpack("<27I", raw)
        version, count, offset, stride = fields[1], fields[10], fields[11], fields[12]
        length = path.stat().st_size
        if count > 100000 or (count and (stride < 0xB0 or offset + count * stride > length)):
            raise ValueError("invalid group table")
        groups = []
        for i in range(count):
            f.seek(offset + stride * i)
            record = f.read(stride)
            name = record[:128].split(b"\x00", 1)[0].decode("utf-8", "replace")
            start, size = struct.unpack_from("<II", record, 128)
            if start + size > length:
                raise ValueError(f"group {i} exceeds RSB size")
            groups.append({"name": name, "offset": start, "size": size})
    return {"rsb_version": version, "group_count": count, "groups": groups,
            "groups_contiguous": all(a["offset"] + a["size"] == b["offset"]
                                     for a, b in zip(groups, groups[1:])),
            "last_group_reaches_eof": bool(groups and groups[-1]["offset"] + groups[-1]["size"] == length)}

def extract(apk: Path, out: Path, mode: str) -> dict:
    out.mkdir(parents=True, exist_ok=True)
    result = {"source_apk_filename": apk.name, "mode": mode,
              "scope": "RSLB outer unwrap + direct RTON/SMF copy only",
              "entries": [], "errors": []}
    with zipfile.ZipFile(apk) as archive:
        names = set(archive.namelist())
        bundles = sorted(x for x in names if x.startswith("assets/") and x.endswith(".rsb.smf"))
        rtons = sorted(x for x in names if x.startswith("assets/properties/") and x.endswith(".rton.smf"))
        if mode == "probe":
            bundles = [x for x in bundles if x == "assets/dino.rsb.smf"]
            rtons = [x for x in rtons if x == "assets/properties/resourcesDino.rton.smf"]
            if not bundles:
                raise ValueError("dino probe resource absent")
        for member in bundles:
            entry = {"path": member, "kind": "RSLB"}
            try:
                with tempfile.TemporaryDirectory(prefix="pvz2cn_") as td:
                    stage = Path(td) / Path(member).name
                    copy_zip_member(archive, member, stage)
                    decoded = out / "RSB" / Path(member).name.removesuffix(".smf")
                    entry.update(unwrap_rslb(stage, decoded))
                entry["rsb_header"] = probe_rsb(decoded)
                entry["status"] = "ok"
            except Exception as exc:
                entry.update(status="error", error=str(exc))
                result["errors"].append({"path": member, "error": str(exc)})
            result["entries"].append(entry)
            print(member, entry["status"])
        for member in rtons:
            entry = {"path": member, "kind": "direct RTON"}
            try:
                target = out / "RTON" / Path(member).name.removesuffix(".smf")
                copy_zip_member(archive, member, target)
                with target.open("rb") as f:
                    magic = f.read(4)
                    raw_version = f.read(4)
                if magic != b"RTON" or len(raw_version) != 4:
                    raise ValueError("bad direct RTON header")
                entry.update(status="ok", version=struct.unpack("<I", raw_version)[0],
                             bytes=target.stat().st_size)
            except Exception as exc:
                entry.update(status="error", error=str(exc))
                result["errors"].append({"path": member, "error": str(exc)})
            result["entries"].append(entry)
            print(member, entry["status"])
        if mode == "all":
            other = sorted(x for x in names if x.startswith("assets/") and x.endswith(".smf")
                           and x not in bundles and x not in rtons)
            for member in other:
                entry = {"path": member, "kind": "other SMF"}
                try:
                    copy_zip_member(archive, member, out / "SMF-Metadata" / Path(member).relative_to("assets"))
                    entry["status"] = "ok"
                except Exception as exc:
                    entry.update(status="error", error=str(exc))
                    result["errors"].append({"path": member, "error": str(exc)})
                result["entries"].append(entry)
    result["summary"] = {
        "total": len(result["entries"]),
        "ok": sum(x.get("status") == "ok" for x in result["entries"]),
        "failed": len(result["errors"])
    }
    (out / "extraction_report.json").write_text(
        json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    return result

def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("apk", type=Path)
    parser.add_argument("--mode", choices=("probe", "all"), default="probe")
    parser.add_argument("--out", type=Path, default=Path("Unpack/CHN/4.2.8/stage1"))
    args = parser.parse_args()
    report = extract(args.apk, args.out, args.mode)
    print(report["summary"])
    if report["errors"]:
        raise SystemExit(1)

if __name__ == "__main__":
    main()
