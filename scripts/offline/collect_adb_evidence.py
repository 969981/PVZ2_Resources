#!/usr/bin/env python3
"""Capture local PVZ2 launch evidence without changing device network settings.

This script DOES NOT bypass login, alter saves, or claim offline success.
Logcat can contain private data; never upload unreviewed output to public Git.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import re
import subprocess
import time

DEFAULT_PACKAGE = "com.popcap.pvz2cthdbk"
PACKAGE_RE = re.compile(r"^[A-Za-z_][A-Za-z0-9_]*(?:\.[A-Za-z_][A-Za-z0-9_]*)+$")


def validate_package(value: str) -> str:
    if not PACKAGE_RE.fullmatch(value):
        raise ValueError("Invalid Android application package name")
    return value


def parse_package_version(output: str) -> dict:
    code = re.search(r"\bversionCode=(\d+)", output)
    name = re.search(r"\bversionName=([^\s]+)", output)
    return {"version_code": code.group(1) if code else None,
            "version_name": name.group(1) if name else None}


def execute(adb_prefix: list[str], *args: str, timeout: int = 30) -> subprocess.CompletedProcess:
    return subprocess.run([*adb_prefix, *args], capture_output=True,
                          text=True, errors="replace", timeout=timeout, check=False)


def collect(adb_prefix: list[str], package: str, destination: Path,
            seconds: int = 30, launch: bool = False, allow_network: bool = False) -> dict:
    validate_package(package)
    if not 0 <= seconds <= 600:
        raise ValueError("seconds must be between 0 and 600")
    state = execute(adb_prefix, "get-state")
    if state.returncode or state.stdout.strip() != "device":
        raise RuntimeError("ADB device is not ready; check 'adb devices' and authorization")
    airplane_result = execute(adb_prefix, "shell", "settings", "get", "global", "airplane_mode_on")
    airplane = airplane_result.stdout.strip()
    if (airplane_result.returncode or airplane != "1") and not allow_network:
        raise RuntimeError("Airplane mode was not confirmed (1). Enable it on device or use --allow-network for a baseline.")
    installed = execute(adb_prefix, "shell", "pm", "path", package)
    if installed.returncode or "package:" not in installed.stdout:
        raise RuntimeError(f"Package {package} is not installed")
    package_dump = execute(adb_prefix, "shell", "dumpsys", "package", package)
    version = parse_package_version(package_dump.stdout)
    timestamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    run_dir = destination / f"run_{timestamp}"
    if run_dir.exists():
        raise FileExistsError(run_dir)
    run_dir.mkdir(parents=True)
    start = datetime.now(timezone.utc)
    launched = False
    if launch:
        result = execute(adb_prefix, "shell", "monkey", "-p", package,
                         "-c", "android.intent.category.LAUNCHER", "1")
        if result.returncode or "Events injected: 1" not in (result.stdout + result.stderr):
            raise RuntimeError("Unable to start target app using adb monkey")
        launched = True
    if seconds:
        time.sleep(seconds)
    logs = execute(adb_prefix, "logcat", "-d", "-v", "threadtime",
                   "-t", "4000", timeout=60)
    if logs.returncode:
        raise RuntimeError("adb logcat failed: " + logs.stderr[:300])
    raw_log = logs.stdout
    (run_dir / "logcat.log").write_text(raw_log, encoding="utf-8")
    result = {
        "status": "evidence_captured_not_offline_verified",
        "package": package, "version": version, "flight_mode_setting": airplane,
        "allow_network_baseline": allow_network, "launched_by_script": launched,
        "start_utc": start.isoformat(), "end_utc": datetime.now(timezone.utc).isoformat(),
        "capture_seconds": seconds,
        "logcat_scope": "last 4000 global lines, not only target app",
        "logcat_sha256": hashlib.sha256(raw_log.encode("utf-8")).hexdigest(),
        "logcat_lines": len(raw_log.splitlines()),
        "privacy_warning": "Review and redact tokens, account identifiers and device information before sharing logs."
    }
    (run_dir / "capture.json").write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )
    return {"run_directory": str(run_dir), **result}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--adb", default="adb", help="ADB executable path")
    parser.add_argument("--serial", help="Optional selected device serial (not included in reports)")
    parser.add_argument("--package", default=DEFAULT_PACKAGE)
    parser.add_argument("--out", type=Path, default=Path("audit/local/offline/runs"))
    parser.add_argument("--seconds", type=int, default=30)
    parser.add_argument("--launch", action="store_true",
                        help="Launch the installed app before evidence collection")
    parser.add_argument("--allow-network", action="store_true",
                        help="Collect a comparison baseline without requiring airplane mode")
    args = parser.parse_args()
    prefix = [args.adb] + (["-s", args.serial] if args.serial else [])
    try:
        report = collect(prefix, args.package, args.out, args.seconds,
                         args.launch, args.allow_network)
    except (OSError, ValueError, RuntimeError, subprocess.TimeoutExpired) as error:
        parser.error(str(error))
    print(json.dumps(report, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
