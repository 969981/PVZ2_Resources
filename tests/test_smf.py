"""Synthetic format tests; do not imply real PvZ2 APK has been unpacked."""
import importlib.util
import lzma
from pathlib import Path
import struct
import tempfile
import unittest

file = Path(__file__).resolve().parents[1] / "scripts" / "unpack" / "unpack_smf.py"
spec = importlib.util.spec_from_file_location("unpack_smf", file)
parser = importlib.util.module_from_spec(spec)
spec.loader.exec_module(parser)

def fake_rsb() -> bytes:
    a = [0] * 27
    a[0] = struct.unpack("<I", b"1bsr")[0]
    a[1] = 4
    a[3] = 108
    return struct.pack("<27I", *a)

def fake_rslb(data: bytes) -> bytes:
    dictionary = 1 << 20
    props = 0x5D
    compressed = lzma.compress(
        data, format=lzma.FORMAT_RAW,
        filters=[{"id": lzma.FILTER_LZMA1, "dict_size": dictionary,
                  "lc": 3, "lp": 0, "pb": 2}]
    )
    payload = bytes([props]) + struct.pack("<I", dictionary) + compressed
    table = parser.BLOCK.pack(
        0, len(data), 0, parser.HEADER.size + parser.BLOCK.size,
        len(payload), props, dictionary
    )
    header = parser.HEADER.pack(
        b"RSLB", 1, len(data), len(table) + len(payload), len(data), 1
    )
    return header + table + payload

class TestSyntheticRSLB(unittest.TestCase):
    def test_round_trip_and_rsb_header(self):
        expected = fake_rsb()
        with tempfile.TemporaryDirectory() as td:
            src, dst = Path(td) / "a.smf", Path(td) / "b.rsb"
            src.write_bytes(fake_rslb(expected))
            got = parser.unwrap_rslb(src, dst)
            self.assertEqual(dst.read_bytes(), expected)
            self.assertEqual(got["blocks"], 1)
            probe = parser.probe_rsb(dst)
            self.assertEqual(probe["rsb_version"], 4)
            self.assertEqual(probe["group_count"], 0)

    def test_bad_magic(self):
        sample = bytearray(fake_rslb(fake_rsb()))
        sample[:4] = b"NOPE"
        with tempfile.TemporaryDirectory() as td:
            src, dst = Path(td) / "a.smf", Path(td) / "b.rsb"
            src.write_bytes(sample)
            with self.assertRaises(ValueError):
                parser.unwrap_rslb(src, dst)
            self.assertFalse(dst.exists())

    def test_truncated_block(self):
        sample = fake_rslb(fake_rsb())[:-2]
        with tempfile.TemporaryDirectory() as td:
            src, dst = Path(td) / "a.smf", Path(td) / "b.rsb"
            src.write_bytes(sample)
            with self.assertRaises(ValueError):
                parser.unwrap_rslb(src, dst)
            self.assertFalse(dst.exists())

if __name__ == "__main__":
    unittest.main()
