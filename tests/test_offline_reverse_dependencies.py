"""Synthetic-only offline reverse index tests: no original code or APK."""
import struct
import tempfile
from pathlib import Path
import unittest

from scripts.offline.reverse_dependencies import (
    classify_java, dex_string_entries, elf_load_segments,
    find_method, native_rva, scan_native, source_rows,
)


class ReverseIndexTests(unittest.TestCase):
    def test_java_roles(self):
        values = classify_java("return network.isOnline() && saveGame();")
        cats = {name for name, _ in values}
        self.assertIn("NETWORK", cats)
        self.assertIn("SAVE", cats)
        self.assertEqual(classify_java("import com.example.OkHttp;"), [])

    def test_java_file_and_method_hint(self):
        with tempfile.TemporaryDirectory() as temp:
            file = Path(temp) / "com/popcap/game/Level.java"
            file.parent.mkdir(parents=True)
            file.write_text(
                "package com.popcap.game;\n"
                "public class Level {\n"
                " public boolean canEnterLevel() {\n"
                "   return isNetworkAvailable();\n"
                " }\n"
                "}\n", encoding="utf-8"
            )
            rows, summary = source_rows(Path(temp))
            self.assertEqual(summary["files_scanned"], 1)
            self.assertTrue(any(r["category"] == "NETWORK" for r in rows))
            self.assertTrue(all(r["first_party_path_hint"] for r in rows))
            self.assertTrue(any(r["method_name_hint"] == "canEnterLevel" for r in rows))

    def test_minimal_dex_string_table(self):
        raw = bytearray(130)
        raw[:8] = b"dex\n035\0"
        struct.pack_into("<II", raw, 56, 1, 112)
        struct.pack_into("<I", raw, 112, 116)
        raw[116:116+len(b"\x0bloginServer\0")] = b"\x0bloginServer\0"
        rows = list(dex_string_entries(bytes(raw)))
        self.assertEqual(rows[0][0], 0)
        self.assertEqual(rows[0][2], "loginServer")

    def test_invalid_dex(self):
        self.assertIsNone(dex_string_entries(b"wrongfile"))

    def test_native_ascii_metadata(self):
        with tempfile.TemporaryDirectory() as temp:
            lib = Path(temp) / "libSrc.so"
            lib.write_bytes(
                b"\0" * 100 + b"https://pvz2cdn.ditwan.cn/update\0"
                + b"levelCompleted\0" + b"SaveGameProgress\0"
            )
            rows, counts = scan_native(lib, "lib/arm64-v8a/libSrc.so")
            self.assertTrue(any(r["category"] == "NETWORK" for r in rows))
            self.assertIn("pvz2cdn.ditwan.cn", [r["domain_hint"] for r in rows])
            self.assertTrue(all("file_offset_hex" in r for r in rows))
            self.assertGreater(len(counts), 0)

    def test_elf_rva_math(self):
        self.assertEqual(native_rva([(0x100, 0x200, 0x4000)], 0x130), "0x4030")
        self.assertEqual(native_rva([(0x100, 0x200, 0x4000)], 0x500), "")

    def test_no_signature_false_positive(self):
        with tempfile.TemporaryDirectory() as temp:
            file = Path(temp) / "lib.so"
            file.write_bytes(b"non-elf file" + b"\0" * 100)
            self.assertEqual(elf_load_segments(file), [])


if __name__ == "__main__":
    unittest.main()
