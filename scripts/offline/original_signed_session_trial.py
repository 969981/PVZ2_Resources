#!/usr/bin/env python3
"""Run read-only evidence capture around a local-only Frida JNI trial.

Uses the exact original signed APK, not rebuilt DEX/altered certificates.
Runtime instrumentation is explicit and confined to a disposable,
airplane-mode emulator. Never claims a valid online account or gameplay.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path

try:
    from scripts.offline.consent_probe import run, adb, decoded
except ModuleNotFoundError:
    from consent_probe import run, adb, decoded

APK_SHA = "64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4"
MARKERS = (
    "LOCAL_SESSION_HOOK_INSTALLED",
    "LOCAL_SESSION_HOOK_INSTALL_FAILED",
    "LOCAL_SESSION_RUN_ENTER",
    "LOCAL_SESSION_OWNER_MISSING",
    "LOCAL_SESSION_HANDLE_INVALID",
    "LOCAL_SESSION_INIT_START_RETURN",
    "LOCAL_SESSION_INIT_END_RETURN",
    "LOCAL_SESSION_LOGIN_START_RETURN",
    "LOCAL_SESSION_LOGIN_END_RETURN",
    "LOCAL_SESSION_NATIVE_CALL_FAILED",
)
POINTS = [5, 120, 420, 600]


def digest(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for block in iter(lambda: f.read(4 * 1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def count_trial_markers(logcat_text: str) -> dict[str, int]:
    lines = [s for s in logcat_text.splitlines() if "PVZ2LocalTrial:" in s]
    return {marker: sum(marker in x for x in lines) for marker in MARKERS}


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--apk", type=Path, required=True)
    p.add_argument("--out", type=Path, required=True)
    p.add_argument("--hook", type=Path, required=True)
    a = p.parse_args()
    if not a.hook.is_file() or digest(a.apk) != APK_SHA:
        p.error("Hook missing or original APK SHA mismatch")
    a.out.mkdir(parents=True, exist_ok=True)
    # Unlike the general short probe, this test intentionally spans the
    # original game's documented 600s first-run unpack/login window.
    result = run(a.apk, a.out, POINTS, build_kind="original", frida_script=a.hook)
    log = adb("logcat", "-d", "-v", "brief",
              "-s", "PVZ2LocalTrial:I", "*:S", timeout=60)
    log_counts = count_trial_markers(decoded(log) if log.returncode == 0 else "")
    runtime_events = result.get("frida_warning_events", [])
    direct_counts = {
        marker: sum(event.get("type") == "LOCAL_SESSION_TRACE" and
                    event.get("stage") == marker for event in runtime_events)
        for marker in MARKERS
    }
    counts = {key: max(log_counts[key], direct_counts[key]) for key in MARKERS}
    samples = [
        {key: event[key] for key in ("current_stage", "time_hint", "is_first_init")
         if key in event}
        for event in runtime_events if event.get("type") == "RESOURCE_LOADING_STAGE"
    ]
    report = {
        "status": "OBSERVATION_NOT_GAMEPLAY_VALIDATION",
        "source_apk_signature_untouched": True,
        "source_apk_sha256_verified": True,
        "frida_runtime_modified": True,
        "trial_offline_session_marker_not_online_credential": True,
        "observed_consent_probe_status": result.get("status"),
        "frida_status": result.get("frida_status"),
        "frida_diagnostics": result.get("frida_diagnostics", {}),
        "local_trial_markers": counts,
        "frida_direct_local_markers": direct_counts,
        "resource_stage_samples": samples[:35],
        "resource_stage_sample_count": len(samples),
        "process_alive_at_checkpoints": [x.get("process_alive") for x in result.get("after_consent", [])],
        "integrity_warning_at_checkpoints": [x.get("integrity_warning_seen") for x in result.get("after_consent", [])],
        "checkpoints_seconds": POINTS,
        "offline_mode_after": result.get("offline_after_consent"),
        "original_main_menu_verified": False,
        "first_level_completed": False,
        "actual_original_save_reloaded": False,
        "playable_offline_verified": False,
        "generated_utc": datetime.now(timezone.utc).isoformat(),
    }
    (a.out / "original_signed_trial.json").write_text(
        json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False))
    if (result.get("consent_clicked") is not True or
        result.get("frida_status") != "attached" or
        counts["LOCAL_SESSION_HOOK_INSTALLED"] != 1):
        raise SystemExit(3)


if __name__ == "__main__":
    main()
