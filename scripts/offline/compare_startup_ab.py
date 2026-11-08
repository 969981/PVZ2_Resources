#!/usr/bin/env python3
"""Compare two sanitized PVZ2 Android startup observations.

This tool does not patch the APK or claim an integrity guard was identified.
It finds observable divergence between an original-signed baseline and a
rebuilt/signed trial and explicitly separates inference from runtime proof.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path


def _event_types(doc: dict) -> set[str]:
    events = doc.get("frida_warning_events", [])
    if not isinstance(events, list):
        return set()
    return {x.get("type") for x in events if isinstance(x, dict)
            and isinstance(x.get("type"), str)}


def _alive(doc: dict) -> list[bool]:
    direct = doc.get("process_alive_at_checkpoints")
    if isinstance(direct, list):
        return [x for x in direct if type(x) is bool]
    frames = doc.get("after_consent", [])
    if isinstance(frames, list):
        return [x["process_alive"] for x in frames if isinstance(x, dict)
                and type(x.get("process_alive")) is bool]
    return []


def _warning(doc: dict) -> bool | None:
    values = doc.get("integrity_warning_at_checkpoints")
    if isinstance(values, list) and values:
        valid = [x for x in values if type(x) is bool]
        if valid:
            return any(valid)
    frames = doc.get("after_consent")
    if isinstance(frames, list) and frames:
        valid = [x.get("integrity_warning_seen") for x in frames
                 if isinstance(x, dict) and type(x.get("integrity_warning_seen")) is bool]
        if valid:
            return any(valid)
    events = _event_types(doc)
    if "INTEGRITY_ALERT_REQUEST" in events or "INTEGRITY_WARNING_STACK" in events:
        return True
    return None


def summarize(doc: dict) -> dict:
    if not isinstance(doc, dict):
        raise ValueError("Observation must be a JSON object")
    events = _event_types(doc)
    alive = _alive(doc)
    return {
        "checkpoints_observed": len(alive),
        "alive_at_all_observed_checkpoints": all(alive) if alive else None,
        "integrity_warning_observed": _warning(doc),
        "device_exit_observed": "GAME_EXIT_REQUEST" in events,
        "frida_attached": doc.get("frida_status") == "attached",
        "main_menu_verified": doc.get("main_menu_accepted") is True or
                              doc.get("native_main_menu_verified") is True,
    }


def compare(original: dict, rebuilt: dict) -> dict:
    a, b = summarize(original), summarize(rebuilt)
    warning_diverges = a["integrity_warning_observed"] is False and (
        b["integrity_warning_observed"] is True)
    survival_diverges = (
        a["alive_at_all_observed_checkpoints"] is True and
        b["alive_at_all_observed_checkpoints"] is False)
    return {
        "status": "OBSERVATIONAL_AB_COMPARISON_ONLY",
        "original": a,
        "rebuilt": b,
        "warning_diverges": warning_diverges,
        "survival_diverges": survival_diverges,
        "observable_startup_divergence": warning_diverges or survival_diverges,
        "specific_integrity_branch_verified": False,
        "iap_or_login_bypass_verified": False,
        "offline_playable_verified": False,
        "limitations": [
            "Different checkpoint times or instrumented builds are not controlled causality.",
            "An alert and process exit do not identify the ARM64 branch responsible.",
            "A running process does not prove that the main menu or saved game works.",
        ],
    }


def main() -> None:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--original", required=True, type=Path)
    p.add_argument("--rebuilt", required=True, type=Path)
    p.add_argument("--output", required=True, type=Path)
    args = p.parse_args()
    result = compare(json.loads(args.original.read_text(encoding="utf-8")),
                     json.loads(args.rebuilt.read_text(encoding="utf-8")))
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n",
                           encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False))


if __name__ == "__main__":
    main()
