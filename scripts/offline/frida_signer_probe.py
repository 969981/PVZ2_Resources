#!/usr/bin/env python3
"""Isolated original-vs-resigned Android 11 Frida signing/exit observation.

Frida is read-only. Do not hook account/login payloads, mutate API return values,
patch functions or capture credentials/certificates. Real private APK bytes
remain on ephemeral runner and are never uploaded.
"""
from __future__ import annotations
import argparse
from collections import Counter
from datetime import datetime, timezone
import json
from pathlib import Path
import subprocess
import time
import sys

try:
    from scripts.offline.emulator_ui_capture import (
        run_probe, sample, adb, decoded, PACKAGE,
    )
    from scripts.offline.consent_probe import (
        screen_is_privacy_visual, screen_is_privacy_policy,
        screen_dimensions_ok, AGREE_X, AGREE_Y,
    )
except ModuleNotFoundError:
    from emulator_ui_capture import run_probe, sample, adb, decoded, PACKAGE
    from consent_probe import (screen_is_privacy_visual, screen_is_privacy_policy,
                               screen_dimensions_ok, AGREE_X, AGREE_Y)

PREFIX = "PVZ2_TRACE:"
SUPPORTED = {
    "SCRIPT_READY", "JAVA_READY",
    "native_exit", "native__exit", "native_abort", "native_raise",
    "native_kill", "native_tgkill",
    "java_System_exit", "java_Runtime_exit", "java_Runtime_halt",
    "java_Process_killProcess", "java_Activity_finish",
    "java_Activity_finishAffinity", "java_Signature_toByteArray",
    "java_MessageDigest_digest", "java_getPackageInfo",
}


def summarize_traces(path: Path) -> dict:
    """Whitelist only event categories. Avoid leaking CLI output and values."""
    data = path.read_text(encoding="utf-8", errors="replace") if path.exists() else ""
    counts: Counter[str] = Counter()
    for line in data.splitlines():
        if PREFIX not in line:
            continue
        kind = line.rsplit(PREFIX, 1)[-1].strip().split()[0]
        if kind in SUPPORTED or kind.startswith("hook_") and len(kind) < 90:
            counts[kind] += 1
    return {"event_counts": dict(sorted(counts.items())),
            "java_hook_ready": counts.get("JAVA_READY", 0) > 0,
            "script_loaded": counts.get("SCRIPT_READY", 0) > 0,
            "raw_trace_uploaded": False,
            "hook_semantics": "READ_ONLY_NOT_PROVEN_CAUSAL"}


def run(apk: Path, out: Path, agent: Path, times: list[int]) -> dict:
    out.mkdir(parents=True, exist_ok=True)
    result = {
        "status": "NOT_STARTED", "utc": datetime.now(timezone.utc).isoformat(),
        "package": PACKAGE, "instrumentation": "read_only_frida17_cli",
        "actual_menu_verified": False, "first_level_completed": False,
        "original_save_reloaded": False, "consent_clicked": False,
        "frames": [], "trace": {},
    }
    proc = None
    raw_log = out / "private_frida_stdout_not_for_upload.txt"
    log_fh = None
    try:
        baseline = run_probe(apk, out, [30])
        result["baseline_status"] = baseline.get("status")
        result["airplane_mode"] = baseline.get("airplane_mode", False)
        result["apk_installed"] = baseline.get("install_success", False)
        if baseline.get("status") != "FRAMES_CAPTURED_NEED_VISUAL_REVIEW":
            result["status"] = "BLOCKED_" + baseline.get("status", "BASELINE")
            return result
        f = baseline["frames"][-1]
        visual, matches = screen_is_privacy_visual(f, out)
        result["privacy_pixels_matched"] = matches
        if not screen_dimensions_ok(f) or not f.get("foreground") or not (
                visual or screen_is_privacy_policy(f)):
            result["status"] = "BLOCKED_UNVERIFIED_PRIVACY_SCREEN"
            return result
        pid = decoded(adb("shell", "pidof", PACKAGE))
        if not pid or not pid.split()[0].isdigit():
            result["status"] = "BLOCKED_MISSING_GAME_PID"
            return result
        ps = subprocess.run([str(Path(sys.executable).parent / "frida-ps"), "-U"], capture_output=True,
                            timeout=30, check=False)
        if ps.returncode:
            result["status"] = "BLOCKED_FRIDA_SERVER_NOT_AVAILABLE"
            return result
        log_fh = raw_log.open("w", encoding="utf-8")
        proc = subprocess.Popen(
            [str(Path(sys.executable).parent / "frida"), "-U", "-p", pid.split()[0], "-l", str(agent), "-q"],
            stdin=subprocess.PIPE, stdout=log_fh, stderr=subprocess.STDOUT,
            text=True,
        )
        # Attach must precede consent; otherwise the relevant exit is missed.
        ready = False
        for _ in range(18):
            time.sleep(1)
            if proc.poll() is not None:
                break
            log_fh.flush()
            if summarize_traces(raw_log)["java_hook_ready"]:
                ready = True
                break
        result["initial_trace"] = summarize_traces(raw_log)
        if not ready:
            result["status"] = "BLOCKED_FRIDA_JAVA_HOOK_NOT_READY"
            return result
        agreed = adb("shell", "input", "tap", str(AGREE_X), str(AGREE_Y), timeout=20)
        result["consent_clicked"] = agreed.returncode == 0
        if not result["consent_clicked"]:
            result["status"] = "BLOCKED_PRIVACY_TAP"
            return result
        start = time.monotonic()
        for t in times:
            delay = t - (time.monotonic() - start)
            if delay > 0:
                time.sleep(delay)
            frame = sample(out, f"frida_consent_{t:03d}s")
            result["frames"].append({
                "seconds_after_consent": t,
                "process_alive": frame.get("process_alive"),
                "foreground": frame.get("foreground"),
                "image": frame.get("screenshot"),
                "ui_text_unverified": True,
            })
            if not frame.get("process_alive"):
                result["status"] = "GAME_PROCESS_EXITED"
                break
        if result["status"] == "NOT_STARTED":
            result["status"] = "SURVIVED_OBSERVATION_GAMEPLAY_UNVERIFIED"
        result["airplane_mode_after"] = decoded(
            adb("shell", "settings", "get", "global", "airplane_mode_on")
        ) == "1"
        return result
    finally:
        if proc:
            try:
                proc.terminate()
                proc.wait(timeout=7)
            except (OSError, subprocess.TimeoutExpired):
                proc.kill()
                proc.wait(timeout=7)
        if log_fh:
            log_fh.flush()
            log_fh.close()
        result["trace"] = summarize_traces(raw_log)
        result["raw_log_discarded"] = raw_log.exists()
        raw_log.unlink(missing_ok=True)
        (out / "signer_runtime_trace_summary.json").write_text(
            json.dumps(result, ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8",
        )


def main() -> None:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--apk", type=Path, required=True)
    p.add_argument("--out", type=Path, required=True)
    p.add_argument("--agent", type=Path, required=True)
    p.add_argument("--times", default="10,30,60,120")
    a = p.parse_args()
    times = [int(x) for x in a.times.split(",")]
    if not times or times != sorted(set(times)) or times[0] < 5 or times[-1] > 180:
        p.error("Observation times must be sorted unique seconds in 5..180")
    if not a.apk.is_file() or not a.agent.is_file():
        p.error("APK or observer agent not present")
    print(json.dumps(run(a.apk, a.out, a.agent, times), ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
