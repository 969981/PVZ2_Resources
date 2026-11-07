"""Synthetic AArch64 JNINativeMethod and bounded register consumption test."""
import unittest
try:
    import capstone
except ImportError:
    capstone=None
from scripts.offline.arm64_native_login_arg_probe import examine

def fixture():
    import struct
    b=bytearray(0x1000)
    b[:4]=b"\x7fELF"
    b[4]=2; b[5]=1
    struct.pack_into("<Q",b,32,64)
    struct.pack_into("<HH",b,54,56,2)
    struct.pack_into("<IIQQQQQQ",b,64,1,5,0,0,0,0x600,0x600,4096)
    struct.pack_into("<IIQQQQQQ",b,120,1,6,0x600,0x600,0,0x800,0x800,4096)
    b[0x720:0x720+len(b"Native_SDKLoginEnd\0")]=b"Native_SDKLoginEnd\0"
    b[0x760:0x760+len(b"(JILjava/lang/String;)V\0")]=b"(JILjava/lang/String;)V\0"
    struct.pack_into("<QQQ",b,0x800,0x720,0x760,0x300)
    # mov x5,x2 ; mov w0,w3 ; mov x0,x4 ; ret (all AArch64 LE)
    b[0x300:0x310]=bytes.fromhex("e50302aae003032ae00304aac0035fd6")
    return bytes(b)

@unittest.skipUnless(capstone is not None,"Capstone must be installed in runner venv")
class TestAArch64BoundedArgumentRead(unittest.TestCase):
    def test_three_native_jni_argument_registers_observed(self):
        reads,comp,metadata=examine(fixture(),capstone)
        self.assertIn("Native_SDKLoginEnd",metadata)
        kinds={r["input_register_group"] for r in reads}
        self.assertEqual(kinds,{"native_handle_long","login_status_int","jni_string_ref"})
        self.assertEqual(metadata["Native_SDKLoginEnd"]["disassembled_instructions_sampled"],4)
