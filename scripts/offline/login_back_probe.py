#!/usr/bin/env python3
"""One-shot, authorized CHN 4.2.8 offline login-screen BACK navigation test.

Fresh SHA-verified APK, clean Android 11 emulator, airplane mode on.
Accept privacy policy ONLY on confirmed actual screen (user-authorized),
wait for the previously seen TwGame login UI, send Android BACK once,
inspect and record resulting screens. NO login, fake tokens, purchase,
server calls or unseen UI clicks; this is not proof of offline play.
"""
from __future__ import annotations
import argparse
from datetime import datetime, timezone
import json
from pathlib import Path
import subprocess
import time

try:
    from scripts.offline.emulator_ui_capture import run_probe, sample, adb, decoded
    from scripts.offline.consent_probe import screen_is_privacy_visual, screen_is_privacy_policy, AGREE_X, AGREE_Y, logcat_summary
except ModuleNotFoundError:
    from emulator_ui_capture import run_probe, sample, adb, decoded
    from consent_probe import screen_is_privacy_visual, screen_is_privacy_policy, AGREE_X, AGREE_Y, logcat_summary


def login_screen_verified(frame: dict) -> bool:
    nodes = frame.get("ui_tree", {}).get("described_nodes", [])
    text = "\n".join(n.get("text", "")+" "+n.get("content_desc", "") for n in nodes)
    # Text ground truth: prior 600s/900s real first-launch screenshots.
    return frame.get("foreground", False) and (
        "请输入手机号" in text and
        ("请输入短信验证码" in text or "账号密码登录" in text)
    )


def run(apk: Path, out: Path, check_times: list[int]) -> dict:
    out.mkdir(parents=True, exist_ok=True)
    base = run_probe(apk, out, [30])
    report = {
        "source_apk": "PVZ2 CHN 4.2.8 SHA-verified by workflow",
        "scope": "privacy consent then Android BACK on confirmed TwGame login UI",
        "online_account_used": False,
        "network_disabled": True,
        "game_modified": False,
        "login_approved": False,
        "offline_gameplay_verified": False,
        "status": "NOT_STARTED", "frames": [],
        "created_utc": datetime.now(timezone.utc).isoformat(),
    }
    try:
        if base.get("status") != "FRAMES_CAPTURED_NEED_VISUAL_REVIEW":
            report["status"] = "BLOCKED_STARTUP"
            return report
        prev = base["frames"][-1]
        visual, score = screen_is_privacy_visual(prev, out)
        report["privacy_palette_hits"] = score
        if not (visual or screen_is_privacy_policy(prev)):
            report["status"] = "BLOCKED_POLICY_NOT_CONFIRMED"
            return report
        click = adb("shell", "input", "tap", str(AGREE_X), str(AGREE_Y), timeout=25)
        if click.returncode:
            report["status"] = "BLOCKED_CONSENT_COMMAND"
            return report
        report["privacy_consent_clicked"] = True
        started=time.monotonic()
        matched=False
        for t in check_times:
            remaining=t-(time.monotonic()-started)
            if remaining > 0:
                time.sleep(remaining)
            frame=sample(out, f"before_back_{t:04d}s")
            frame["offset_after_consent_target_seconds"]=t
            frame["twgame_login_ui_verified"]=login_screen_verified(frame)
            report["frames"].append(frame)
            if frame["twgame_login_ui_verified"]:
                matched=True
                break
        if not matched:
            report["status"]="BLOCKED_LOGIN_UI_NOT_VERIFIED"
            return report
        # Physical Android BACK navigation only: not a token or SDK bypass.
        back=adb("shell","input","keyevent","KEYCODE_BACK", timeout=20)
        report["back_key_sent"] = back.returncode == 0
        if back.returncode:
            report["status"]="BLOCKED_BACK_KEY"
            return report
        since=time.monotonic()
        for t in [8,35,90]:
            delta=t-(time.monotonic()-since)
            if delta>0:
                time.sleep(delta)
            frame=sample(out, f"after_back_{t:03d}s")
            frame["offset_after_back_target_seconds"]=t
            frame["twgame_login_ui_verified"]=login_screen_verified(frame)
            report["frames"].append(frame)
        report["airplane_mode_after_test"] = (
            decoded(adb("shell","settings","get","global","airplane_mode_on"))=="1"
        )
        report["logcat_summary"]=logcat_summary()
        report["status"]="LOGIN_BACK_SCREEN_CAPTURED_NEEDS_REVIEW"
        report["evidence_limit"]="App foreground does not equal playable game; screenshot review required"
        return report
    finally:
        (out/"login_back_report.json").write_text(
            json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--apk",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--times",default="480,600,720")
    args=p.parse_args()
    try:
        times=[int(t) for t in args.times.split(",")]
    except ValueError:
        p.error("Times must be comma-separated integers")
    if not times or times!=sorted(set(times)) or times[0]<240 or times[-1]>1000:
        p.error("Times must be unique ascending integers between 240 and 1000")
    if not args.apk.is_file():p.error("APK missing")
    print(json.dumps(run(args.apk,args.out,times),ensure_ascii=False,indent=2))


if __name__ == "__main__":
    main()
