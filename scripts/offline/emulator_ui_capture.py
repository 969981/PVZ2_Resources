#!/usr/bin/env python3
"""Real Android PVZ2 CHN first-screen capture on clean ephemeral emulator.

Personal research only: NO passwords, logins, automated taps, APK changes or
server calls. An explicit game_modified flag distinguishes experimental builds.
Screenshots remain GitHub Actions Artifacts for 1 day; do not
commit game-owned images. Treat UIAutomator XML as non-authoritative for
native OpenGL screens. Script exit success != offline playability.
"""
from __future__ import annotations
import argparse
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import re
import struct
import subprocess
import time

PACKAGE = "com.popcap.pvz2cthdbk"
PNG_HEADER = bytes.fromhex("89504e470d0a1a0a")


def adb(*args, timeout=40):
    return subprocess.run(["adb", *args], capture_output=True,
                          timeout=timeout, check=False)


def decoded(result):
    return result.stdout.decode("utf-8", "replace").strip()


def hash_data(data):
    return hashlib.sha256(data).hexdigest()


def png_info(blob):
    if len(blob) < 24 or not blob.startswith(PNG_HEADER):
        return None
    width, height = struct.unpack(">II", blob[16:24])
    if not 0 < width <= 10000 or not 0 < height <= 10000:
        return None
    return {"width": width, "height": height, "bytes": len(blob),
            "sha256": hash_data(blob)}


def ui_dump():
    # XML may not include OpenGL-rendered text. Sanitize and store only
    # action-oriented text descriptors; clean emulator has no account login.
    try:
        dump = adb("shell", "uiautomator", "dump", "/sdcard/pvz2-ui.xml", timeout=35)
        if dump.returncode:
            return {"status": "unavailable"}
        xml = adb("exec-out", "cat", "/sdcard/pvz2-ui.xml", timeout=15)
        if xml.returncode:
            return {"status": "unavailable"}
        src = xml.stdout.decode("utf-8", "replace")
        from xml.etree import ElementTree
        root = ElementTree.fromstring(src)
        nodes = []
        for node in root.iter("node"):
            text = node.attrib.get("text", "").strip()
            desc = node.attrib.get("content-desc", "").strip()
            if text or desc:
                nodes.append({"text": text[:100], "content_desc": desc[:100],
                              "clickable": node.attrib.get("clickable", "") == "true",
                              "bounds": node.attrib.get("bounds", "")})
        return {"status": "success", "node_count": sum(1 for _ in root.iter("node")),
                "described_nodes": nodes[:40]}
    except (OSError, subprocess.TimeoutExpired, ValueError, Exception) as exc:
        return {"status": "unavailable", "reason_type": type(exc).__name__}


def sample(out, label):
    record = {"name": label, "captured_utc": datetime.now(timezone.utc).isoformat()}
    proc = adb("shell", "pidof", PACKAGE)
    record["process_alive"] = proc.returncode == 0 and bool(decoded(proc))
    focus = adb("shell", "dumpsys", "activity", "activities", timeout=35)
    focus_lines = re.findall(r"(?:mResumedActivity|topResumedActivity|mFocusedApp)[^\n]*",
                             decoded(focus), re.IGNORECASE)
    record["foreground"] = any(PACKAGE in line for line in focus_lines)
    try:
        screen = adb("exec-out", "screencap", "-p", timeout=45)
        info = png_info(screen.stdout) if not screen.returncode else None
        if info:
            image_name = f"{label}.png"
            (out/image_name).write_bytes(screen.stdout)
            record["screenshot"] = image_name
            record["image_info"] = info
        else:
            record["screen_error"] = "not_a_valid_png"
    except (OSError, subprocess.TimeoutExpired):
        record["screen_error"] = "capture_failed"
    record["ui_tree"] = ui_dump()
    return record


def run_probe(apk, out, checkpoints, *, game_modified=False):
    out.mkdir(parents=True, exist_ok=True)
    report = {
        "scope": "clean_emulator_offline_first_screen_research",
        "source_apk_sha256_expected": (None if game_modified else "64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4"),
        "package": PACKAGE, "game_unmodified": not game_modified,
        "verified_offline_menu": False, "verified_offline_level": False,
        "verified_save": False, "status": "NOT_STARTED", "frames": [],
    }
    try:
        state = adb("get-state")
        if state.returncode or decoded(state) != "device":
            report["status"] = "BLOCKED_ADB"
            return report
        abis = decoded(adb("shell", "getprop", "ro.product.cpu.abilist"))
        bridge = decoded(adb("shell", "getprop", "ro.dalvik.vm.native.bridge"))
        report["device"] = {"abi_list": abis, "native_bridge": bridge}
        if not any(a in abis.split(",") for a in ("arm64-v8a", "armeabi-v7a")) and not bridge:
            report["status"] = "BLOCKED_ARM_ABI"
            return report
        install = adb("install", "--no-streaming", str(apk), timeout=420)
        report["install_success"] = install.returncode == 0 and b"Success" in install.stdout
        if not report["install_success"]:
            record = (install.stdout + install.stderr).decode("utf-8", "replace")
            token = re.search(r"INSTALL_FAILED_[A-Z_]+", record)
            report["install_failure_type"] = token.group(0) if token else "unknown"
            report["status"] = "BLOCKED_INSTALL"
            return report
        for args in (("shell", "cmd", "connectivity", "airplane-mode", "enable"),
                     ("shell", "svc", "wifi", "disable"),
                     ("shell", "svc", "data", "disable")):
            adb(*args)
        report["airplane_mode"] = decoded(adb("shell", "settings", "get", "global",
                                              "airplane_mode_on")) == "1"
        if not report["airplane_mode"]:
            report["status"] = "BLOCKED_AIRPLANE"
            return report
        launch = adb("shell", "monkey", "-p", PACKAGE,
                     "-c", "android.intent.category.LAUNCHER", "1", timeout=50)
        report["launched"] = launch.returncode == 0 and b"Events injected: 1" in (launch.stdout + launch.stderr)
        if not report["launched"]:
            report["status"] = "BLOCKED_LAUNCH"
            return report
        started = time.monotonic()
        for seconds in checkpoints:
            delay = seconds - (time.monotonic() - started)
            if delay > 0:
                time.sleep(delay)
            name = f"frame_{seconds:03d}s"
            frame = sample(out, name)
            frame["target_offset_seconds"] = seconds
            report["frames"].append(frame)
        report["status"] = "FRAMES_CAPTURED_NEED_VISUAL_REVIEW"
        report["note"] = "Screenshots and UI node descriptions must be inspected; no blind clicks or evidence of finished level"
        return report
    finally:
        (out/"ui_probe.json").write_text(
            json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
        )


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apk", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument("--checkpoints", default="5,30,75")
    args = parser.parse_args()
    points = [int(x) for x in args.checkpoints.split(",")]
    if not points or sorted(set(points)) != points or points[-1] > 180 or points[0] < 0:
        parser.error("checkpoints must be sorted unique seconds within 0..180")
    if not args.apk.is_file():
        parser.error("APK not present")
    print(json.dumps(run_probe(args.apk, args.out, points), ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
