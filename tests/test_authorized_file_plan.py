import csv
import hashlib
import json
from pathlib import Path
import tempfile
import unittest
from scripts.catalog.prepare_authorized_files import prepare

class AuthorizedPublicFilesTest(unittest.TestCase):
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root=Path(self.tmp.name)
        self.source=self.root/"Readable"
        self.dest=self.root/"Published"
        self.file=self.source/"Media/shard-00/PNG/example.png"
        self.file.parent.mkdir(parents=True)
        self.file.write_bytes(b"synthetic, self-created fixture")
        self.sha=hashlib.sha256(self.file.read_bytes()).hexdigest()
        self.catalog=self.root/"files.csv"
        with self.catalog.open("w",newline="",encoding="utf-8-sig") as f:
            writer=csv.DictWriter(f,fieldnames=["stage","shard","original_path","sha256","bytes"])
            writer.writeheader()
            writer.writerow({"stage":"Media","shard":"00","original_path":"PNG/example.png",
                             "sha256":self.sha,"bytes":self.file.stat().st_size})
        self.rights=self.root/"rights.json"

    def grant(self,**changes):
        row={"stage":"Media","shard":"00","original_path":"PNG/example.png","sha256":self.sha,
             "basis":"owned-original-work","evidence":"synthetic fixture authored by this test"}
        row.update(changes)
        self.rights.write_text(json.dumps({"schema":"pvz2-exact-asset-permissions-v1","grants":[row]}))
        return self.rights

    def run_plan(self,rights=None,stage=False,limit=100000):
        return prepare(self.catalog,rights,self.source,self.dest,limit,1000000,10,stage)

    def test_without_permission_no_files(self):
        result=self.run_plan()
        self.assertEqual(result["catalog_rows"],1)
        self.assertEqual(result["authorized_files"],0)
        self.assertFalse(self.dest.exists())

    def test_exact_permission_stages_file_idempotently(self):
        result=self.run_plan(self.grant(),stage=True)
        self.assertEqual(result["authorized_files"],1)
        self.assertEqual((self.dest/"Media/shard-00/PNG/example.png").read_bytes(),self.file.read_bytes())
        again=self.run_plan(self.rights,stage=True)
        self.assertEqual(again["batches"][0]["files"][0]["stage_status"],"already-present")

    def test_changed_source_rejected(self):
        self.grant()
        self.file.write_bytes(b"changed after catalog")
        with self.assertRaises(ValueError):self.run_plan(self.rights,stage=True)

    def test_missing_evidence_rejected(self):
        self.grant(evidence="")
        with self.assertRaises(ValueError):self.run_plan(self.rights,stage=True)

    def test_size_limit_blocks(self):
        result=self.run_plan(limit=10)
        self.assertEqual(result["authorized_files"],0)
        self.assertEqual(result["skipped"]["size-limit"],1)

    def test_path_traversal_rejected(self):
        with self.catalog.open("w",newline="",encoding="utf-8-sig") as f:
            writer=csv.DictWriter(f,fieldnames=["stage","shard","original_path","sha256","bytes"])
            writer.writeheader()
            writer.writerow({"stage":"Media","shard":"00","original_path":"../escape","sha256":self.sha,"bytes":2})
        with self.assertRaises(ValueError):self.run_plan()

if __name__=="__main__":unittest.main()
