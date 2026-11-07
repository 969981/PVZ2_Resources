import csv
import hashlib
import json
from pathlib import Path
import tempfile
import unittest
from scripts.parse.parse_shard import run

class ShardParsingTest(unittest.TestCase):
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root=Path(self.tmp.name)/"restored"
        self.root.mkdir()
        self.catalog=Path(self.tmp.name)/"catalog/files.csv"
        self.catalog.parent.mkdir()
        self.out=Path(self.tmp.name)/"parsed"
        files={"foo.json":json.dumps({"objects":[{"objclass":"PlantType",
           "aliases":["A"],"objdata":{"Properties":"RTID(X@PropertySheets)"}}]}).encode(),
           "unknown.popfx":b"SPECIFIC_SYNTHETIC_UNSUPPORTED_FORMAT"}
        rows=[]
        for name,body in files.items():
            (self.root/name).write_bytes(body)
            rows.append(dict(region="CHN",version="4.2.8",stage="Internal",shard="00",
                original_path=name,format="JSON" if name.endswith(".json") else "POPFX",
                category="Data",size_bytes=len(body),
                sha256=hashlib.sha256(body).hexdigest(),archive_sha256="ab"*32))
        fields=list(rows[0])
        with self.catalog.open("w",newline="",encoding="utf-8") as f:
            writer=csv.DictWriter(f,fieldnames=fields);writer.writeheader();writer.writerows(rows)
        (self.catalog.parent/"summary.json").write_text(json.dumps({
            "stage":"Internal","shard":0,"archive_sha256":"ab"*32,"file_count":len(rows)}))
    def test_two_files_with_real_sha_checks_and_refs(self):
        report=run(self.root,self.catalog,self.out,workers=2,max_refs=24)
        self.assertEqual(report["total_files"],2)
        self.assertEqual(report["statuses"]["parsed-json"],1)
        self.assertEqual(report["statuses"]["opaque-preserved"],1)
        self.assertEqual(report["rtid_references_found"],1)
        self.assertEqual(report["rtid_references_exported"],1)
        self.assertEqual(report["objclass_totals"]["PlantType"],1)
        self.assertTrue((self.out/"references.csv").exists())
    def test_tampering_fails(self):
        (self.root/"foo.json").write_text("changed")
        with self.assertRaises(ValueError):run(self.root,self.catalog,self.out,workers=1)

if __name__=="__main__":unittest.main()
