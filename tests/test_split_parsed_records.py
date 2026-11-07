"""Only original synthetic content; no game asset bytes."""
from pathlib import Path
import csv
import hashlib
import json
import tempfile
import unittest
from scripts.catalog.split_parsed_records import export,name_for

class SplitParsedRecordsTest(unittest.TestCase):
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.src=Path(self.tmp.name)/"inputs"
        self.src.mkdir()
        self.out=Path(self.tmp.name)/"out"
        self.a={"region":"CHN","version":"4.2.8","stage":"Internal","shard":"05",
                "original_path":"dynamic/Level/Test.json","format":"JSON","category":"Data",
                "size_bytes":"13","sha256":"f"*64,
                "parser_status":"parsed-json","metadata_json":json.dumps({"game_objects":1})}
        self.b={"region":"CHN","version":"4.2.8","stage":"Media","shard":"00",
                "original_path":"PNG/Example.PNG","format":"PNG","category":"Images",
                "size_bytes":"11","sha256":"a"*64,"parser_status":"png-decoded",
                "metadata_json":json.dumps({"width":2,"height":3})}
        self.write_inputs()

    def write_csv(self,name,fields,rows):
        with (self.src/name).open("w",encoding="utf-8-sig",newline="") as f:
            w=csv.DictWriter(f,fieldnames=fields);w.writeheader();w.writerows(rows)

    def write_inputs(self):
        self.write_csv("assets.csv",list(self.a),[self.a,self.b])
        self.write_csv("object_classes.csv",
          ["stage","shard","original_path","objclass","object_count"],
          [{"stage":"Internal","shard":"05","original_path":self.a["original_path"],
            "objclass":"LevelDefinition","object_count":"1"}])
        self.write_csv("rtid_samples.csv",
          ["stage","shard","original_path","object_index","field_path","rtid","alias","namespace"],
          [{"stage":"Internal","shard":"05","original_path":self.a["original_path"],
            "object_index":"0","field_path":"/Modules/0","rtid":"RTID(X@CurrentLevel)",
            "alias":"X","namespace":"CurrentLevel"}])
        (self.src/"SUMMARY.json").write_text(json.dumps({
            "files_processed":2,"shards_processed":15,"missing_shards":["Media-06"],
            "class_row_count":1,"rtid_sampled":1,
            "parser_status_counts":{"parsed-json":1,"png-decoded":1}}),encoding="utf-8")

    def test_exports_two_real_independent_parsed_records(self):
        result=export(self.src,self.out,expected=2)
        self.assertEqual(result["independent_json_files"],2)
        for row in (self.a,self.b):
            obj=json.loads((self.out/name_for(row)).read_text())
            self.assertEqual(obj["source"]["original_path"],row["original_path"])
            self.assertEqual(obj["interpretation"]["status"],row["parser_status"])
        level=json.loads((self.out/name_for(self.a)).read_text())
        self.assertEqual(level["interpretation"]["object_classes"][0]["objclass"],"LevelDefinition")
        self.assertEqual(level["interpretation"]["rtid_samples"][0]["namespace"],"CurrentLevel")
        self.assertEqual(export(self.src,self.out,expected=2)["file_records"],2)

    def test_source_integrity_mismatch_halts(self):
        self.a["sha256"]="wrong"
        self.write_inputs()
        with self.assertRaises(ValueError):export(self.src,self.out,expected=2)

    def test_original_case_and_unicode_paths_are_uniquely_addressed(self):
        alt=dict(self.a,original_path="dynamic/Level/test.JSON")
        self.assertNotEqual(name_for(self.a),name_for(alt))
        alt["original_path"]="资源/🌱é文件.PTX"
        self.assertTrue(str(name_for(alt)).endswith(".parsed.json"))

if __name__=="__main__":
    unittest.main()
