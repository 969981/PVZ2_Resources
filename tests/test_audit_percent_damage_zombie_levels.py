"""Synthetic source evidence, not a test of game damage formulas."""
from pathlib import Path
from tempfile import TemporaryDirectory
import hashlib
import csv
import json
import unittest

from scripts.catalog.audit_percent_damage_zombie_levels import run,classify


class PercentAuditTests(unittest.TestCase):
    def test_separate_health_damage_and_proc_chance(self):
        self.assertEqual(classify("$.PoisonMaxHealthDamagePercent","PoisonProps",0.03),
                         "strong-name-based-hp-percent-candidate")
        self.assertEqual(classify("$.PoisonChance","PoisonProps",0.04),
                         "poison-mechanic-candidate-not-proven-percent")
        self.assertEqual(classify("$.AttackDamageRatio","PlantProps",1.5),
                         "damage-or-poison-ratio-candidate")
        self.assertEqual(classify("$.Enabled","OtherProps",True),"")

    def test_source_hash_and_mode_level_arrays(self):
        with TemporaryDirectory() as td:
            root=Path(td)
            rel="04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json"
            f=root/"restored"/rel
            f.parent.mkdir(parents=True,exist_ok=True)
            obj={"objects":[
                {"objclass":"ZombiePropertySheet","aliases":["TestZombie"],"objdata":{
                    "ZombieLevelStats":[{"HitPointsLevel":1,"AttackLevel":1},
                                        {"HitPointsLevel":2,"AttackLevel":1.2}],
                    "PoisonMaxHealthDamagePercent":0.02}},
                {"objclass":"TestPoison","aliases":["Test"],"objdata":{
                    "PoisonChance":0.1,"DamageRatio":0.5}}
            ]}
            f.write_text(json.dumps(obj),encoding="utf-8")
            p=root/"files.csv"
            with p.open("w",newline="",encoding="utf-8") as stream:
                w=csv.DictWriter(stream,fieldnames=["original_path","format","size_bytes","sha256"])
                w.writeheader()
                w.writerow({"original_path":rel,"format":"JSON",
                            "size_bytes":f.stat().st_size,
                            "sha256":hashlib.sha256(f.read_bytes()).hexdigest()})
            out=root/"results"
            report=run(root/"restored",p,out)
            self.assertEqual(report["total_source_json_files"],1)
            self.assertEqual(report["level_vectors"],1)
            self.assertEqual(report["unique_zombie_level_vectors"],1)
            self.assertTrue((out/"percent_field_hits.csv").exists())
            self.assertTrue((out/"zombie_level_profiles.csv").exists())
            # Invalid original hash must fail, not silently promote a guess.
            f.write_text(f.read_text()+" ",encoding="utf-8")
            with self.assertRaisesRegex(ValueError,"Source byte-size mismatch|Source SHA mismatch"):
                run(root/"restored",p,out)


if __name__=="__main__":
    unittest.main()
