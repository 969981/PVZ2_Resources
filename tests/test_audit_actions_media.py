"""Synthetic, asset-free tests. Not a substitute for real media artifacts."""
import csv
import json
from pathlib import Path
from tempfile import TemporaryDirectory
import unittest
from scripts.media.audit_actions_media import audit, PNG

class MediaAuditTests(unittest.TestCase):
    def test_files_hash_and_header_checks(self):
        with TemporaryDirectory() as tmp:
            root = Path(tmp) / "artifact"
            root.mkdir()
            (root / "pic.png").write_bytes(PNG + (13).to_bytes(4, "big") + b"IHDR" + (32).to_bytes(4, "big") + (16).to_bytes(4, "big") + b"\x08\x06\x00\x00\x00")
            (root / "sound.wem").write_bytes(b"RIFF" + (4).to_bytes(4,"little") + b"WAVE")
            (root / "anim.json").write_text('{"a": 1}', encoding="utf-8")
            result = audit(root, Path(tmp) / "out", expected=3)
            self.assertEqual(result["file_count"], 3)
            self.assertEqual(result["statuses"], {"json-parsed":1, "png-header-verified":1, "wem-header-verified":1})
            with (Path(tmp) / "out/files.csv").open(encoding="utf-8-sig") as file:
                rows = list(csv.DictReader(file))
            self.assertEqual(len(rows),3)
            self.assertEqual(len(rows[0]["sha256"]),64)
            self.assertFalse(json.loads((Path(tmp) / "out/SUMMARY.json").read_text())["archive_manifest_verified"])

    def test_invalid_png_is_reported(self):
        with TemporaryDirectory() as tmp:
            root = Path(tmp)/"in"
            root.mkdir()
            (root/"bad.png").write_bytes(b"broken")
            self.assertEqual(audit(root, Path(tmp)/"out")["format_errors"], 1)

    def test_count_mismatch_raises(self):
        with TemporaryDirectory() as tmp:
            root = Path(tmp)/"in"
            root.mkdir()
            (root/"a.wem").write_bytes(b"RIFF")
            with self.assertRaisesRegex(ValueError,"unexpected media file count"):
                audit(root,Path(tmp)/"out", expected=501)

    def test_case_collision_raises(self):
        with TemporaryDirectory() as tmp:
            root = Path(tmp)/"in"
            root.mkdir()
            (root/"a.json").write_text("{}")
            (root/"A.json").write_text("{}")
            with self.assertRaisesRegex(ValueError,"case-colliding"):
                audit(root,Path(tmp)/"out")

if __name__ == "__main__":
    unittest.main()
