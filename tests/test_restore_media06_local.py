"""Synthetic tests for exact-hash Media-06 local-only restoration."""
import csv
import hashlib
from pathlib import Path
from tempfile import TemporaryDirectory
import unittest

from scripts.catalog.restore_media06_local import restore, safe_relative


class Media06LocalRestoreTests(unittest.TestCase):
    def make_case(self, base):
        artifact = base / "artifact"
        catalog = base / "catalog.csv"
        artifact.mkdir()
        originals = {
            "PNG/Init/ATLAS.png": b"synthetic png fixture bytes",
            "WEM/Sound/0001.wem": b"synthetic wem fixture bytes",
        }
        for path, data in originals.items():
            f = artifact / path
            f.parent.mkdir(parents=True, exist_ok=True)
            f.write_bytes(data)
        with catalog.open("w", encoding="utf-8-sig", newline="") as f:
            w = csv.DictWriter(f, fieldnames=("stage","shard","path","suffix","size_bytes","sha256"))
            w.writeheader()
            for path, data in originals.items():
                w.writerow({"stage":"Media","shard":"06","path":path,
                            "suffix":Path(path).suffix,"size_bytes":len(data),
                            "sha256":hashlib.sha256(data).hexdigest()})
        return artifact, catalog

    def test_filtered_copy_and_idempotence(self):
        with TemporaryDirectory() as tmp:
            base=Path(tmp)
            artifact,catalog=self.make_case(base)
            out=base/"Readable"
            first=restore(artifact,catalog,out,extensions={".png"},copy=True,expected_count=2)
            self.assertEqual(first["selected_files"],1)
            self.assertEqual(first["created_files"],1)
            self.assertTrue((out/"Media/shard-06/PNG/Init/ATLAS.png").is_file())
            self.assertFalse((out/"Media/shard-06/WEM/Sound/0001.wem").exists())
            again=restore(artifact,catalog,out,extensions={".png"},copy=True,expected_count=2)
            self.assertEqual(again["reused_files"],1)
            self.assertEqual(again["created_files"],0)

    def test_no_copy_by_default(self):
        with TemporaryDirectory() as tmp:
            base=Path(tmp)
            artifact,catalog=self.make_case(base)
            result=restore(artifact,catalog,base/"Readable",copy=False,expected_count=2)
            self.assertEqual(result["selected_files"],2)
            self.assertEqual(result["created_files"],0)
            self.assertFalse((base/"Readable").exists())

    def test_modified_file_rejected(self):
        with TemporaryDirectory() as tmp:
            base=Path(tmp)
            artifact,catalog=self.make_case(base)
            (artifact/"PNG/Init/ATLAS.png").write_bytes(b"tampered")
            with self.assertRaisesRegex(ValueError,"checksum mismatch"):
                restore(artifact,catalog,base/"Readable",copy=True,expected_count=2)

    def test_extra_file_rejected(self):
        with TemporaryDirectory() as tmp:
            base=Path(tmp)
            artifact,catalog=self.make_case(base)
            (artifact/"EXTRA.txt").write_text("bad")
            with self.assertRaisesRegex(ValueError,"filenames differ"):
                restore(artifact,catalog,base/"Readable",expected_count=2)

    def test_catalog_count_rejected(self):
        with TemporaryDirectory() as tmp:
            base=Path(tmp)
            artifact,catalog=self.make_case(base)
            with self.assertRaisesRegex(ValueError,"Unexpected catalog count"):
                restore(artifact,catalog,base/"Readable",expected_count=501)

    def test_path_traversal_rejected(self):
        for name in ("../bad.png", "C:/bad.png", "/etc/passwd", "a\\b.png"):
            with self.assertRaises(ValueError, msg=name):
                safe_relative(name)


if __name__=="__main__":
    unittest.main()
