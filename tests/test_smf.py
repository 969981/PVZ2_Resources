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

def fake_rslb(data: bytes, split: int | None = None) -> bytes:
    parts = [data] if split is None else [data[:split], data[split:]]
    dictionary = 1 << 20
    props = bytes([0x5D]) + struct.pack("<I", dictionary)
    encoded = [props + lzma.compress(part, format=lzma.FORMAT_RAW,
        filters=[{"id": lzma.FILTER_LZMA1, "dict_size": dictionary,
                  "lc": 3, "lp": 0, "pb": 2}]) for part in parts]
    count = len(parts)
    nominal = max(map(len, parts))
    table_bytes = count * parser.BLOCK.size + (count-1) * parser.LINK.size
    begin = parser.HEADER.size + table_bytes
    table = bytearray()
    offset = begin
    cumulative = 0
    for i, (raw_part, payload) in enumerate(zip(parts, encoded)):
        table += parser.BLOCK.pack(offset, len(payload), props)
        offset += len(payload)
        cumulative += len(raw_part)
        if i < count - 1:
            table += parser.LINK.pack(cumulative, len(parts[i+1]))
    header = parser.HEADER.pack(b"RSLB", 1, len(data), offset - 0x20,
                                nominal, count, 0, nominal)
    return header + table + b"".join(encoded)

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

    def test_real_layout_multiblock(self):
        expected = fake_rsb() + bytes(range(80))
        with tempfile.TemporaryDirectory() as td:
            src, dst = Path(td) / "two.smf", Path(td) / "two.rsb"
            src.write_bytes(fake_rslb(expected, split=128))
            result = parser.unwrap_rslb(src, dst)
            self.assertEqual(result["blocks"], 2)
            self.assertEqual(dst.read_bytes(), expected)

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
