"""Only synthetic ELF/identifier strings; no game bytes."""
import unittest
from scripts.offline.native_java_bridge_identifiers import match_literals


class NativeIdentifierTest(unittest.TestCase):
    def test_class_identifier_boundaries(self):
        data=(b"\0TWPurchase\0"
              b"\0Lcom/popcap/pvz2cthddev/TWPurchase;\0"
              b"\0noTWPurchaseXYZ\0")
        segment=[(0,len(data),0x4000)]
        rows=match_literals(data,segment,{
            "TW_SHORT":b"TWPurchase",
            "TW_DESCRIPTOR":b"com/popcap/pvz2cthddev/TWPurchase",
        })
        self.assertEqual(len([r for r in rows if r["identifier"]=="TW_SHORT"]),2)
        self.assertEqual(len([r for r in rows if r["identifier"]=="TW_DESCRIPTOR"]),1)
        self.assertTrue(all(r["elf_rva_hex"].startswith("0x") for r in rows))

    def test_jni_mangled_name_suffix(self):
        source=b"\x00Java_com_popcap_pvz2cthddev_TWPurchase_Native_1SDKLoginEnd\x00"
        rows=match_literals(source,[(0,len(source),0x4000)],{
            "JNI_EXPORT":b"Java_com_popcap_pvz2cthddev_TWPurchase_Native_1SDKLoginEnd",
            "METHOD":b"Native_1SDKLoginEnd",
        })
        self.assertEqual(sum(x["identifier"]=="JNI_EXPORT" for x in rows),1)
        self.assertEqual(sum(x["identifier"]=="METHOD" for x in rows),1)

    def test_empty(self):
        self.assertEqual(match_literals(b"xxno_identifierxx",[],{"A":b"TWPurchase"}),[])
