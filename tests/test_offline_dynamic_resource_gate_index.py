"""Synthetic tests for dynamic warning resource lookup cross-reference."""
import tempfile
import unittest
from pathlib import Path
from scripts.offline.dynamic_resource_gate_index import scan, ROOTS


class DynamicResourceGateIndexTests(unittest.TestCase):
    def test_literal_and_getidentifier_ranked(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            for part in ROOTS:
                (root/part).mkdir()
            (root/"smali"/"A.smali").write_text(
                ".method public alert()V\n"
                ' const-string v0, "check_sign_failed"\n'
                " invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I\n"
                ".end method\n", encoding="utf-8")
            report = scan(root)
        self.assertEqual(report["candidate_methods"], 1)
        self.assertEqual(report["smali_files_examined"], 1)
        self.assertIn("CHECK_SIGN_NAME_LITERAL", report["methods"][0]["categories"])
        self.assertIn("DYNAMIC_RESOURCE_LOOKUP", report["methods"][0]["categories"])
        self.assertFalse(report["warning_caller_verified"])


if __name__ == "__main__":
    unittest.main()
