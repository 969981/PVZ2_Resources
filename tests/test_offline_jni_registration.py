"""Generated synthetic ELF64 JNINativeMethod array, not game bytes."""
import struct
import unittest
from scripts.offline.jni_registration_probe import scan_registration_rows, parse_elf64

def make_synthetic():
    data=bytearray(0x1000)
    data[:4]=b"\x7fELF"
    data[4]=2;data[5]=1
    struct.pack_into("<Q",data,32,64)
    struct.pack_into("<HH",data,54,56,2)
    # exec PT_LOAD file offset .0->VA .0, little-endian ARM64 test instructions
    struct.pack_into("<IIQQQQQQ",data,64,1,5,0,0,0,0x600,0x600,4096)
    # RW PT_LOAD offset=0x600, VA=0x600
    struct.pack_into("<IIQQQQQQ",data,120,1,6,0x600,0x600,0,0x800,0x800,4096)
    data[0x720:0x720+len(b"Native_SDKLoginEnd\0")]=b"Native_SDKLoginEnd\0"
    data[0x760:0x760+len(b"(JILjava/lang/String;)V\0")]=b"(JILjava/lang/String;)V\0"
    struct.pack_into("<QQQ",data,0x800,0x720,0x760,0x300)
    return bytes(data)

class JNITest(unittest.TestCase):
    def test_structural_table(self):
        result=scan_registration_rows(make_synthetic())
        self.assertEqual(len(result),1)
        self.assertEqual(result[0]["native_java_method"],"Native_SDKLoginEnd")
        self.assertEqual(result[0]["jni_signature"],"(JILjava/lang/String;)V")
        self.assertEqual(result[0]["native_function_candidate_rva"],"0x300")
    def test_nonelf(self):
        with self.assertRaises(ValueError):
            parse_elf64(b"not an elf")
