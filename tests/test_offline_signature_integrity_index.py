"""Synthetic-only signature and process exit site scan regression."""
import unittest
from scripts.offline.signature_integrity_index import scan_source, classify_path

class SignatureSiteIndexTests(unittest.TestCase):
    def test_redacts_credentials_and_fingerprint_literals(self):
        source='''package com.popcap.pvz2cthddev;
public class App {
 public void verify() {
   String secret = "DONT_EXPORT_THIS";
   PackageInfo info = pm.getPackageInfo(packageName, PackageManager.GET_SIGNATURES);
   if (bad) System.exit(0);
 }
}'''
        rows=scan_source("com/popcap/pvz2cthddev/App.java",source,"0"*64)
        cats={x["category"] for x in rows}
        self.assertIn("SIGNER_ACCESS",cats)
        self.assertIn("GET_PACKAGE_SIGNATURES",cats)
        self.assertIn("PROCESS_TERMINATION",cats)
        self.assertTrue(all("DONT_EXPORT_THIS" not in str(r) for r in rows))
        self.assertTrue(all(r["first_party_or_sdk"]=="POPCAP_GAME" for r in rows))
    def test_no_false_positive_from_strings(self):
        source='String a = "getPackageInfo() getSigningCertificateHistory()";'
        self.assertEqual(scan_source("com/tw/sdk/Foo.java",source,"f"*64),[])
        self.assertEqual(classify_path("com/tw/sdk/Foo.java"),"TWGAME_SDK")
