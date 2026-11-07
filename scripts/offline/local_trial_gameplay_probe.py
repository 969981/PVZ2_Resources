#!/usr/bin/env python3
"""Install private test-signed APK in clean flight-mode Android AVD.

One genuine consent acceptance is authorized, no login/account/paid IAP,
no unknown coordinate taps. Manual/native-OpenGL screenshot review gates
menu and level actions. A built APK is never proof of offline playability.
"""
from __future__ import annotations
import argparse
from datetime import datetime, timezone
import json
from pathlib import Path
import re
import time

try:
    from scripts.offline.emulator_ui_capture import run_probe, sample, adb, decoded, PACKAGE
    from scripts.offline.consent_probe import (
        screen_is_privacy_visual, screen_is_privacy_policy,
        AGREE_X, AGREE_Y, logcat_summary
    )
except ModuleNotFoundError:
    from emulator_ui_capture import run_probe, sample, adb, decoded, PACKAGE
    from consent_probe import (
        screen_is_privacy_visual, screen_is_privacy_policy,
        AGREE_X, AGREE_Y, logcat_summary
    )

def described_text(frame:dict)->str:
    nodes=frame.get("ui_tree",{}).get("described_nodes",[])
    return "\n".join(node.get("text","")+" "+node.get("content_desc","") for node in nodes)

def classify(frame:dict)->str:
    if not frame.get("process_alive"): return "APP_NOT_RUNNING"
    if not frame.get("foreground"): return "APP_NOT_FOREGROUND"
    s=described_text(frame)
    if ("请输入手机号" in s and
        ("请输入短信验证码" in s or "账号密码登录" in s)):
        return "TWGAME_LOGIN_GATE"
    if any(marker in s for marker in ("正在解压文件","解压需要一定时间")):
        return "LOCAL_RESOURCE_UNPACKING"
    if any(marker in s for marker in ("开始游戏", "进入游戏", "冒险模式", "世界地图")):
        return "POSSIBLE_MENU_UI_TEXT_REQUIRES_SCREENSHOT"
    return "UNKNOWN_NATIVE_SCREEN_REQUIRES_VISUAL_REVIEW"

def app_storage_manifest(limit:int=100)->dict:
    # No personal save bytes are copied. Our clean AVD has no user accounts.
    # Root normally supported on Android google_apis emulator; if unavailable
    # simply report, never say this is a verified save.
    adb("root",timeout=35)
    cmd=(
        f"find /data/user/0/{PACKAGE}/files "
        "-type f -printf '%P|%s|%T@\\n' 2>/dev/null | "
        f"sort | head -n {limit}"
    )
    r=adb("shell","sh","-c",cmd,timeout=55)
    if r.returncode:
        return {"status":"NOT_ACCESSIBLE_OR_UNSUPPORTED"}
    lines=decoded(r).splitlines()
    clean=[]
    for line in lines:
        fields=line.split("|")
        if len(fields)!=3: continue
        if re.search(r"(?:token|account|auth|credential|password|cookie)",fields[0],re.I):
            continue
        clean.append({"relative_name":fields[0][:200],"bytes":fields[1],"mtime":fields[2]})
    return {"status":"FILES_ONLY_NOT_SAVE_SCHEMA","rows":clean[:limit]}

def run(apk:Path,out:Path,times:list[int])->dict:
    out.mkdir(parents=True,exist_ok=True)
    base=run_probe(apk,out,[30])
    result={
        "status":"NOT_STARTED",
        "utc":datetime.now(timezone.utc).isoformat(),
        "trial_modified_apk":True,
        "scope":"private disposable offline-only local session trial",
        "online_login_used":False,
        "emulator_airplane_mode":base.get("airplane_mode",False),
        "install_success":base.get("install_success",False),
        "launch_success":base.get("launched",False),
        "actual_main_menu_verified":False,
        "first_level_completed":False,
        "original_game_save_reloaded":False,
        "no_online_accounts_or_purchases":True,
        "frames":[],
    }
    try:
        if base.get("status") != "FRAMES_CAPTURED_NEED_VISUAL_REVIEW":
            result["status"]="BLOCKED_"+base.get("status","STARTUP")
            return result
        first=base["frames"][0]
        verified,pixels=screen_is_privacy_visual(first,out)
        result["privacy_pixels_matched"]=pixels
        if not (verified or screen_is_privacy_policy(first)):
            result["frames"].append(first)
            result["status"]="BLOCKED_UNVERIFIED_CONSENT_SCREEN"
            return result
        result["policy_consent_clicked"]=(adb("shell","input","tap",str(AGREE_X),str(AGREE_Y)).returncode==0)
        if not result["policy_consent_clicked"]:
            result["status"]="BLOCKED_POLICY_TAP"
            return result
        started=time.monotonic()
        for seconds in times:
            delay=seconds-(time.monotonic()-started)
            if delay>0:time.sleep(delay)
            frame=sample(out,f"trial_after_consent_{seconds:04d}s")
            frame["visual_classification"]=classify(frame)
            frame["target_offset_seconds"]=seconds
            result["frames"].append(frame)
            if not frame.get("process_alive"):
                result["status"]="GAME_PROCESS_EXITED"
                break
        result["airplane_mode_after"]=decoded(
            adb("shell","settings","get","global","airplane_mode_on")
        )=="1"
        result["logcat_errors"]=logcat_summary()
        result["storage_manifest_before_restart"]=app_storage_manifest()
        if result["status"]=="NOT_STARTED":
            result["status"]="SCREEN_CAPTURED_NEEDS_MANUAL_GAMEPLAY_REVIEW"
        if result["airplane_mode_after"] and result["frames"] and result["frames"][-1].get("process_alive"):
            result["force_stop_sent"]=adb("shell","am","force-stop",PACKAGE).returncode==0
            result["cold_relaunch_sent"]=(
                adb("shell","monkey","-p",PACKAGE,"-c",
                    "android.intent.category.LAUNCHER","1").returncode==0
            )
            time.sleep(95)
            frame=sample(out,"trial_cold_restart_0095s")
            frame["visual_classification"]=classify(frame)
            result["frames"].append(frame)
            result["storage_manifest_after_restart"]=app_storage_manifest()
        # Never declare native menu/gameplay/save from unverified OpenGL text.
        return result
    finally:
        (out/"local_trial_ui_qa.json").write_text(
            json.dumps(result,ensure_ascii=False,indent=2)+"\n",encoding="utf-8"
        )

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--apk",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--times",default="120,360,600")
    a=p.parse_args()
    t=[int(x) for x in a.times.split(",")]
    if not t or t!=sorted(set(t)) or t[0]<45 or t[-1]>900:
        p.error("Only sorted unique observation times 45..900 are permitted")
    if not a.apk.is_file():p.error("Patch APK missing")
    print(json.dumps(run(a.apk,a.out,t),ensure_ascii=False,indent=2))

if __name__=="__main__":
    main()
