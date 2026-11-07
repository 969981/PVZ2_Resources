#!/usr/bin/env python3
"""Isolated CHN 4.2.8 Android emulator privacy refusal path (never consent).

Only performs 'Reject' on the fresh-install privacy prompt after confirming
its text using UIAutomator. The original APK is never patched or redistributed.
No accounts, store, purchases, or online services are used.
"""
import argparse
from datetime import datetime, timezone
import json
from pathlib import Path
import time

from emulator_ui_capture import run_probe, sample, adb


def privacy_gate_present(frame):
    ui=frame.get("ui_tree",{})
    if ui.get("status")!="success":
        return False
    return any("隐私政策" in (n.get("text","")+n.get("content_desc",""))
               for n in ui.get("described_nodes",[]))


def probe(apk,out):
    report=run_probe(apk,out,[5,30])
    result={"source":"CHN 4.2.8 real emulator",
            "scope":"first-run privacy refusal only",
            "privacy_consent_granted":False,
            "APK_modified":False, "offline_playability_verified":False,
            "captured_utc":datetime.now(timezone.utc).isoformat(),
            "prior_status":report.get("status"),"prior_frames":report.get("frames",[]),
            "status":"NOT_STARTED","post_frames":[]}
    try:
        if report.get("status")!="FRAMES_CAPTURED_NEED_VISUAL_REVIEW":
            result["status"]="BLOCKED_FIRST_SCREEN_CAPTURE"
            return result
        if not privacy_gate_present(report["frames"][-1]):
            result["status"]="BLOCKED_PRIVACY_GATE_NOT_CONFIRMED"
            return result
        # Exact 2340x1080 screen coordinates calibrated against the first
        # SHA-verified Android 11 emulator screenshot (frame_030s.png).
        press=adb("shell","input","tap","940","900",timeout=20)
        result["decline_tap_sent"]=press.returncode==0
        if press.returncode:
            result["status"]="BLOCKED_TAP"
            return result
        time.sleep(7)
        first=sample(out,"post_reject_007s")
        result["post_frames"].append(first)
        time.sleep(20)
        second=sample(out,"post_reject_027s")
        result["post_frames"].append(second)
        result["privacy_gate_still_visible"]=privacy_gate_present(second)
        result["screen_changed_from_privacy"]=(
            first.get("image_info",{}).get("sha256") !=
            report["frames"][-1].get("image_info",{}).get("sha256")
        )
        result["status"]="REFUSAL_PATH_OBSERVED_NEED_VISUAL_REVIEW"
        return result
    finally:
        (out/"refusal_probe.json").write_text(
            json.dumps(result,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--apk",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    args=p.parse_args()
    if not args.apk.is_file():p.error("APK missing")
    print(json.dumps(probe(args.apk,args.out),ensure_ascii=False,indent=2))


if __name__=="__main__":
    main()
