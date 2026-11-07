#!/usr/bin/env python3
"""Bounded, non-invasive Android APK signing/integrity callsite census.

Analyze ephemeral JADX Java sources and a matching privately extracted .so.
Output names, line numbers and bounded match categories, never game code,
authentication material, package certificate bytes or method bodies.
A lexical match is *not* evidence of a verified integrity/exit branch.
"""
from __future__ import annotations

import argparse
from collections import Counter
import json
from pathlib import Path
import re

JAVA_RULES = {
    "package_signature_api": re.compile(
        r"\b(?:GET_SIGNATURES|GET_SIGNING_CERTIFICATES|getSigningInfo|"
        r"getApkContentsSigners|getSigningCertificateHistory|"
        r"signatures|getPackageInfo|getPackageArchiveInfo)\b"),
    "certificate_or_digest": re.compile(
        r"\b(?:MessageDigest|CertificateFactory|X509Certificate|"
        r"SHA256|SHA-256|SHA1|SHA-1|MD5|Signature|SignatureInfo)\b"),
    "archive_or_installer_api": re.compile(
        r"\b(?:getPackageCodePath|getSourceDir|sourceDir|publicSourceDir|"
        r"getInstallerPackageName|ZipFile|JarFile|META-INF)\b"),
    "intentional_process_exit": re.compile(
        r"\b(?:System\.exit|Process\.killProcess|finishAffinity|"
        r"finishAndRemoveTask|Runtime\.getRuntime)\b"),
}
NATIVE_RULES = {
    "jni_signature_api": re.compile(
        rb"getPackageInfo|getSigningInfo|getApkContentsSigners|"
        rb"getPackageArchiveInfo|android/content/pm/Signature"),
    "digest_api": re.compile(rb"SHA-256|SHA256|SHA-1|SHA1|MD5|X509"),
    "archive_inspection": re.compile(
        rb"classes[0-9]*\.dex|META-INF|CERT\.RSA|AndroidManifest\.xml"),
}
FIRST_PARTY_PREFIXES = ("com/popcap/", "com/talkweb/", "com/tw/")


def java_census(sources: Path, maximum: int = 500) -> tuple[dict, list[dict]]:
    if not sources.is_dir():
        raise ValueError("JADX source root does not exist")
    counts: Counter[str] = Counter()
    callsites: list[dict] = []
    scanned = 0
    signature_files: set[str] = set()
    exit_files: set[str] = set()
    for path in sorted(sources.rglob("*.java")):
        relative = path.relative_to(sources).as_posix()
        if ".." in Path(relative).parts:
            raise ValueError("Unexpected source path")
        try:
            content = path.read_text(encoding="utf-8", errors="replace")
        except OSError:
            continue
        scanned += 1
        for line_no, line in enumerate(content.splitlines(), 1):
            for label, regex in JAVA_RULES.items():
                matches = list(regex.finditer(line))
                if not matches:
                    continue
                counts[label] += len(matches)
                if label == "package_signature_api":
                    signature_files.add(relative)
                if label == "intentional_process_exit":
                    exit_files.add(relative)
                if len(callsites) >= maximum:
                    continue
                for hit in matches[:2]:
                    if len(callsites) >= maximum:
                        break
                    callsites.append({
                        "class_file": relative[:250],
                        "line": line_no,
                        "category": label,
                        "api_identifier": hit.group(0),
                        "first_party": relative.startswith(FIRST_PARTY_PREFIXES),
                    })
    cooccurrence = sorted(signature_files & exit_files)
    result = {
        "java_files_scanned": scanned,
        "lexical_matches": dict(counts),
        "package_signature_files": len(signature_files),
        "exit_files": len(exit_files),
        "same_file_signature_and_exit_candidates": cooccurrence[:40],
        "candidate_semantics": "LEXICAL_CALLSITES_ONLY_NOT_RUNTIME_DATAFLOW",
        "raw_java_uploaded": False,
        "source_bodies_recorded": False,
    }
    return result, callsites


def native_census(path: Path) -> dict:
    data = path.read_bytes()
    matches = {}
    for label, regex in NATIVE_RULES.items():
        rows = list(regex.finditer(data))
        matches[label] = {
            "occurrences": len(rows),
            "first_binary_file_offsets": [hit.start() for hit in rows[:15]],
        }
    return {
        "native_file_size": len(data),
        "candidate_ascii_markers": matches,
        "offsets_are_file_offsets_not_elf_virtual_addresses": True,
        "native_function_or_runtime_check_verified": False,
    }


def analyze(sources: Path, library: Path, out: Path) -> dict:
    if out.resolve() == sources.resolve() or out.resolve().is_relative_to(sources.resolve()):
        raise ValueError("Output must be outside private decompiled sources")
    result, callsites = java_census(sources)
    result["native"] = native_census(library)
    result["callsites_recorded"] = len(callsites)
    result["status"] = "SIGNING_AND_EXIT_CANDIDATE_CENSUS_ONLY"
    result["no_offline_gameplay_claim"] = True
    out.mkdir(parents=True, exist_ok=True)
    (out / "signing_candidate_summary.json").write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    (out / "signing_candidate_callsites.json").write_text(
        json.dumps(callsites, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return result


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sources", type=Path, required=True)
    parser.add_argument("--so", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()
    print(json.dumps(analyze(args.sources, args.so, args.out),
                     ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
