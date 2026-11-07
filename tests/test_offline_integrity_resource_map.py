"""Synthetic resource dump and Smali caller cross-reference tests."""
import tempfile
from pathlib import Path
import unittest

from scripts.offline.map_integrity_resource import ROOTS, parse_dump, locate_source_refs


class IntegrityResourceTests(unittest.TestCase):
    def test_aapt2_warning_following_resource_header(self):
        text = """resource 0x7f130321 com.popcap.pvz2cthdbk:string/piracy_alert
  () "盗版游戏随时可能会崩溃，请使用正版游戏"
resource 0x7f130322 com.popcap.pvz2cthdbk:string/other
  () "hello"
"""
        self.assertEqual(parse_dump(text), [
            {"id": "0x7f130321", "name": "com.popcap.pvz2cthdbk:string/piracy_alert"}
        ])

    def test_smali_resource_reference_is_located_without_source_export(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            for part in ROOTS:
                (root/part).mkdir()
            p = root/"smali"/"CallSite.smali"
            p.write_text(
                ".method public check()V\n"
                "   const v0, 0x7f130321\n"
                "   sget v1, Ltest/R$string;->piracy_alert:I\n"
                ".end method\n", encoding="utf-8"
            )
            result = locate_source_refs(root, [
                {"id": "0x7f130321", "name": "com.popcap.pvz2cthdbk:string/piracy_alert"}
            ])
        self.assertEqual(result["smali_files_examined"], 1)
        self.assertEqual(len(result["references"]), 2)
        self.assertTrue(result["no_runtime_causality_claim"])
        self.assertNotIn("const v0", repr(result))


if __name__ == "__main__":
    unittest.main()
