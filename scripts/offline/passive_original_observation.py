#!/usr/bin/env python3
"""Unmodified-signature, no-gameplay-hook baseline on a disconnected emulator.

Records Frida passive stage telemetry and snapshots. Does not claim that
a resource stage number is a percentage or that a live process is playable.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import json
from pathlib import Path

try:
    from scripts.offline.consent_probe import run
    from scripts.offline.original_signed_session_trial import digest, APK_SHA
except ModuleNotFoundError:
    from consent_probe import run
    from original_signed_session_trial import digest, APK_SHA

POINTS = [5, 120, 420, 600]


def summarize(events: list[dict]) -> dict:
    """Summarize only whitelisted numeric resource fields, not credentials."""
    samples = []
    hook_loaded = False
    errors = []
    for event in events:
        if not isinstance(event, dict):
            continue
        kind = event.get("type")
        if kind == "TRACE_HOOKS_INSTALLED":
            hook_loaded = True
        elif kind == "TRACE_HOOK_ERROR":
            errors.append({
                "source": str(event.get("source", ""))[:80],
                "error_kind": str(event.get("error_kind", ""))[:80],
            })
        elif kind == "RESOURCE_LOADING_STAGE":
            record = {}
            for key in ("current_stage", "time_hint"):
                val = event.get(key)
                if type(val) is int and -1 <= val <= 100000:
                    record[key] = val
            if "is_first_init" in event and type(event["is_first_init"]) is bool:
                record["is_first_init"] = event["is_first_init"]
            if "current_stage" in record or "time_hint" in record:
                samples.append(record)
    stages = [x["current_stage"] for x in samples if "current_stage" in x]
    return {
        "frida_script_loaded": hook_loaded,
        "numeric_stage_sample_count": len(samples),
        "distinct_stage_values": sorted(set(stages))[:30],
        "stage_changed_in_observation": len(set(stages)) > 1,
        "stage_field_observed": bool(stages),
        "resource_field_errors": errors[:10],
        "resource_stage_samples": samples[:40],
    }


def main() -> None:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--apk", required=True, type=Path)
    p.add_argument("--out", required=True, type=Path)
    p.add_argument("--hook", required=True, type=Path)
    args = p.parse_args()
    if not args.hook.is_file() or not args.apk.is_file() or digest(args.apk) != APK_SHA:
        p.error("Expected a readable observer and exact original-signed APK SHA")
    args.out.mkdir(parents=True, exist_ok=True)
    observed = run(args.apk, args.out, POINTS, build_kind="original",
                   frida_script=args.hook)
    telemetry = summarize(observed.get("frida_warning_events", []))
    result = {
        "status": "PASSIVE_CONTROL_NOT_GAMEPLAY_VALIDATION",
        "experiment_mode": "passive-observer",
        "source_apk_signature_untouched": True,
        "frida_native_login_or_java_method_overrides": False,
        "frida_status": observed.get("frida_status"),
        "frida_diagnostics": observed.get("frida_diagnostics", {}),
        "consent_clicked": observed.get("consent_clicked") is True,
        "checkpoints_seconds": POINTS,
        "process_alive_at_checkpoints": [
            x.get("process_alive") for x in observed.get("after_consent", [])
        ],
        "integrity_warning_at_checkpoints": [
            x.get("integrity_warning_seen") for x in observed.get("after_consent", [])
        ],
        "offline_mode_after": observed.get("offline_after_consent"),
        "observer": telemetry,
        "local_trial_markers": {},
        "main_menu_verified": False,
        "first_level_completed": False,
        "original_save_reloaded": False,
        "offline_playable_verified": False,
        "generated_utc": datetime.now(timezone.utc).isoformat(),
    }
    (args.out / "original_signed_trial.json").write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    print(json.dumps(result, ensure_ascii=False))
    if (not result["consent_clicked"] or result["frida_status"] != "attached"
            or not telemetry["frida_script_loaded"]):
        raise SystemExit(3)


if __name__ == "__main__":
    main()
