#!/usr/bin/env python3
"""Test-only, in-memory purchase callback simulator.

This fixture is intentionally independent of the proprietary PVZ2 APK, SDK,
payment providers, signing, and native gameplay entitlements. It MUST NOT be
used as a store receipt, server authentication, or a game unlock mechanism.
"""
from __future__ import annotations

import argparse
from dataclasses import asdict, dataclass
import json
from typing import Callable

TEST_PRODUCT_PREFIX = "test.pvz2."


@dataclass(frozen=True)
class MockPurchaseResult:
    request_id: str
    product_id: str
    status: str = "MOCK_SUCCESS"
    mode: str = "offline_unit_test"
    verified_store_transaction: bool = False
    receipt: None = None
    entitlement_granted: bool = False


class OfflineMockBilling:
    """Deterministic success callbacks for synthetic test products only."""

    def __init__(
        self, *, test_mode: bool,
        on_result: Callable[[MockPurchaseResult], None] | None = None
    ) -> None:
        if test_mode is not True:
            raise ValueError("Mock billing requires explicit test_mode=True")
        self._on_result = on_result
        self._results: dict[str, MockPurchaseResult] = {}

    def purchase(self, *, request_id: str, product_id: str) -> MockPurchaseResult:
        if not request_id or not isinstance(request_id, str):
            raise ValueError("A nonempty synthetic request_id is required")
        if (not isinstance(product_id, str)
                or not product_id.startswith(TEST_PRODUCT_PREFIX)
                or len(product_id) <= len(TEST_PRODUCT_PREFIX)):
            raise ValueError("Only synthetic test.pvz2.* identifiers are permitted")
        existing = self._results.get(request_id)
        if existing is not None:
            if existing.product_id != product_id:
                raise ValueError("A request_id cannot be reused for another item")
            return existing
        event = MockPurchaseResult(request_id=request_id, product_id=product_id)
        self._results[request_id] = event
        if self._on_result is not None:
            self._on_result(event)
        return event

    @property
    def results(self) -> tuple[MockPurchaseResult, ...]:
        return tuple(self._results.values())


def make_report() -> dict:
    events: list[MockPurchaseResult] = []
    mock = OfflineMockBilling(test_mode=True, on_result=events.append)
    for index, product in enumerate(("test.pvz2.plant", "test.pvz2.coins", "test.pvz2.powerup"), 1):
        mock.purchase(request_id=f"synthetic-{index}", product_id=product)
    return {
        "scope": "synthetic_purchase_callback_unit_test_only",
        "original_game_apk_modified": False,
        "payment_service_contacted": False,
        "real_purchase_validated": False,
        "real_game_entitlements_granted": False,
        "all_test_callbacks_returned_mock_success": all(
            e.status == "MOCK_SUCCESS" for e in events
        ),
        "events": [asdict(e) for e in events],
        "original_main_menu_verified": False,
        "original_level_1_verified": False,
        "original_save_verified": False,
    }


def main() -> None:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--output", help="Write a redacted synthetic JSON report")
    args = p.parse_args()
    report = make_report()
    payload = json.dumps(report, ensure_ascii=False, indent=2) + "\n"
    if args.output:
        from pathlib import Path
        out = Path(args.output)
        out.parent.mkdir(parents=True, exist_ok=True)
        out.write_text(payload, encoding="utf-8")
    print(payload, end="")


if __name__ == "__main__":
    main()
