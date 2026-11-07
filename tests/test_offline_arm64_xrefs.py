"""Synthetic only: test AArch64 PC-relative literal referencing, no game data."""
from pathlib import Path
import struct
import tempfile
import unittest
from scripts.offline.arm64_xrefs import decode_adrp, decode_add_imm_x, scan_xrefs, exec_segments


class Arm64StringXrefTests(unittest.TestCase):
    def test_adrp_add_single_literal(self):
        adrp=0xb0000000 # ADRP x0, PC page + 4096 (PC=0x2000)
        add=0x91000000 | (0x123<<10) # ADD x0, x0, #0x123
        self.assertEqual(decode_adrp(adrp,0x2000),(0x3000,0))
        self.assertEqual(decode_add_imm_x(add,0,0x3000),0x3123)
        self.assertIsNone(decode_add_imm_x(add,1,0x3000))

    def test_executable_segment_reference(self):
        with tempfile.TemporaryDirectory() as temp:
            so=Path(temp)/"synthetic-arm64.so"
            b=bytearray(0x300)
            b[:4]=b"\x7fELF"
            b[4]=2
            b[5]=1
            struct.pack_into("<Q",b,32,64)
            struct.pack_into("<HH",b,54,56,1)
            struct.pack_into("<II",b,64,1,5)
            struct.pack_into("<QQ",b,72,0x100,0x2000)
            struct.pack_into("<Q",b,96,0x80)
            struct.pack_into("<I",b,0x100,0xb0000000)
            struct.pack_into("<I",b,0x104,0x91000000|(0x123<<10))
            so.write_bytes(b)
            self.assertEqual(exec_segments(so),[(0x100,0x80,0x2000)])
            refs=scan_xrefs(so,{0x3123:[{"domain_hint":"example.test"}]})
            self.assertEqual(len(refs),1)
            self.assertEqual(refs[0]["instruction_pattern"],"ADRP_ADD")
            self.assertEqual(refs[0]["code_reference_rva_hex"],"0x2000")

    def test_non_elf_fail_closed(self):
        with tempfile.TemporaryDirectory() as temp:
            p=Path(temp)/"bad.so"
            p.write_bytes(b"not an elf")
            self.assertEqual(exec_segments(p),[])


if __name__=="__main__":
    unittest.main()
