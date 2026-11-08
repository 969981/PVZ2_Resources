#!/usr/bin/env python3
"""Read-only index of PVZ2 CHN 4.2.8 TWPurchase Smali call relationships.

This does not patch payment verification, simulate real purchases, or alter APKs.
Only method names, owners and invocation names appear in the JSON report.
"""
from __future__ import annotations
import argparse
import json
from pathlib import Path
import re

METHODS = {
    "RequestPay", "RequestPaySub", "RequestOrderSub", "RequestValidationPay",
    "QueryOrder", "Native_SDKQueryOrder", "Consume", "CheckRedeemOrders",
    "GetRedeemOrders", "FirePaymentComplete",
    "FireValidationPaymentComplete",
}
TW_OWNER = "Lcom/popcap/pvz2cthddev/TWPurchase;"
SDK_OWNER = "Lcom/talkweb/twOfflineSdk/TwOfflineSDK;"
HEADER = re.compile(r"(?m)^\\.method\\s+([^\\n]+)$")
BLOCK = re.compile(r"(?ms)^\\.method\\s+([^\\n]+)\\n(.*?)^\\.end method")
INVOKE = re.compile(r"(?m)^\\s*invoke-[^\\n]*?,\\s*(L[^;]+;)->([A-Za-z0-9_$<>]+)\\(")


def parse_methods(smali: str) -> list[dict]:
    records = []
    for header, body in BLOCK.findall(smali):
        name_match = re.search(r"([A-Za-z0-9_$<>]+)\\(", header)
        if name_match is None:
            continue
        name = name_match.group(1)
        if name not in METHODS:
            continue
        calls = [
            {"owner": owner, "method": method}
            for owner, method in INVOKE.findall(body)
            if owner in (TW_OWNER, SDK_OWNER)
        ]
        records.append({
            "name": name,
            "native": bool(re.search(r"\\bnative\\b", header)),
            "sdk_calls": sorted({x["method"] for x in calls if x["owner"] == SDK_OWNER}),
            "local_calls": sorted({x["method"] for x in calls if x["owner"] == TW_OWNER}),
        })
    return records


def audit(smali_root: Path) -> dict:
    candidates = list(smali_root.glob("smali*/com/popcap/pvz2cthddev/TWPurchase.smali"))
    if len(candidates) != 1:
        raise ValueError(f"Expected exactly one TWPurchase.smali, got {len(candidates)}")
    parent = candidates[0]
    methods = parse_methods(parent.read_text(encoding="utf-8"))
    seen_names = {m["name"] for m in methods}
    if not {"RequestPay", "FirePaymentComplete", "FireValidationPaymentComplete"} <= seen_names:
        raise ValueError("Missing required known purchase flow methods")
    inner_classes = sorted(parent.parent.glob("TWPurchase$*.smali"))
    sdk_edges = set()
    for p in [parent, *inner_classes]:
        for owner, method in INVOKE.findall(p.read_text(encoding="utf-8")):
            if owner == SDK_OWNER:
                sdk_edges.add(method)
    return {
        "status": "READ_ONLY_STATIC_PAYMENT_PATH_INDEX",
        "source_class": "TWPurchase",
        "related_inner_class_count": len(inner_classes),
        "method_contracts": methods,
        "sdk_methods_called_by_twpurchase_family": sorted(sdk_edges),
        "native_payment_result_methods": sorted(
            m["name"] for m in methods
            if m["native"] and m["name"].startswith("Fire")
        ),
        "game_apk_modified": False,
        "payment_validation_modified": False,
        "all_payment_paths_exhaustively_proven": False,
        "native_callback_status_codes_verified": False,
        "real_purchase_or_entitlement_tested": False,
        "gameplay_verified": False,
    }


def main() -> None:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--smali-root", type=Path, required=True)
    p.add_argument("--output", type=Path, required=True)
    args = p.parse_args()
    report = audit(args.smali_root)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({
        "status": report["status"],
        "known_methods": len(report["method_contracts"]),
        "related_inner_classes": report["related_inner_class_count"],
        "sdk_methods": report["sdk_methods_called_by_twpurchase_family"],
        "gameplay_verified": False,
    }))


if __name__ == "__main__":
    main()
