"""Synthetic M0/M1 tests: no real APK or Android device required."""
from __future__ import annotations

import hashlib
from pathlib import Path
import tempfile
import unittest
import zipfile

from scripts.offline import audit_apk, collect_adb_evidence


class OfflineApkAuditTests(unittest.TestCase):
    def make_apk(self, directory: Path) -> Path:
        apk = directory / "sample.apk"
        with zipfile.ZipFile(apk, "w") as archive:
            archive.writestr("AndroidManifest.xml", b"\x03\x00\x08\x00" + b"\x00" * 16)
            archive.writestr("classes.dex", b"dex\n035\x00" + b"https://api.example.org/login?secret=DO_NOT_COPY")
            archive.writestr("lib/arm64-v8a/libSrc.so", b"\x7fELF\x02" + b"A" * 16 + b"http://assets.example.net/a")
            archive.writestr("assets/init.rsb.smf", b"RSLB")
            archive.writestr("assets/test.rton.smf", b"RTON")
            archive.writestr("../not-for-extraction", b"x")
        return apk

    def test_bounded_static_audit(self):
        with tempfile.TemporaryDirectory() as tmp:
            apk = self.make_apk(Path(tmp))
            sha = hashlib.sha256(apk.read_bytes()).hexdigest()
            report, entries, libs, hosts = audit_apk.audit_apk(
                apk, sha, scan_mib=1, aapt_tool="disabled"
            )
            self.assertEqual(report["status"], "static_only_not_offline_verified")
            self.assertEqual(report["manifest_format"], "binary_axml")
            self.assertEqual(report["zip_entries"], 6)
            self.assertEqual(report["rsb_smf_count"], 1)
            self.assertEqual(report["rton_smf_count"], 1)
            self.assertEqual(report["abi"], ["arm64-v8a"])
            self.assertEqual(report["badging"]["status"], "skipped")
            self.assertEqual(report["unsafe_zip_paths"], ["../not-for-extraction"])
            self.assertEqual(report["candidate_hosts"], ["api.example.org", "assets.example.net"])
            self.assertEqual(libs[0]["elf_class"], "ELF64")
            self.assertEqual(len(hosts), 2)
            self.assertNotIn("DO_NOT_COPY", str(report))
            self.assertEqual(len(entries), 6)

    def test_sha_guard(self):
        with tempfile.TemporaryDirectory() as tmp:
            apk = self.make_apk(Path(tmp))
            with self.assertRaisesRegex(ValueError, "mismatch"):
                audit_apk.audit_apk(apk, "0" * 64, aapt_tool="disabled")

    def test_split_url_boundary_and_limit(self):
        import io
        data = b"x" * 13 + b"https://api.example.org/endpoint"
        hosts, scanned = audit_apk.read_hosts(io.BytesIO(data), len(data), chunk_size=20)
        self.assertEqual(hosts["api.example.org"], 1)
        self.assertEqual(scanned, len(data))
        hosts, scanned = audit_apk.read_hosts(io.BytesIO(data), 8, chunk_size=20)
        self.assertEqual(hosts, {})
        self.assertEqual(scanned, 8)

    def test_aapt_parsing(self):
        data = "package: name='com.popcap.pvz2cthdbk' versionCode='123' versionName='4.2.8'\ntargetSdkVersion:'28'"
        result = audit_apk.parse_badging(data)
        self.assertEqual(result["package_name"], "com.popcap.pvz2cthdbk")
        self.assertEqual(result["version_name"], "4.2.8")
        self.assertEqual(result["targetSdkVersion"], "28")

    def test_unsafe_path_detection(self):
        self.assertTrue(audit_apk.unsafe_zip_path("dir/../../data"))
        self.assertTrue(audit_apk.unsafe_zip_path("..\\data"))
        self.assertTrue(audit_apk.unsafe_zip_path("/tmp/file"))
        self.assertFalse(audit_apk.unsafe_zip_path("assets/data/file.rton"))


class OfflineAdbTests(unittest.TestCase):
    def test_version_parsing(self):
        result = collect_adb_evidence.parse_package_version(
            "versionCode=812 minSdk=23 targetSdk=29\n  versionName=4.2.8\n")
        self.assertEqual(result["version_code"], "812")
        self.assertEqual(result["version_name"], "4.2.8")

    def test_safe_package(self):
        self.assertEqual(collect_adb_evidence.validate_package("com.popcap.pvz2cthdbk"),
                         "com.popcap.pvz2cthdbk")
        for candidate in ("com.popcap;rm", "com.popcap/foo", "bad package"):
            with self.assertRaises(ValueError):
                collect_adb_evidence.validate_package(candidate)


if __name__ == "__main__":
    unittest.main()
