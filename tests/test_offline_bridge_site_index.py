import unittest
from scripts.offline.bridge_site_index import collect_source_events, remove_java_strings

class OfflineBridgeSiteIndexTest(unittest.TestCase):
    def test_metadata_only_callsite(self):
        source = """
package com.popcap.game;
public class Launch {
 public void start() {
  String password = "secret";
  GameSDK.getInstance().login(callback);
  TwPay.loginSdk(context, callback);
  Native_applicationDidFinishLaunching();
 }
}
"""
        rows=collect_source_events("com/popcap/game/Launch.java",source,"f"*64)
        labels=[r["event"] for r in rows]
        self.assertIn("GAME_SDK_INSTANCE",labels)
        self.assertIn("TW_PAY_LOGIN",labels)
        self.assertIn("NATIVE_GAME_LIFECYCLE",labels)
        self.assertTrue(all("secret" not in str(r) for r in rows))
        self.assertTrue(all("password" not in str(r) for r in rows))

    def test_cannot_match_string_embedded_http_or_sdk_name(self):
        source='String note = "TwPay.loginSdk(token)";'
        rows=collect_source_events("com/tw/game/Api.java",source,"f"*64)
        self.assertEqual(rows,[])
        self.assertNotIn("TwPay.loginSdk",remove_java_strings(source))
