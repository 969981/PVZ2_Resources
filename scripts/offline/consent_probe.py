#!/usr/bin/env python3
"""Evidence-only CHN 4.2.8 offline consent-path emulator test.

On a fresh throwaway Android 11 emulator (no accounts), confirm the original
privacy-policy screen before clicking its "同意" button. Then record actual
screens, UI text, foreground process and a bounded logcat indicator summary.
No hidden activity navigation, unverified tapping, purchases or real accounts.
The build kind is explicit: source APK vs temporary Smali trial. This is not
evidence of playable offline operation.
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
SDK_STAGES = frozenset((
    "INITIALIZE_REQUEST", "JNI_INIT_START", "JNI_INIT_END",
    "JNI_LOGIN_START", "JNI_LOGIN_END", "INIT_RUNNABLE",
    "INIT_CALLBACK", "LOGIN_CALLBACK", "SDK_INIT", "SDK_LOGIN",
))


def validated_sdk_lifecycle_event(payload: object) -> dict | None:
    """Whitelist non-sensitive timing and return codes from the passive probe.

    Raw login strings, tokens, identities, native pointers and purchase data
    are deliberately not inspected or serialized.
    """
    if not isinstance(payload, dict):
        return None
    kind = payload.get("type")
    if kind == "SDK_LIFECYCLE_READY":
        count = payload.get("installed_overloads")
        return ({"type": kind, "installed_overloads": count}
                if type(count) is int and 0 <= count <= 40 else None)
    if kind != "SDK_LIFECYCLE_EVENT":
        return None
    stage, phase, elapsed = (payload.get("stage"), payload.get("phase"),
                              payload.get("elapsed_ms"))
    if (type(stage) is not str or stage not in SDK_STAGES
            or type(phase) is not str or phase not in ("ENTER", "RETURN", "THROW")
            or type(elapsed) is not int or not 0 <= elapsed <= 3600000):
        return None
    result = {"type": kind, "stage": stage, "phase": phase,
              "elapsed_ms": elapsed}
    status = payload.get("status_code")
    if (stage in ("JNI_INIT_END", "JNI_LOGIN_END")
            and type(status) is int and -10 <= status <= 10000):
        result["status_code"] = status
    return result


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

# Verified on two independent real 2340x1080 CHN 4.2.8 privacy-policy
# frames: distinct green header, tan body, both green buttons.
POLICY_PALETTE = (
    (800, 188, (150, 205, 48)),
    (1100, 192, (149, 204, 48)),
    (1400, 192, (149, 204, 48)),
    (900, 300, (203, 186, 153)),
    (1500, 300, (203, 186, 153)),
    (820, 880, (82, 224, 82)),
    (1300, 880, (82, 224, 82)),
    (1600, 850, (239, 231, 198)),
)


def privacy_palette_matches(read_pixel, tolerance: int = 24) -> int:
    """Count reference privacy-dialog samples matching in all RGB channels."""
    return sum(
        all(abs(observed - expected) <= tolerance
            for observed, expected in zip(read_pixel((x, y)), rgb))
        for x, y, rgb in POLICY_PALETTE
    )


def screen_is_privacy_visual(frame: dict, images_dir: Path) -> tuple[bool, int]:
    """Verify real PNG colors; fail closed when Pillow/image unavailable."""
    if not screen_dimensions_ok(frame) or not frame.get("foreground"):
        return False, 0
    name = frame.get("screenshot")
    if not isinstance(name, str) or not name.startswith("frame_") or "/" in name:
        return False, 0
    try:
        from PIL import Image
        with Image.open(images_dir / name) as image:
            if image.size != (2340, 1080):
                return False, 0
            rgb = image.convert("RGB")
            hits = privacy_palette_matches(rgb.getpixel)
            return hits >= 7, hits
    except (OSError, ValueError, ImportError):
        return False, 0



def redact_evidence_line(line: str) -> str:
    """Bounded, scrubbed diagnostics from a disposable account-free emulator."""
    line = re.sub(r"https?://\S+", "<url>", line)
    line = re.sub(r"(?i)[\w.+-]+@[\w.-]+\.[a-z]{2,}", "<email>", line)
    line = re.sub(r"(?<![\w.])(?:[0-9]{1,3}\.){3}[0-9]{1,3}(?![\w.])", "<ip>", line)
    line = re.sub(r"(?i)\b(token|password|session|authorization)\s*[:=]\s*\S+",
                  r"\1=<redacted>", line)
    return line.strip()[:280]


def summarize_logcat_text(text: str) -> dict:
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
    lines = text.splitlines()
    indices = set()
    for i, line in enumerate(lines):
        if (("ANR in " + PACKAGE) in line or
                ("FATAL EXCEPTION" in line and PACKAGE in line) or
                ("Fatal signal" in line and PACKAGE in line) or
                ("am_anr" in line and PACKAGE in line) or
                ("Killing" in line and PACKAGE in line)):
            indices.update(range(i, min(i + 5, len(lines))))
    events = [redact_evidence_line(lines[i]) for i in sorted(indices)][:30]
    return {"status": "ok", "sampled_lines": len(lines),
            "counts": {k: len(re.findall(pattern, text, re.I))
                       for k, pattern in expressions.items()},
            "bounded_runtime_events": events}


def logcat_summary() -> dict:
    try:
        raw = adb("logcat", "-d", "-v", "brief", "-t", "7000", timeout=50)
        return (summarize_logcat_text(decoded(raw))
                if raw.returncode == 0 else {"status": "unavailable"})
    except (OSError, TimeoutError):
        return {"status": "unavailable"}


def exit_info_summary() -> dict:
    """Read Android 11's process exit records without exporting raw device logs."""
    try:
        raw = adb("shell", "dumpsys", "activity", "exit-info", PACKAGE, timeout=30)
        if raw.returncode:
            return {"status": "unavailable"}
        lines = decoded(raw).splitlines()
        matches = [redact_evidence_line(line) for line in lines
                   if re.search(r"ApplicationExitInfo|reason=|description=|status=", line, re.I)]
        return {"status": "ok", "relevant_lines": matches[:20]}
    except (OSError, TimeoutError):
        return {"status": "unavailable"}


def signature_trace_summary() -> dict:
    """Read only our observation tag; not the signature or its digest."""
    try:
        raw = adb("logcat", "-d", "-v", "brief",
                  "-s", "PVZ2SignatureTrace:I", "*:S", timeout=20)
        if raw.returncode:
            return {"status": "unavailable"}
        lines = decoded(raw).splitlines()
        return {"status": "ok", "enter": sum("GetSignature.enter" in line for line in lines),
                "exit": sum("GetSignature.exit" in line for line in lines),
                "sampled_lines": len(lines)}
    except (OSError, TimeoutError):
        return {"status": "unavailable"}


def android_runtime_abi() -> dict:
    """Read fixed public emulator ABI properties; never device identifiers."""
    props = {
        "primary_abi": "ro.product.cpu.abi",
        "abi_list": "ro.product.cpu.abilist",
        "native_bridge": "ro.dalvik.vm.native.bridge",
    }
    values = {}
    for name, prop in props.items():
        try:
            process = adb("shell", "getprop", prop, timeout=12)
            val = decoded(process).strip()[:160] if process.returncode == 0 else ""
            values[name] = (val if re.fullmatch(r"[A-Za-z0-9_.-]+(?:,[A-Za-z0-9_.-]+)*", val)
                            else "unavailable")
        except (OSError, TimeoutError):
            values[name] = "unavailable"
    return values


def summarize_native_bridge_maps(raw: str) -> dict:
    """Aggregate /proc/PID/maps without exporting addresses, paths or ELF data.

    Android Native Bridge can map ARM guest ELF segments as data even when
    Frida's host-only Process.enumerateModules() has no libSrc.so entry.
    """
    libsrc_count = 0
    translator_count = 0
    for line in raw.splitlines():
        entry = line.strip().split()
        if len(entry) < 6:
            continue
        basename = entry[-1].rsplit("/", 1)[-1].lower()
        if basename == "libsrc.so":
            libsrc_count += 1
        if basename.startswith("libndk_translation") or basename.startswith("libhoudini"):
            translator_count += 1
    return {
        "status": "OBSERVED",
        "libsrc_file_mapping_seen": libsrc_count > 0,
        "libsrc_segment_count": min(libsrc_count, 10000),
        "native_bridge_file_mapping_seen": translator_count > 0,
        "native_bridge_segment_count": min(translator_count, 10000),
        "no_absolute_addresses_exported": True,
    }


def android_native_bridge_maps() -> dict:
    """Check the target's file-backed mappings at one bounded checkpoint."""
    try:
        lookup = adb("shell", "pidof", PACKAGE, timeout=10)
        pid = pid_from_adb_output(decoded(lookup)) if lookup.returncode == 0 else None
        if pid is None:
            return {"status": "PROCESS_UNAVAILABLE"}
        response = adb("shell", "cat", f"/proc/{pid}/maps", timeout=15)
        if response.returncode:
            return {"status": "MAPS_UNAVAILABLE"}
        return summarize_native_bridge_maps(decoded(response))
    except (OSError, TimeoutError):
        return {"status": "MAPS_UNAVAILABLE"}


def pid_from_adb_output(raw: str) -> int | None:
    """Choose a numeric PID; never treat an APK package name as a Frida PID."""
    ids = raw.strip().split()
    if not ids or any(not entry.isdecimal() for entry in ids):
        return None
    first = int(ids[0])
    return first if first > 0 else None


def validated_native_module_probe(payload: object) -> dict:
    """Keep only architecture and aggregate module-presence flags.

    These are Frida *host* process modules. On an x86_64 Android Emulator,
    an ARM ELF under native-bridge translation may not appear as a host module.
    """
    if not isinstance(payload, dict):
        return {"status": "MISSING"}
    status = payload.get("status")
    if status not in ("OBSERVED", "ENUMERATION_UNAVAILABLE"):
        return {"status": "INVALID"}
    result = {"status": status}
    if status == "OBSERVED":
        arch = payload.get("process_arch")
        if arch in ("ia32", "x64", "arm", "arm64"):
            result["process_arch"] = arch
        for key in ("libsrc_mapped", "native_bridge_module_detected"):
            if type(payload.get(key)) is bool:
                result[key] = payload[key]
        count = payload.get("mapped_module_count")
        if type(count) is int and 0 <= count <= 20000:
            result["mapped_module_count"] = count
    return result


def validated_native_trace(payload: object) -> dict:
    """Retain bounded libSrc.so relative offsets, no absolute host pointers."""
    if not isinstance(payload, dict):
        return {"status": "MISSING", "frames": []}
    status = payload.get("status")
    if status not in ("OBSERVED", "OBSERVED_FUZZY", "LIBSRC_NOT_MAPPED",
                      "LIBSRC_FRAMES_UNAVAILABLE", "BACKTRACE_UNAVAILABLE"):
        return {"status": "INVALID", "frames": []}
    values = payload.get("frames", [])
    if not isinstance(values, list):
        return {"status": "INVALID", "frames": []}
    offsets = [value.lower() for value in values[:24]
               if isinstance(value, str) and re.fullmatch(r"0x[0-9a-fA-F]{1,16}", value)]
    result = {"status": status, "module": "libSrc.so", "frames": offsets}
    backtracer = payload.get("backtracer")
    if backtracer in ("ACCURATE", "FUZZY"):
        result["backtracer"] = backtracer
    result["module_probe"] = validated_native_module_probe(payload.get("module_probe"))
    return result


def attach_frida_warning_probe(js_path: Path, output: list[dict],
                               diagnostics: dict):
    """Attach to a verified live emulator PID before privacy consent.

    Enumerates only target process metadata. Never reads account or signature
    values; it keeps failure evidence if Frida cannot see the process.
    """
    import frida
    device = frida.get_usb_device(timeout=15)
    diagnostics["device_type"] = str(getattr(device, "type", "unknown"))
    diagnostics["device_id"] = str(getattr(device, "id", "unknown"))[:60]
    last_error = None
    for attempt in range(1, 5):
        result = adb("shell", "pidof", PACKAGE, timeout=10)
        pid = pid_from_adb_output(decoded(result)) if result.returncode == 0 else None
        diagnostics["adb_pid"] = pid
        diagnostics["attempts"] = attempt
        if pid is None:
            last_error = "GAME_PID_UNAVAILABLE"
            time.sleep(.5)
            continue
        try:
            processes = device.enumerate_processes()
            matched = [p for p in processes if p.pid == pid or
                       str(getattr(p, "name", "")).startswith(PACKAGE)]
            diagnostics["frida_target_processes"] = [
                {"pid": p.pid, "name": str(p.name)[:100]}
                for p in matched[:6]
            ]
        except Exception as exc:
            diagnostics["enumeration_error_type"] = type(exc).__name__
        try:
            session = device.attach(pid)
            diagnostics["status"] = "ATTACHED_BY_PID"
            diagnostics["attached_pid"] = pid
            script = session.create_script(js_path.read_text(encoding="utf-8"))
            def on_message(message, _data):
                payload = message.get("payload")
                if message.get("type") == "send" and isinstance(payload, dict):
                    typ = payload.get("type")
                    if typ in ("INTEGRITY_WARNING_STACK", "INTEGRITY_ALERT_REQUEST",
                               "GAME_EXIT_REQUEST", "TRACE_HOOKS_INSTALLED",
                               "TRACE_HOOK_ERROR", "LOCAL_SESSION_TRACE",
                               "RESOURCE_LOADING_STAGE", "SDK_LIFECYCLE_READY",
                               "SDK_LIFECYCLE_EVENT"):
                        record = {"type": typ, "source": payload.get("source")}
                        if typ == "TRACE_HOOKS_INSTALLED":
                            record["native_module_probe"] = validated_native_module_probe(
                                payload.get("native_module_probe"))
                        if typ in ("INTEGRITY_WARNING_STACK", "INTEGRITY_ALERT_REQUEST",
                                   "GAME_EXIT_REQUEST"):
                            frames = payload.get("frames", [])
                            record["frames"] = [redact_evidence_line(str(item))
                                                for item in frames[:24] if isinstance(item, str)]
                            record["native_trace"] = validated_native_trace(payload.get("native_trace"))
                        if typ == "INTEGRITY_ALERT_REQUEST":
                            record["exit_requested"] = payload.get("exit_requested") is True
                        if typ == "TRACE_HOOK_ERROR":
                            record["error_kind"] = payload.get("error_kind")
                        if typ == "LOCAL_SESSION_TRACE":
                            stage = payload.get("stage")
                            if isinstance(stage, str) and len(stage) <= 96 and stage.startswith("LOCAL_SESSION_"):
                                record["stage"] = stage
                        if typ == "RESOURCE_LOADING_STAGE":
                            for key in ("current_stage", "time_hint"):
                                value = payload.get(key)
                                if type(value) is int and -1 <= value <= 100000:
                                    record[key] = value
                            if type(payload.get("is_first_init")) is bool:
                                record["is_first_init"] = payload["is_first_init"]
                            source = payload.get("observation_source")
                            if source in ("static", "instance"):
                                record["observation_source"] = source
                        if typ in ("SDK_LIFECYCLE_READY", "SDK_LIFECYCLE_EVENT"):
                            safe_event = validated_sdk_lifecycle_event(payload)
                            if safe_event is None:
                                return
                            record = safe_event
                        output.append(record)
                elif message.get("type") == "error":
                    output.append({"type": "FRIDA_SCRIPT_ERROR",
                                   "description": "script_load_or_runtime"})
            script.on("message", on_message)
            try:
                script.load()
            except Exception:
                session.detach()
                raise
            return session, script
        except Exception as exc:
            last_error = type(exc).__name__
            diagnostics["attach_error_type"] = last_error
            time.sleep(.5)
    diagnostics["status"] = "ATTACH_FAILED"
    raise RuntimeError("Frida PID attach failed: " + str(last_error))


def classify_runtime(frames: list[dict], logcat: dict,
                     events: list[dict] | None = None) -> str:
    # Frida observes the alert request before it reaches the UI, so its
    # bounded positive events take precedence over a missed screen sample.
    if isinstance(events, list) and any(
        isinstance(event, dict) and event.get("type") in (
            "INTEGRITY_ALERT_REQUEST", "INTEGRITY_WARNING_STACK")
        for event in events
    ):
        return "FAIL_INTEGRITY_WARNING"
    if any(frame.get("integrity_warning_seen") for frame in frames):
        return "FAIL_INTEGRITY_WARNING"
    if any(frame.get("anr_dialog_seen") for frame in frames) or (
            logcat.get("counts", {}).get("activity_anr", 0) > 0):
        return "FAIL_ANDROID_ANR"
    if any(frame.get("process_alive") is False for frame in frames):
        return "FAIL_GAME_PROCESS_EXITED"
    return "RUNTIME_OBSERVED_GAMEPLAY_NOT_VERIFIED"


def run(apk: Path, out: Path, times: list[int], *, build_kind: str = 'original', frida_script: Path | None = None) -> dict:
    if build_kind not in ('original', 'smali-local-trial', 'direct-resigned'):
        raise ValueError('Unsupported build kind')
    base = run_probe(apk, out, [30], game_modified=build_kind != 'original')
    report = {
        "scope": "fresh_disconnected_emulator_privacy_consent_then_noninteractive_observation",
        "source_apk": "4.2.8/1895 source SHA guarded in workflow",
        "clean_no_account_emulator": True, "game_modified": build_kind != "original",
        "build_kind": build_kind,
        "consent_authorized_by_owner_for_this_test": True,
        "consent_clicked": False, "main_menu_verified": False,
        "level_verified": False, "save_verified": False,
        "created_utc": datetime.now(timezone.utc).isoformat(),
        "android_runtime_abi": android_runtime_abi(),
        "preflight_status": base.get("status"),
        "offline_before_consent": base.get("airplane_mode"),
        "baseline": base.get("frames", []),
        "after_consent": [], "status": "NOT_STARTED",
    }
    frida_session = None
    frida_script_instance = None
    frida_records = []
    frida_diagnostics = {}
    try:
        if base.get("status") != "FRAMES_CAPTURED_NEED_VISUAL_REVIEW":
            report["status"] = "BLOCKED_PRE_CONSENT"
            return report
        pre = base["frames"][-1]
        ui_verified = screen_is_privacy_policy(pre)
        visual_verified, pixel_matches = screen_is_privacy_visual(pre, out)
        report["privacy_gate_evidence"] = {
            "uiautomator_policy_text": ui_verified,
            "verified_native_screen_palette": visual_verified,
            "matched_reference_colors": pixel_matches,
            "reference_color_count": len(POLICY_PALETTE),
        }
        if not screen_dimensions_ok(pre) or not pre.get("foreground") or not (
                ui_verified or visual_verified):
            report["status"] = "BLOCKED_PRIVACY_SCREEN_NOT_CONFIRMED"
            return report
        report["status"] = "CONSENT_ACTION_PREPARED"
        if frida_script is not None:
            try:
                frida_session, frida_script_instance = attach_frida_warning_probe(frida_script, frida_records, frida_diagnostics)
                report["frida_status"] = "attached"
            except Exception as exc:
                report["frida_status"] = "unavailable"
                report["frida_error_type"] = type(exc).__name__
            report["frida_diagnostics"] = frida_diagnostics
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
            frame["signature_trace"] = signature_trace_summary()
            frame["native_bridge_maps"] = android_native_bridge_maps()
            frame["privacy_policy_visible"] = screen_is_privacy_policy(frame)
            frame["integrity_warning_seen"] = any(
                "盗版游戏" in (node.get("text", "") + node.get("content_desc", "")) or
                "请使用正版" in (node.get("text", "") + node.get("content_desc", ""))
                for node in frame.get("ui_tree", {}).get("described_nodes", [])
            )
            frame["anr_dialog_seen"] = any(
                "isn't responding" in (node.get("text", "") + node.get("content_desc", "")) or
                "无响应" in (node.get("text", "") + node.get("content_desc", ""))
                for node in frame.get("ui_tree", {}).get("described_nodes", [])
            )
            report["after_consent"].append(frame)
            # No further interaction with unknown screens without visual inspection.
        report["logcat"] = logcat_summary()
        report["android_exit_info"] = exit_info_summary()
        report["signature_trace"] = signature_trace_summary()
        report["frida_warning_events"] = frida_records
        report["frida_diagnostics"] = frida_diagnostics
        report["privacy_gate_still_visible"] = screen_is_privacy_policy(report["after_consent"][-1])
        report["offline_after_consent"] = (
            decoded(adb("shell", "settings", "get", "global", "airplane_mode_on")) == "1"
        )
        report["status"] = classify_runtime(
            report["after_consent"], report["logcat"], frida_records)
        return report
    finally:
        if frida_session is not None:
            try:
                frida_session.detach()
            except Exception:
                pass
        report["frida_warning_events"] = frida_records
        out.mkdir(parents=True, exist_ok=True)
        (out / "consent_probe.json").write_text(
            json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
        )


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--apk", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument("--checkpoints", default="5,25,60,120")
    parser.add_argument("--frida-script", type=Path,
                        help="optional read-only Frida dialog stack probe")
    parser.add_argument("--build-kind", choices=("original", "smali-local-trial", "direct-resigned"),
                        default="original")
    args = parser.parse_args()
    if not args.apk.is_file():
        parser.error("Source APK not found")
    try:
        points = [int(s) for s in args.checkpoints.split(",")]
    except ValueError:
        parser.error("Checkpoints must be comma-separated integer seconds")
    if not points or points != sorted(set(points)) or not 0 < points[0] or points[-1] > 180:
        parser.error("Checkpoints must be unique ascending seconds within 1..180")
    print(json.dumps(run(args.apk, args.out, points, build_kind=args.build_kind, frida_script=args.frida_script), ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
