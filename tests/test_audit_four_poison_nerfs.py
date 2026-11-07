"""Native source ledger tests; the user-visible percent interpretation stays unproven."""
import csv
import hashlib
import json
from pathlib import Path
from tempfile import TemporaryDirectory
import unittest
from scripts.catalog.audit_four_poison_nerfs import run


class PoisonLedgerTests(unittest.TestCase):
 def test_exact_plant_refs_and_source_hash(self):
  with TemporaryDirectory() as td:
   root=Path(td);raw=root/"raw";dir=raw/"04_JSON/dynamic/Packages/PACKAGES"
   dir.mkdir(parents=True)
   specs={
    "PLANTTYPES.json":{"objects":[{"objclass":"PlantType","aliases":["mulberry"],
      "objdata":{"TypeName":"mulberry","Properties":"RTID(MulberryDefault@PropertySheets)"}}]},
    "PROPERTYSHEETS.json":{"objects":[{"objclass":"MulberryProps",
      "aliases":["MulberryDefault"],"objdata":{"PoisonRatio":0.2,
      "Projectile":"RTID(MulberryGas@ProjectileTypes)"}}]},
    "PROJECTILETYPES.json":{"objects":[{"objclass":"MulberryGasGrenadeProps",
      "aliases":["MulberryGas"],"objdata":{"PoisonDamage":20,
      "PoisonDuration":10,"GridItem":"RTID(PoisonMistDefault@PropertySheets)"}},
      {"objclass":"GridItemPoisonMistProps","aliases":["PoisonMistDefault"],
      "objdata":{"_percentOfMaxHealth":0.2}}]},
   }
   rows=[]
   for name,blob in specs.items():
    path=dir/name
    path.write_text(json.dumps(blob),encoding="utf-8")
    rows.append({"original_path":path.relative_to(raw).as_posix(),"size_bytes":path.stat().st_size,
                 "sha256":hashlib.sha256(path.read_bytes()).hexdigest()})
   index=root/"files.csv"
   with index.open("w",newline="",encoding="utf-8") as f:
    w=csv.DictWriter(f,fieldnames=["original_path","size_bytes","sha256"]);w.writeheader();w.writerows(rows)
   s=run(raw,index,root/"out")
   self.assertIn("mulberry",s["four_plants"])
   self.assertEqual(s["RTID_edges"]>0,True)
   self.assertTrue((root/"out/native_poison_fields.csv").exists())
   (dir/"PROPERTYSHEETS.json").write_text('{"objects":[]}',encoding="utf-8")
   with self.assertRaisesRegex(ValueError,"length mismatch|Source hash mismatch"):
    run(raw,index,root/"out")


if __name__=="__main__":unittest.main()
