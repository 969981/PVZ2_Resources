"""Observation-only signature trace patch regression."""
import unittest

from scripts.offline.trace_signature_read import patch_get_signature

SOURCE = """\
.class public Lcom/popcap/pvz2cthddev/TWPurchase;
.super Ljava/lang/Object;
.method public GetSignature()Ljava/lang/String;
    .locals 1
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;
    move-result-object v0
    invoke-virtual {v0}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/DeviceUtil;->getSignature(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
"""


class SignatureTraceTests(unittest.TestCase):
    def test_return_preserved_and_marker_observable(self):
        output, report = patch_get_signature(SOURCE)
        self.assertIn(".locals 3", output)
        self.assertEqual(output.count("GetSignature.enter"), 1)
        self.assertEqual(output.count("GetSignature.exit"), 1)
        self.assertEqual(output.count("return-object v0"), 1)
        self.assertEqual(output.count("DeviceUtil;->getSignature("), 1)
        self.assertFalse(report["return_value_modified"])
        self.assertFalse(report["signature_or_digest_logged"])

    def test_unknown_layout_refused(self):
        with self.assertRaisesRegex(ValueError, "Unexpected register"):
            patch_get_signature(SOURCE.replace(".locals 1", ".locals 4"))

    def test_already_instrumented_refused(self):
        output, _ = patch_get_signature(SOURCE)
        with self.assertRaisesRegex(ValueError, "Unexpected GetSignature implementation"):
            patch_get_signature(output)


if __name__ == "__main__":
    unittest.main()
