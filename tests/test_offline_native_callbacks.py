import unittest
from scripts.offline.inspect_native_callbacks import type_list, declarations

class OfflineNativeMethodContractTest(unittest.TestCase):
    def test_signature_types_without_values(self):
        source="""
class TWPurchase {
  private native void Native_SDKLoginEnd(int status, String player, boolean cached);
  public void InitializeSDK(android.app.Activity context) { return; }
}
"""
        r=declarations(source,{"Native_SDKLoginEnd","InitializeSDK"},
                       "com/popcap/TWPurchase.java","f"*64)
        sig=next(x for x in r if x["method"]=="Native_SDKLoginEnd")
        self.assertTrue(sig["native_declaration"])
        self.assertEqual(sig["parameter_types"],"int;String;boolean")
        self.assertEqual(sig["parameter_count"],3)
        self.assertEqual(sig["return_type"],"void")
        self.assertEqual(len(r),2)

    def test_generics_do_not_add_arity(self):
        self.assertEqual(type_list("java.util.Map<String, Integer> profile, String key"),
                         ["java.util.Map<String, Integer>","String"])
    def test_nonmethod_not_captured(self):
        self.assertEqual(declarations("String s = \"Native_SDKLoginEnd(token)\";",
             {"Native_SDKLoginEnd"},"com/popcap/TWPurchase.java","0"*64),[])
