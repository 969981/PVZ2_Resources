#!/usr/bin/env python3
"""Long-lived offline PVZ2 CHN 4.2.8 first-install extraction monitor.

Does not patch APK, bypass servers, create accounts, or click unknown screens.
User approved one-time privacy consent in a throwaway airplane-mode emulator.
Retains only timed screenshots, numeric disk usage and categorized errors.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import json
from pathlib import Path
import re
import subprocess
import time

try:
    from scripts.offline.emulator_ui_capture import run_probe, adb, decoded, png_info, ui_dump
    from scripts.offline.consent_probe import screen_is_privacy_policy, screen_is_privacy_visual, AGREE_X, AGREE_Y, logcat_summary
except ModuleNotFoundError:
    from emulator_ui_capture import run_probe, adb, decoded, png_info, ui_dump
    from consent_probe import screen_is_privacy_policy, screen_is_privacy_visual, AGREE_X, AGREE_Y, logcat_summary

PACKAGE = "com.popcap.pvz2cthdbk"
BAR_X0, BAR_X1, BAR_Y = 575, 1780, 920


def bar_progress_fraction(read_pixel) -> float | None:
    """RGB sample of *visible* green fill, not the overall 6-container progress."""
    green = []
    for x in range(BAR_X0, BAR_X1, 5):
        r, g, b = read_pixel((x, BAR_Y))
        if g > 150 and g > r * 1.4 and g > b * 1.4:
            green.append(x)
    if len(green) < 12 or min(green) > BAR_X0 + 45:
        return None
    return round((max(green) - BAR_X0) / (BAR_X1 - BAR_X0), 4)


def parse_disk_df(output: str) -> dict:
    """Best-effort numeric Android 'df -k /data'; no file contents."""
    for line in reversed(output.splitlines()):
        words = line.split()
        if len(words) >= 5 and all(re.fullmatch(r"\d+", v) for v in words[1:4]):
            return {"total_kib": int(words[1]), "used_kib": int(words[2]),
                    "available_kib": int(words[3])}
    return {"status": "unavailable"}


def directory_kib(path: str) -> int | None:
    try:
        r = adb("shell", "du", "-sk", path, timeout=25)
        if r.returncode:
            return None
        m = re.match(r"(\d+)", decoded(r))
        return int(m.group(1)) if m else None
    except (OSError, subprocess.TimeoutExpired):
        return None


def snapshot(out: Path, label: str, include_ui: bool = False) -> dict:
    frame = {"name": label, "utc": datetime.now(timezone.utc).isoformat()}
    process = adb("shell", "pidof", PACKAGE, timeout=20)
    frame["process_alive"] = process.returncode == 0 and bool(decoded(process))
    activity = adb("shell", "dumpsys", "activity", "activities", timeout=25)
    focus = re.findall(r"(?:mResumedActivity|topResumedActivity|mFocusedApp)[^\n]*",
                       decoded(activity), flags=re.I)
    frame["foreground"] = any(PACKAGE in line for line in focus)
    try:
        r = adb("exec-out", "screencap", "-p", timeout=40)
        info = png_info(r.stdout) if r.returncode == 0 else None
        if info:
            frame["screenshot"] = f"{label}.png"
            (out / frame["screenshot"]).write_bytes(r.stdout)
            frame["image_info"] = info
            # Numerical progress only when a known green extraction bar exists.
            try:
                from PIL import Image
                with Image.open(out / frame["screenshot"]) as image:
                    if image.size == (2340, 1080):
                        frame["green_bar_fraction"] = bar_progress_fraction(
                            image.convert("RGB").getpixel
                        )
            except (OSError, ValueError, ImportError):
                pass
        else:
            frame["screen_capture_status"] = "invalid_png"
    except (OSError, subprocess.TimeoutExpired):
        frame["screen_capture_status"] = "timeout_or_error"
    df = adb("shell", "df", "-k", "/data", timeout=20)
    frame["data_disk"] = parse_disk_df(decoded(df)) if not df.returncode else {"status": "unavailable"}
    frame["app_internal_kib"] = directory_kib("/data/user/0/" + PACKAGE)
    frame["app_external_kib"] = directory_kib("/sdcard/Android/data/" + PACKAGE)
    if include_ui:
        frame["ui_tree"] = ui_dump()
    return frame


def monitor(apk: Path, out: Path, checkpoints: list[int]) -> dict:
    base = run_probe(apk, out, [30])
    report = {
        "scope": "offline_first_install_resource_extraction_performance",
        "consent_authorized": True, "consent_clicked": False,
        "game_modified": False, "no_online_account": True,
        "offline_playability_verified": False, "level_verified": False,
        "save_verified": False, "status": "NOT_STARTED", "frames": [],
        "preflight": base.get("status"), "start_offline": base.get("airplane_mode"),
        "created_utc": datetime.now(timezone.utc).isoformat(),
    }
    try:
        if base.get("status") != "FRAMES_CAPTURED_NEED_VISUAL_REVIEW":
            report["status"] = "BLOCKED_PREFLIGHT"
            return report
        pre = base["frames"][-1]
        visual, points = screen_is_privacy_visual(pre, out)
        report["privacy_screen_palette_hits"] = points
        if not pre.get("foreground") or not (screen_is_privacy_policy(pre) or visual):
            report["status"] = "BLOCKED_PRIVACY_NOT_VERIFIED"
            return report
        result = adb("shell", "input", "tap", str(AGREE_X), str(AGREE_Y), timeout=20)
        report["consent_clicked"] = result.returncode == 0
        if result.returncode:
            report["status"] = "BLOCKED_CONSENT_TAP"
            return report
        start = time.monotonic()
        for t in checkpoints:
            delay = t - (time.monotonic() - start)
            if delay > 0:
                time.sleep(delay)
            frame = snapshot(out, f"extract_{t:04d}s", include_ui=(t == checkpoints[-1]))
            frame["target_offset_seconds"] = t
            report["frames"].append(frame)
            if not frame.get("process_alive"):
                report["status"] = "PROCESS_EXITED_DURING_EXTRACT"
                break
        else:
            report["status"] = "EXTRACTION_OBSERVATION_CAPTURED"
        report["end_offline"] = decoded(adb("shell", "settings", "get", "global",
                                            "airplane_mode_on")) == "1"
        report["logcat"] = logcat_summary()
        report["note"] = ("Green bar percentage is only current file bar, not total progress; "
                          "inspect screenshots before deciding menu/login/extraction state.")
        return report
    finally:
        out.mkdir(parents=True, exist_ok=True)
        (out / "extraction_monitor.json").write_text(
            json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
        )


def main() -> None:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--apk", type=Path, required=True)
    p.add_argument("--out", type=Path, required=True)
    p.add_argument("--checkpoints", default="120,300,600,900")
    args = p.parse_args()
    try:
        points = [int(s) for s in args.checkpoints.split(",")]
    except ValueError:
        p.error("Invalid checkpoints")
    if not points or points != sorted(set(points)) or points[0] < 1 or points[-1] > 1200:
        p.error("Checkpoints must be unique ascending integers 1..1200")
    if not args.apk.is_file():
        p.error("APK missing")
    print(json.dumps(monitor(args.apk, args.out, points), ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
