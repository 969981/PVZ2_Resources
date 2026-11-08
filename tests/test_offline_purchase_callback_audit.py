"""Synthetic tests for the read-only TWPurchase relationship index."""
import tempfile
from pathlib import Path
import unittest

from scripts.offline.audit_purchase_callbacks import audit, parse_methods

SAMPLE = """
.class public Lcom/popcap/pvz2cthddev/TWPurchase;
.super Ljava/lang/Object;
.method public RequestPay(Ljava/lang/String;Ljava/lang/String;)V
  invoke-direct {p0, p1, p2}, Lcom/popcap/pvz2cthddev/TWPurchase;->RequestPaySub(Ljava/lang/String;Ljava/lang/String;)V
  invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->pay(Ljava/lang/Object;)V
  return-void
.end method
.method public native FirePaymentComplete(JILjava/lang/String;Ljava/lang/String;)V
.end method
.method public native FireValidationPaymentComplete(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method
"""


class PurchaseCallAuditTests(unittest.TestCase):
    def test_extracts_only_known_method_and_sdk_relationships(self):
        records = parse_methods(SAMPLE)
        self.assertEqual(len(records), 3)
        self.assertEqual(records[0]["sdk_calls"], ["pay"])
        self.assertEqual(records[0]["local_calls"], ["RequestPaySub"])
        self.assertEqual(sum(m["native"] for m in records), 2)

    def test_scans_matching_class_and_never_claims_entitlement(self):
        with tempfile.TemporaryDirectory() as d:
            base = Path(d)
            root = base / "smali" / "com/popcap/pvz2cthddev"
            root.mkdir(parents=True)
            (root / "TWPurchase.smali").write_text(SAMPLE)
            (root / "TWPurchase$1.smali").write_text("""
.class Lcom/popcap/pvz2cthddev/TWPurchase$1;
.method public run()V
  invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->queryOrder(Ljava/lang/Object;)V
.end method
""")
            report = audit(base)
            self.assertEqual(report["related_inner_class_count"], 1)
            self.assertEqual(report["sdk_methods_called_by_twpurchase_family"], ["pay", "queryOrder"])
            self.assertEqual(report["native_payment_result_methods"],
                             ["FirePaymentComplete", "FireValidationPaymentComplete"])
            self.assertFalse(report["payment_validation_modified"])
            self.assertFalse(report["real_purchase_or_entitlement_tested"])

    def test_refuses_unknown_source(self):
        with tempfile.TemporaryDirectory() as d:
            with self.assertRaises(ValueError):
                audit(Path(d))


if __name__ == "__main__":
    unittest.main()
