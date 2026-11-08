"""Synthetic ZIP-only tests: no commercial APK data."""
import io
import tempfile
import unittest
from pathlib import Path
from zipfile import ZipFile

from scripts.offline.find_integrity_warning import analyze, scan_member


class WarningLocationTest(unittest.TestCase):
    def test_cross_chunk_boundary(self):
        phrase = "盗版游戏".encode("utf-8")
        stream = io.BytesIO(b"q" * (1024 * 1024 - 5) + phrase)
        hits = scan_member(stream, member="classes.dex")
        self.assertEqual(
            [(h["offset"], h["encoding"], h["phrase_kind"]) for h in hits],
            [(1024 * 1024 - 5, "utf-8", "piracy_keyword")],
        )

    def test_zip_member_metadata_no_binary_content(self):
        with tempfile.TemporaryDirectory() as root:
            apk = Path(root) / "synthetic.apk"
            with ZipFile(apk, "w") as z:
                z.writestr("classes.dex", "盗版游戏".encode("utf-8"))
                z.writestr("lib/armeabi-v7a/libmock.so", "请使用正版游戏".encode("utf-16-le"))
                z.writestr("assets/ignore.dat", "盗版游戏".encode("utf-8"))
            result = analyze(apk)
        self.assertEqual(result["scanned_members"], 2)
        self.assertEqual(result["total_matches"], 2)
        self.assertFalse(result["signature_check_site_verified"])
        self.assertEqual({h["member"] for h in result["matches"]},
                         {"classes.dex", "lib/armeabi-v7a/libmock.so"})
        self.assertNotIn("盗版", repr(result))

    def test_missing_apk_fails_closed(self):
        with self.assertRaises(FileNotFoundError):
            analyze(Path("/not/an/existing/apk"))


if __name__ == "__main__":
    unittest.main()
