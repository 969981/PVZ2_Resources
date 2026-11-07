"""Synthetic tests for bounded JNI boundary detection, without game source."""
from pathlib import Path
import tempfile
import unittest
from scripts.offline.twpurchase_bridge_contract import (
    inspect_java, read_jni_dynamic_symbols, audit, arity_hint,
)

class TwPurchaseContractTests(unittest.TestCase):
    def test_capture_native_declaration_and_local_native_call(self):
        s='''
public class TWPurchase {
    public static native void Native_SDKLoginEnd(int code, boolean completed);
    public void onLoginResult(int status) {
        String secret = "Native_SDKLoginEnd(123)";
        Native_SDKLoginEnd(status, false);
        TwOfflineSDK.callbackResume();
    }
}
'''
        edges=inspect_java("com/popcap/pvz2cthddev/TWPurchase.java",s,"f"*64)
        declarations=[x for x in edges if x["edge_type"]=="NATIVE_DECLARATION"]
        calls=[x for x in edges if x["edge_type"]=="JAVA_TO_NATIVE_CALL"]
        self.assertEqual(len(declarations),1)
        self.assertEqual(declarations[0]["target"],"Native_SDKLoginEnd")
        self.assertEqual(declarations[0]["arity_hint"],2)
        self.assertEqual(len(calls),1)
        self.assertEqual(calls[0]["enclosing_method_hint"],"onLoginResult")
        self.assertEqual(calls[0]["line"],6)
        self.assertTrue(all("secret" not in str(x) for x in edges))
        self.assertTrue(any(x["target"]=="TwOfflineSDK.callbackResume" for x in edges))

    def test_no_native_export_when_lib_unavailable(self):
        self.assertEqual(read_jni_dynamic_symbols(Path("/not/a/real/file")),[])

    def test_empty_tree_is_explicit(self):
        with tempfile.TemporaryDirectory() as p:
            root=Path(p)
            result=audit(root,root/"out")
            self.assertEqual(result["sources_found"],0)
            self.assertEqual(result["twpurchase_native_methods"],[])

    def test_arity(self):
        self.assertEqual(arity_hint(""),0)
        self.assertEqual(arity_hint("int code, boolean ok"),2)
