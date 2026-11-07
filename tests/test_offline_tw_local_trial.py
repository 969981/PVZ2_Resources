"""Synthetic-only TWPurchase smali transformation gate tests."""
import unittest
from scripts.offline.patch_tw_local_trial import patch_smali

BASE = """
.class public Lcom/popcap/pvz2cthddev/TWPurchase;
.super Ljava/lang/Object;
.field private mNativeDriverPtr:J
.method private static native Native_SDKInitStart(J)V
.end method
.method private static native Native_SDKInitEnd(JI)V
.end method
.method private static native Native_SDKLoginStart(J)V
.end method
.method private static native Native_SDKLoginEnd(JILjava/lang/String;)V
.end method
.method public run()V
  .locals 2
  invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->init(Ljava/lang/Object;)V
  invoke-static {v0, v1}, Lcom/popcap/pvz2cthddev/TWPurchase;->Native_SDKInitStart(J)V
  return-void
.end method
"""

class OfflineLocalTestPatch(unittest.TestCase):
    def test_replaces_only_run_and_keeps_original_native_method_declarations(self):
        patched,meta=patch_smali(BASE,init_status=1,login_status=0)
        self.assertEqual(patched.count("offline-local-test-only"),1)
        self.assertEqual(patched.count("Native_SDKLoginEnd(JILjava/lang/String;)V"),2)
        self.assertIn("const/4 v2, 0x0",patched)
        self.assertNotIn("TwOfflineSDK;->init(",patched)
        self.assertIn("iget-wide v0, p0,",patched)
        self.assertFalse(meta["gameplay_main_menu_verified"])
        self.assertFalse(meta["native_status_semantics_confirmed"])

    def test_inherited_native_pointer_requires_proven_parent(self):
        child=BASE.replace(".super Ljava/lang/Object;",
                           ".super Lcom/popcap/pvz2cthddev/ThirdpartyPurchaseDriver;")
        child=child.replace(".field private mNativeDriverPtr:J\n","")
        parent=""".class public Lcom/popcap/pvz2cthddev/ThirdpartyPurchaseDriver;
.super Ljava/lang/Object;
.field protected mNativeDriverPtr:J
"""
        with self.assertRaisesRegex(ValueError,"Could not verify native driver field"):
            patch_smali(child,init_status=0,login_status=0)
        patched,metadata=patch_smali(child,init_status=0,login_status=0,
                                    super_source=parent)
        self.assertEqual(metadata["native_handle_field_owner"],
                         "Lcom/popcap/pvz2cthddev/ThirdpartyPurchaseDriver;")
        self.assertIn("ThirdpartyPurchaseDriver;->mNativeDriverPtr:J",patched)

    def test_no_unspecified_native_signatures(self):
        with self.assertRaisesRegex(ValueError,"Expected static native"):
            patch_smali(BASE.replace("Native_SDKInitEnd(JI)V","Native_SDKInitEnd(J)V"),init_status=0,login_status=1)

    def test_no_ambiguous_run_methods(self):
        with self.assertRaisesRegex(ValueError,"Expected one instance run"):
            patch_smali(BASE+BASE[BASE.index(".method public run()V"):],init_status=0,login_status=0)

    def test_no_other_class(self):
        with self.assertRaisesRegex(ValueError,"Not the exact"):
            patch_smali(BASE.replace("TWPurchase;","NotTWPurchase;"),init_status=0,login_status=0)

    def test_invalid_status_refused(self):
        with self.assertRaisesRegex(ValueError,"Trial status"):
            patch_smali(BASE,init_status=2,login_status=1)

if __name__=="__main__":
    unittest.main()
