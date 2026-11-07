"""Synthetic crosswalk acceptance; explicitly NOT evidence of real gameplay behavior."""
from pathlib import Path
from tempfile import TemporaryDirectory
import csv
import hashlib
import json
import sqlite3
import unittest
import zipfile
from scripts.catalog.build_entity_crosswalk import build, symbol, entity_key


def dbzip(destination, member, commands, records):
    destination.parent.mkdir(parents=True,exist_ok=True)
    source=destination.parent/(member+".source")
    db=sqlite3.connect(source)
    db.executescript(commands)
    if records:
        sql,rows=records
        db.executemany(sql,rows)
    db.commit();db.close()
    with zipfile.ZipFile(destination,"w",zipfile.ZIP_DEFLATED) as z:
        z.write(source,member)
    source.unlink()


def csvwrite(path, columns, rows):
    path.parent.mkdir(parents=True,exist_ok=True)
    with path.open("w",newline="",encoding="utf-8-sig") as f:
        wr=csv.DictWriter(f,fieldnames=columns)
        wr.writeheader();wr.writerows(rows)


class EntityCrosswalkTests(unittest.TestCase):
    def test_rtid_symbol_normalizer_preserves_namespace(self):
        self.assertEqual(symbol("RTID(abc@PropertySheets)"),"abc@PropertySheets")
        self.assertEqual(symbol("abc@PropertySheets"),"abc@PropertySheets")
        self.assertNotEqual(symbol("abc@A"),symbol("abc@B"))

    def prepare(self,root):
        base=root/"Database/CHN/V4.2.8"
        def obj(cat,source,idx,cls,alias,data):
            return (cat,source,idx,cls,json.dumps(alias),json.dumps(data))
        src="04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json"
        zsrc="04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json"
        props="04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json"
        gameplay=[
            obj("plant_types",src,0,"PlantType",["peashooter@PlantTypes"],
                {"TypeName":"peashooter","Properties":"RTID(pea_prop@PropertySheets)",
                 "PlantResourceGroups":["PlantPeashooter_1200"],"PopAnim":"PEASHOOTER",
                 "Avatars":[{"RTID":"hat_pea@AvatarTypes"}],"PlantPieceImageName":"pea_piece"}),
            obj("plant_types",src,1,"PlantType",["sunflower@PlantTypes"],
                {"TypeName":"sunflower","Properties":"RTID(no_prop@PropertySheets)",
                 "PlantResourceGroups":[],"PopAnim":"SUNFLOWER"}),
            obj("zombie_types",zsrc,0,"ZombieType",["dark_basic@ZombieTypes"],
                {"TypeName":"dark_basic","Properties":"RTID(zomb_prop@PropertySheets)",
                 "ResourceGroups":["ZombieDarkBasicGroup_1200"],"PopAnim":"DARK_BASIC"}),
            obj("plant_properties",props,0,"PlantPropertySheet",["pea_prop@PropertySheets"],
                {"PlantLevelStats":[{"Level":1,"Damage":20},{"Level":2,"Damage":30}],
                 "Cost":100,"MinLevel":1,"MaxLevel":2}),
            obj("zombie_properties",props,1,"ZombiePropertySheet",["zomb_prop@PropertySheets"],
                {"ZombieLevelStats":[{"Level":1,"Hitpoints":60}],"Hitpoints":60}),
            obj("skills","04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json",0,
                "SkillPropertySheet",["pea_attack@SkillTypes"],
                {"SkillName":"[PEA]","SkillDescription":"[PEADESC]",
                 "SkillIconImage":"IMAGE_PEA"})]
        dbzip(base/"pvz2_chs428_gameplay_shard05.zip","pvz2_chs428_gameplay.sqlite",
              "CREATE TABLE game_objects(category TEXT, source_file TEXT, object_index INT, objclass TEXT, aliases_json TEXT, objdata_json TEXT);",
              ("INSERT INTO game_objects VALUES (?,?,?,?,?,?)",gameplay))
        dbzip(base/"pvz2_chs428_resource_catalog.zip","pvz2_chs428_resources.sqlite",
              "CREATE TABLE groups(source_file TEXT,group_index INT,group_id TEXT,group_type TEXT);",
              ("INSERT INTO groups VALUES (?,?,?,?)",[
                  ("resourcesPlant1.json",0,"PlantPeashooter_1200","simple"),
                  ("resourcesZombie3.json",1,"ZombieDarkBasicGroup_1200","simple")]))
        dbzip(base/"pvz2_chs428_localized_entities.zip","pvz2_chs428_localized_entities.sqlite",
              "CREATE TABLE entities(category TEXT,source_file TEXT,object_index INT,zh_cn_name TEXT,match_status TEXT);",
              ("INSERT INTO entities VALUES (?,?,?,?,?)",[
                  ("plants",src,0,"豌豆射手","matched"),
                  ("plants",src,1,"向日葵","matched")]))
        csvwrite(root/"Catalog/CHN/V4.2.8/semantic_assets/asset_paths.csv",
                 ["format","bundle","group_key","source_path","shard","published_png_path",
                  "source_sha256","family"],[
                     {"format":"PNG","bundle":"plant1","group_key":"plantpeashooter",
                      "source_path":"PNG/plant1/PlantPeashooter_1200/ATLASES/PEA.png",
                      "shard":"02","published_png_path":"Images/CHN/V4.2.8/Media/shard-02/PNG/plant1/PlantPeashooter_1200/ATLASES/PEA.png",
                      "source_sha256":"a"*64,"family":"plant"},
                     {"format":"PAM_JSON","bundle":"plant1","group_key":"plantpeashooter",
                      "source_path":"PAM_JSON/plant1/PlantPeashooter_Common/IMAGES/PEA.pam.json",
                      "shard":"02","published_png_path":"","source_sha256":"b"*64,"family":"plant"},
                     {"format":"PNG","bundle":"zombie3","group_key":"zombiedarkbasicgroup",
                      "source_path":"PNG/zombie3/ZombieDarkBasicGroup_1200/ATLASES/ZZ.png",
                      "shard":"01","published_png_path":"Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkBasicGroup_1200/ATLASES/ZZ.png",
                      "source_sha256":"c"*64,"family":"zombie"}])
        raw_root=root/"Raw"
        raw_root.mkdir()
        rows=[]
        from scripts.catalog.build_entity_crosswalk import TARGET_FILES
        for name in TARGET_FILES:
            rel="04_JSON/dynamic/Packages/PACKAGES/"+name
            f=raw_root/rel
            f.parent.mkdir(parents=True,exist_ok=True)
            docs=[]
            if name=="COLLECTABLETYPES.json":
                docs=[{"objclass":"CollectableAccessoryPieceType","aliases":["hat_pea@AvatarTypes"],
                       "objdata":{"PlantType":"peashooter","Piece":"RTID(peashooter@PlantTypes)"}}]
            f.write_text(json.dumps({"objects":docs}),encoding="utf-8")
            rows.append({"original_path":rel,"format":"JSON","size_bytes":f.stat().st_size,
                         "sha256":hashlib.sha256(f.read_bytes()).hexdigest()})
        csvwrite(root/"Catalog/CHN/V4.2.8/shards/Internal-05/files.csv",
                 ["original_path","format","size_bytes","sha256"],rows)
        return raw_root

    def test_real_policies_on_synthetic_source(self):
        with TemporaryDirectory() as td:
            root=Path(td)
            raw=self.prepare(root)
            output=root/"out"
            s=build(root,output,raw,expected_plants=2,expected_zombies=1)
            self.assertEqual(s["kinds"],{"plant":2,"zombie":1})
            self.assertEqual(s["records"]["entities"],3)
            self.assertTrue(s["records"]["avatars"]>=1)
            links=list(csv.DictReader((output/"links.csv").open(encoding="utf-8-sig")))
            self.assertTrue(any(x["status"]=="exact-alias-source-reference" for x in links))
            self.assertTrue(any(x["status"]=="unresolved" for x in links))
            grades=list(csv.DictReader((output/"level_rows.csv").open(encoding="utf-8-sig")))
            self.assertTrue(any(x["field"]=="PlantLevelStats" for x in grades))
            images=list(csv.DictReader((output/"assets.csv").open(encoding="utf-8-sig")))
            self.assertTrue(any(x["format"]=="PNG" and x["association_status"]=="resource-group-name-candidate" for x in images))
            con=sqlite3.connect(output/"pvz2_chs428_entities.sqlite")
            self.assertEqual(con.execute("PRAGMA integrity_check").fetchone()[0],"ok")
            self.assertEqual(con.execute("SELECT COUNT(*) FROM entities").fetchone()[0],3)
            con.close()

    def test_invalid_hash_fails_closed(self):
        with TemporaryDirectory() as td:
            root=Path(td)
            raw=self.prepare(root)
            p=raw/"04_JSON/dynamic/Packages/PACKAGES/COLLECTABLETYPES.json"
            p.write_text('{"objects":[]}',encoding="utf-8")
            with self.assertRaisesRegex(ValueError,"hash mismatch"):
                build(root,root/"out",raw,expected_plants=2,expected_zombies=1)


if __name__=="__main__":
    unittest.main()
