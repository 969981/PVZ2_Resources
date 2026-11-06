"""Synthetic concurrent probe test; no game assets required."""
from pathlib import Path
import lzma
import struct
import sys
import tempfile
import unittest
import zipfile

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "scripts" / "unpack"))
from parallel_unpack import extract_one, copy_one

class TestParallel(unittest.TestCase):
    def test_synthetic_parallel_workers(self):
        rsb = b"1bsr" + struct.pack("<26I", 4, *([0] * 25))
        prop = 0x5d
        dic = 1 << 20
        raw = lzma.compress(rsb, format=lzma.FORMAT_RAW,
                           filters=[{"id":lzma.FILTER_LZMA1,"dict_size":dic,"lc":3,"lp":0,"pb":2}])
        block = bytes([prop]) + struct.pack("<I", dic) + raw
        buf = struct.pack("<4sIQQIIQQ", b"RSLB", 1, len(rsb), 36+len(block), len(rsb), 1, 0, len(rsb))
        buf += struct.pack("<QI5s3x", 68, len(block), bytes([prop]) + struct.pack("<I", dic)) + block
        with tempfile.TemporaryDirectory() as d:
            base=Path(d)
            apk=base/"test.apk"
            with zipfile.ZipFile(apk, "w", zipfile.ZIP_STORED) as z:
                z.writestr("assets/dino.rsb.smf", buf)
                z.writestr("assets/properties/resourcesDino.rton.smf", b"RTON" + bytes(12))
            out=base/"out"
            out.mkdir()
            one=extract_one(apk, out, "assets/dino.rsb.smf", False)
            two=copy_one(apk, out, "assets/properties/resourcesDino.rton.smf", False)
            self.assertEqual(one["status"], "ok")
            self.assertEqual(two["status"], "ok")
            self.assertEqual((out/"RSB"/"dino.rsb").read_bytes(), rsb)
            self.assertEqual(extract_one(apk,out,"assets/dino.rsb.smf",True)["status"],"skipped-verified")
if __name__ == "__main__":
    unittest.main()
