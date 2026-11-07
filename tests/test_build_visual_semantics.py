"""Asset-free tests for visual inventory and conservative semantic joins."""
from pathlib import Path
from tempfile import TemporaryDirectory
import csv
import json
import sqlite3
import zipfile
import unittest

from scripts.catalog.build_visual_semantics import build, family_of, normalized_group


def csv_file(path,fields,rows):
    path.parent.mkdir(parents=True,exist_ok=True)
    with path.open("w",newline="",encoding="utf-8") as f:
        w=csv.DictWriter(f,fieldnames=fields);w.writeheader();w.writerows(rows)


class VisualSemanticTests(unittest.TestCase):
    def create_repo(self,root):
        for i in range(8):
            sh=f"{i:02d}"
            csv_file(root/f"Images/CHN/V4.2.8/Media/shard-{sh}/PNG-MANIFEST.csv",
                     ["shard","original_path","sha256","decode_status"],[
                         {"shard":sh,"original_path":"PNG/plant1/PlantPeashooter_1200/ATLASES/X.png",
                          "sha256":"ab"*32,"decode_status":"pillow-verified-and-loaded"}])
            med={"stage":"Media","shard":sh,"format":"PAM_JSON",
                 "original_path":"PAM_JSON/plant1/PlantPeashooter_Common/IMAGES/1200/PLANT1/PEASHOOTER.pam.json",
                 "sha256":"cd"*32}
            if sh=="06":
                csv_file(root/"Catalog/CHN/V4.2.8/recovery/Media-06/files.csv",
                         ["stage","shard","path","sha256"],[
                         {"stage":"Media","shard":"06","path":med["original_path"],"sha256":med["sha256"]}])
            else:
                csv_file(root/f"Catalog/CHN/V4.2.8/shards/Media-{sh}/files.csv",
                         list(med),[med])
            native={"stage":"Internal","shard":sh,"format":"PAM",
                    "original_path":"04_JSON/plant1/PlantPeashooter_Common/IMAGES/1200/PLANT1/PEASHOOTER.PAM",
                    "sha256":"ef"*32}
            csv_file(root/f"Catalog/CHN/V4.2.8/shards/Internal-{sh}/files.csv",
                     list(native),[native])
        csv_file(root/"Catalog/CHN/V4.2.8/parsed/object_classes.csv",
                 ["objclass","object_count","stage","shard","original_path"],[
                     {"objclass":"SkillPropertySheet","object_count":3,
                      "stage":"Internal","shard":"05","original_path":"dynamic/a.json"}])
        path=root/"Database/CHN/V4.2.8/pvz2_chs428_gameplay_shard05.zip"
        path.parent.mkdir(parents=True,exist_ok=True)
        db_path=root/"gameplay.sqlite"
        db=sqlite3.connect(db_path)
        db.execute("CREATE TABLE game_objects(category TEXT,source_file TEXT,object_index INTEGER,objclass TEXT,objdata_json TEXT)")
        db.execute("INSERT INTO game_objects VALUES (?,?,?,?,?)",
                   ("plant_properties","dynamic/a.json",12,"PlantPropertySheet",
                    json.dumps({"PlantLevelStats":[{"L":1}], "Cost":100})))
        db.execute("INSERT INTO game_objects VALUES (?,?,?,?,?)",
                   ("skills","dynamic/a.json",13,"SkillPropertySheet",
                    json.dumps({"SkillName":"[TEST_SKILL]"})))
        db.commit();db.close()
        with zipfile.ZipFile(path,"w") as z:
            z.write(db_path,"pvz2_chs428_gameplay.sqlite")

    def test_categories_are_only_path_hints(self):
        self.assertEqual(family_of("plant2"),"plant")
        self.assertEqual(family_of("zombie3"),"zombie")
        self.assertEqual(normalized_group("PlantPeashooter_1200"),
                         normalized_group("PlantPeashooter_Common"))

    def test_build_with_small_realistic_fixtures(self):
        with TemporaryDirectory() as td:
            root=Path(td)
            self.create_repo(root)
            report=build(root,root/"audit",expected_png=8,
                         expected_pam_json=8,expected_pam=8)
            self.assertEqual(report["format_counts"],{"PNG":8,"PAM_JSON":8,"PAM":8})
            self.assertEqual(report["image_animation_name_matched_groups"],1)
            self.assertEqual(report["gameplay_categories"],{"plant_properties":1,"skills":1})
            data=list(csv.DictReader((root/"audit/gameplay_raw_fields.csv").open(encoding="utf-8-sig")))
            self.assertTrue(any(r["raw_field"]=="PlantLevelStats" for r in data))
            assets=list(csv.DictReader((root/"audit/asset_paths.csv").open(encoding="utf-8-sig")))
            self.assertEqual(len(assets),24)
            self.assertEqual(sum(bool(x["published_png_path"]) for x in assets),8)

    def test_wrong_decode_status_fails_closed(self):
        with TemporaryDirectory() as td:
            root=Path(td)
            self.create_repo(root)
            path=root/"Images/CHN/V4.2.8/Media/shard-01/PNG-MANIFEST.csv"
            text=path.read_text()
            path.write_text(text.replace("pillow-verified-and-loaded","header-only"))
            with self.assertRaisesRegex(ValueError,"unverified source PNG"):
                build(root,root/"audit",expected_png=8,expected_pam_json=8,expected_pam=8)


if __name__=="__main__":
    unittest.main()
