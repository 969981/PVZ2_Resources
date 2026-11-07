#!/usr/bin/env python3
"""Read-only source-locked libSrc.so surface creation native method mapping.

Outputs only candidate JNI registration table fields and ELF string RVAs.
Never exports APK/SO bytes, disassembly, private game assets, keys or tokens.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
from zipfile import ZipFile

try:
    from scripts.offline.jni_registration_probe import (
        parse_elf64, scan_registration_rows, to_virtual_address,
    )
except ModuleNotFoundError:
    from jni_registration_probe import (
        parse_elf64, scan_registration_rows, to_virtual_address,
    )

APK_SHA = "64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4"
ELF_SHA = "b216b12e0e17a6429d993f380a7e6bbd9b99704906ec20a445d59952681b10ba"
JNI_TARGETS = ("Native_onSurfaceCreated",)
BRIDGE_METHODS = ("Native_onSurfaceCreated", "UI_ShowAlertDialog", "Device_ExitApp")


def mapped_name_offsets(data: bytes, segments: list[dict],
                        names: tuple[str, ...] = BRIDGE_METHODS) -> list[dict]:
    rows = []
    for name in names:
        needle = name.encode("ascii") + b"\0"
        at = 0
        occurrences = 0
        while (at := data.find(needle, at)) >= 0:
            file_off = at
            at += 1
            va = to_virtual_address(segments, file_off)
            if va is None:
                continue
            rows.append({"name": name, "name_literal_rva": hex(va)})
            occurrences += 1
            if occurrences >= 20:
                break
    return rows


def analyze(apk: Path) -> dict:
    h = hashlib.sha256()
    with apk.open("rb") as f:
        for block in iter(lambda: f.read(4 * 1024 * 1024), b""):
            h.update(block)
    if h.hexdigest() != APK_SHA:
        raise ValueError("Unexpected original APK SHA256")
    with ZipFile(apk) as z:
        members = [x for x in z.infolist()
                   if x.filename.endswith("lib/arm64-v8a/libSrc.so")]
        if len(members) != 1 or members[0].file_size > 256 * 1024 * 1024:
            raise ValueError("Exact ARM64 libSrc.so not found or unexpectedly large")
        data = z.read(members[0])
    if hashlib.sha256(data).hexdigest() != ELF_SHA:
        raise ValueError("Original libSrc.so SHA256 mismatch")
    segments, _reloc = parse_elf64(data)
    mapped = mapped_name_offsets(data, segments)
    registrations = scan_registration_rows(data, methods=JNI_TARGETS)
    return {
        "status": "ARM64_ELF_STRUCTURAL_JNI_MAP_RUNTIME_CALLER_UNVERIFIED",
        "source_apk_verified": True,
        "arm64_libsrc_verified": True,
        "library_name": "libSrc.so",
        "method_name_offsets": mapped,
        "registration_candidates": registrations[:30],
        "candidate_count": len(registrations),
        "expected_native_descriptor": "()V",
        "native_function_caller_identified": False,
        "integrity_check_cause_verified": False,
        "offline_gameplay_verified": False,
    }


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--apk", type=Path, required=True)
    p.add_argument("--out", type=Path, required=True)
    a = p.parse_args()
    if not a.apk.is_file():
        p.error("APK not found")
    report = analyze(a.apk)
    a.out.parent.mkdir(exist_ok=True, parents=True)
    a.out.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n",
                     encoding="utf-8")
    print(json.dumps({k: v for k, v in report.items()
                      if k not in ("method_name_offsets", "registration_candidates")}, ensure_ascii=False))


if __name__ == "__main__":
    main()
