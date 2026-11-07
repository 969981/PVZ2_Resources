"""Regression cases for bounded signing/integrity census, not APK claims."""
from pathlib import Path
import tempfile
import unittest

from scripts.offline.signing_integrity_census import analyze, java_census


class SigningIntegrityCensusTests(unittest.TestCase):
    def test_scopes_records_without_source_or_secret(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            p = root / "sources/com/popcap/example/Main.java"
            p.parent.mkdir(parents=True)
            p.write_text(
                'class Main {\n'
                ' void a(){ pkg.getPackageInfo("private-token", 64); }\n'
                ' void b(){ System.exit(0); }\n'
                '}\n', encoding="utf-8")
            so = root / "lib.so"
            so.write_bytes(b"\0getPackageInfo\0SHA-256\0META-INF/\0")
            summary = analyze(root/"sources", so, root/"derived")
            self.assertEqual(summary["package_signature_files"], 1)
            self.assertEqual(len(summary["same_file_signature_and_exit_candidates"]), 1)
            self.assertEqual(summary["native"]["candidate_ascii_markers"]["jni_signature_api"]["occurrences"], 1)
            calls = (root/"derived/signing_candidate_callsites.json").read_text()
            self.assertNotIn("private-token", calls)
            self.assertIn('"first_party": true', calls)
            self.assertTrue(summary["no_offline_gameplay_claim"])

    def test_refuses_output_in_private_sources(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            (root/"sources").mkdir()
            (root/"lib.so").write_bytes(b"")
            with self.assertRaises(ValueError):
                analyze(root/"sources", root/"lib.so", root/"sources/reports")


if __name__ == "__main__":
    unittest.main()
