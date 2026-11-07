#!/usr/bin/env python3
"""Evidence-only CHN 4.2.8 offline consent-path emulator test.

On a fresh throwaway Android 11 emulator (no accounts), confirm the original
privacy-policy screen before clicking its "同意" button. Then record actual
screens, UI text, foreground process and a bounded logcat indicator summary.
No hidden activity navigation, unverified tapping, purchases or real accounts.
The APP IS NOT PATCHED. This is not evidence of playable offline operation.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import json
from pathlib import Path
import re
import time

try:
    from scripts.offline.emulator_ui_capture import run_probe, sample, adb, decoded
except ModuleNotFoundError:
    from emulator_ui_capture import run_probe, sample, adb, decoded

PACKAGE = "com.popcap.pvz2cthdbk"
# Grounded by original real 2340x1080 screenshot, 2026-11-07:
# /docs/Offline/08-首屏隐私条款与离线门控.md.
AGREE_X, AGREE_Y = 1400, 920


def screen_is_privacy_policy(frame: dict) -> bool:
    tree = frame.get("ui_tree", {})
    if tree.get("status") != "success":
        return False
    return any("隐私政策" in node.get("text", "") or
               "隐私政策" in node.get("content_desc", "")
               for node in tree.get("described_nodes", []))


def screen_dimensions_ok(frame: dict) -> bool:
    info = frame.get("image_info", {})
    return info.get("width") == 2340 and info.get("height") == 1080


def logcat_summary() -> dict:
    try:
        raw = adb("logcat", "-d", "-v", "brief", "-t", "7000", timeout=50)
        if raw.returncode:
            return {"status": "unavailable"}
        text = decoded(raw)
        expressions = {
            "java_fatal": r"FATAL EXCEPTION",
            "native_signal": r"Fatal signal \d+",
            "missing_native_library": r"UnsatisfiedLinkError|dlopen failed",
            "dns_failure": r"UnknownHostException|EAI_NODATA",
            "connect_failure": r"ConnectException|ECONNREFUSED",
            "timeout": r"SocketTimeoutException|ETIMEDOUT",
            "ssl_failure": r"SSLHandshakeException|CERTIFICATE_VERIFY_FAILED",
            "activity_anr": r"\bANR in " + re.escape(PACKAGE),
        }
        return {"status": "ok", "sampled_lines": len(text.splitlines()),
                "counts": {k: len(re.findall(v, text, re.I))
                           for k, v in expressions.items()}}
    except (OSError, TimeoutError):
        return {"status": "unavailable"}


def run(apk: Path, out: Path, times: list[int]) -> dict:
    base = run_probe(apk, out, [30])
    report = {
        "scope": "fresh_disconnected_emulator_privacy_consent_then_noninteractive_observation",
        "source_apk": "4.2.8/1895 source SHA guarded in workflow",
        "clean_no_account_emulator": True, "game_modified": False,
        "consent_authorized_by_owner_for_this_test": True,
        "consent_clicked": False, "main_menu_verified": False,
        "level_verified": False, "save_verified": False,
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "preflight_status": base.get("status"),
        "offline_before_consent": base.get("airplane_mode"),
        "baseline": base.get("frames", []),
        "after_consent": [], "status": "NOT_STARTED",
    }
    try:
        if base.get("status") != "FRAMES_CAPTURED_NEED_VISUAL_REVIEW":
            report["status"] = "BLOCKED_PRE_CONSENT"
            return report
        pre = base["frames"][-1]
        if not screen_dimensions_ok(pre) or not screen_is_privacy_policy(pre):
            report["status"] = "BLOCKED_PRIVACY_SCREEN_NOT_CONFIRMED"
            return report
        report["status"] = "CONSENT_ACTION_PREPARED"
        response = adb("shell", "input", "tap", str(AGREE_X), str(AGREE_Y), timeout=20)
        report["consent_clicked"] = response.returncode == 0
        if response.returncode:
            report["status"] = "BLOCKED_CONSENT_TAP_COMMAND"
            return report
        start = time.monotonic()
        for seconds in times:
            delay = seconds - (time.monotonic() - start)
            if delay > 0:
                time.sleep(delay)
            frame = sample(out, f"after_consent_{seconds:03d}s")
            frame["offset_target_seconds"] = seconds
            frame["privacy_policy_visible"] = screen_is_privacy_policy(frame)
            report["after_consent"].append(frame)
            # No further interaction with unknown screens without visual inspection.
        report["logcat"] = logcat_summary()
        report["privacy_gate_still_visible"] = screen_is_privacy_policy(report["after_consent"][-1])
        report["offline_after_consent"] = (
            decoded(adb("shell", "settings", "get", "global", "airplane_mode_on")) == "1"
        )
        report["status"] = "CONSENT_PATH_SCREENS_CAPTURED_NEED_VISUAL_REVIEW"
        return report
    finally:
        out.mkdir(parents=True, exist_ok=True)
        (out / "consent_probe.json").write_text(
            json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
        )


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apk", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument("--checkpoints", default="5,25,60,120")
    args = parser.parse_args()
    if not args.apk.is_file():
        parser.error("Source APK not found")
    try:
        points = [int(s) for s in args.checkpoints.split(",")]
    except ValueError:
        parser.error("Checkpoints must be comma-separated integer seconds")
    if not points or points != sorted(set(points)) or not 0 < points[0] or points[-1] > 180:
        parser.error("Checkpoints must be unique ascending seconds within 1..180")
    print(json.dumps(run(args.apk, args.out, points), ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
