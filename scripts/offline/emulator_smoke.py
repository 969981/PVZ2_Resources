#!/usr/bin/env python3
"""Run a privacy-safe, read-only PVZ2 ARM-APK emulator smoke check.

Only sanitized JSON is persisted. Diagnostic exit 0 never implies offline playability.
"""
import argparse
from datetime import datetime, timezone
import json
from pathlib import Path
import re
import subprocess
import time

SOURCE_ABIS=("arm64-v8a","armeabi-v7a")
PACKAGE="com.popcap.pvz2cthdbk"

def adb(*args, timeout=35):
    return subprocess.run(["adb",*args],capture_output=True,text=True,errors="replace",timeout=timeout)

def prop(name):
    r=adb("shell","getprop",name)
    return r.stdout.strip() if not r.returncode else ""

def abi_decision(abilist,bridge):
    options=abilist.split(",")
    match=next((a for a in SOURCE_ABIS if a in options),None)
    if match: return "native",match
    if bridge and bridge.strip().lower() not in ("0","false","none","null"):
        return "bridge_candidate",bridge.strip()
    return "unsupported",""

def safe_failure(s):
    match=re.search(r"INSTALL_FAILED_[A-Z_0-9]+",s)
    if match: return match.group()
    if "No space left on device" in s: return "DISK_FULL"
    return "NONZERO_EXIT"

def observe(apk,out,seconds=25):
    out.mkdir(parents=True,exist_ok=True)
    report=dict(status="NOT_STARTED",offline_playable=False,source_game_modified=False,
                captured_utc=datetime.now(timezone.utc).isoformat(),
                package=PACKAGE,expected_source_abis=list(SOURCE_ABIS))
    try:
        device=adb("get-state")
        if device.returncode or device.stdout.strip()!="device":
            report["status"]="BLOCKED_ADB"
            return report
        dev={name:prop(name) for name in ("ro.build.version.sdk","ro.product.cpu.abilist","ro.dalvik.vm.native.bridge","ro.product.model")}
        report["emulator"]=dev
        kind,matched=abi_decision(dev["ro.product.cpu.abilist"],dev["ro.dalvik.vm.native.bridge"])
        report["abi_detection"]={"mode":kind,"value":matched}
        if kind=="unsupported":
            report["status"]="BLOCKED_NATIVE_ABI"
            return report
        try:
            started=time.monotonic()
            installed=adb("install","--no-streaming",str(apk),timeout=420)
            report["install_seconds"]=round(time.monotonic()-started,1)
        except subprocess.TimeoutExpired:
            report["status"]="BLOCKED_INSTALL_TIMEOUT"
            return report
        if installed.returncode or "Success" not in installed.stdout:
            report["status"]="BLOCKED_INSTALL_ERROR"
            report["error_type"]=safe_failure(installed.stdout+" "+installed.stderr)
            return report
        version=adb("shell","dumpsys","package",PACKAGE)
        code=re.search(r"versionCode=(\d+)",version.stdout)
        name=re.search(r"versionName=([^\s]+)",version.stdout)
        report["installed_version_code"]=code.group(1) if code else None
        report["installed_version_name"]=name.group(1) if name else None
        report["radio_commands"]={}
        for label,args in (
            ("airplane",("shell","cmd","connectivity","airplane-mode","enable")),
            ("wifi",("shell","svc","wifi","disable")),
            ("mobile",("shell","svc","data","disable"))
        ):
            report["radio_commands"][label]=adb(*args).returncode
        airplane=adb("shell","settings","get","global","airplane_mode_on").stdout.strip()
        report["airplane_mode_verified"]=airplane=="1"
        if airplane!="1":
            report["status"]="BLOCKED_AIRPLANE_MODE"
            return report
        adb("logcat","-c")
        launch=adb("shell","monkey","-p",PACKAGE,"-c","android.intent.category.LAUNCHER","1")
        report["launch_event_injected"]="Events injected: 1" in (launch.stdout+launch.stderr)
        if launch.returncode or not report["launch_event_injected"]:
            report["status"]="BLOCKED_LAUNCH"
            return report
        time.sleep(seconds)
        process=adb("shell","pidof",PACKAGE)
        report["process_alive"]=bool(process.stdout.strip()) and not process.returncode
        log=adb("logcat","-d","-v","brief","-t","5000",timeout=45)
        indicators={
            "java_fatal":r"\bFATAL EXCEPTION\b",
            "native_crash":r"\bFatal signal \d+\b",
            "native_linker":r"(?:dlopen failed|UnsatisfiedLinkError)",
            "network_exception":r"(?:UnknownHostException|ConnectException|SocketTimeoutException)"
        }
        report["logcat_indicators"]={k:len(re.findall(v,log.stdout,re.I)) for k,v in indicators.items()} if not log.returncode else {}
        report["status"]="PROCESS_ALIVE_UI_UNVERIFIED" if report["process_alive"] else "PROCESS_NOT_ALIVE"
        return report
    finally:
        (out/"emulator_smoke.json").write_text(json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")

def main():
    p=argparse.ArgumentParser()
    p.add_argument("--apk",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--observe-seconds",type=int,default=25)
    args=p.parse_args()
    if not args.apk.is_file(): p.error("Missing APK")
    if not 0<=args.observe_seconds<=180: p.error("Invalid observe seconds")
    print(json.dumps(observe(args.apk,args.out,args.observe_seconds),ensure_ascii=False,indent=2))

if __name__=="__main__":
    main()
