"""Synthetic first-party login method call-graph regression tests, no game code."""
from pathlib import Path
import tempfile
import unittest

from scripts.offline.inspect_login_flow import java_methods, analyze, remove_java_literals


class LoginFlowMetadataTests(unittest.TestCase):
    def test_method_invokes_not_raw_strings(self):
        source = """
public class GameSDK {
    public boolean login(String phone, String smsCode) {
        String secret = "https://secret.invalid/abc";
        if (Tools.haveInternet()) {
            RequestUtils.twgameLogin(phone);
        }
        return false;
    }
}
"""
        out = java_methods(source, "com/tw/gamesdk/core/GameSDK.java", "0"*64)
        row = next(x for x in out if x["method"] == "login")
        self.assertEqual(row["arity_hint"], 2)
        self.assertIn("LOGIN", row["role_hints"])
        self.assertIn("Tools.haveInternet", row["outbound_methods"])
        self.assertIn("RequestUtils.twgameLogin", row["outbound_methods"])
        self.assertNotIn("secret.invalid", str(row))
        self.assertEqual(row["branch_count_hint"], 1)

    def test_literal_removal(self):
        source = 'String s="getToken(secret)"; saveUserInfo();'
        scrub = remove_java_literals(source)
        self.assertNotIn("getToken", scrub)
        self.assertIn("saveUserInfo", scrub)

    def test_missing_sources_fail_closed(self):
        with tempfile.TemporaryDirectory() as t:
            root = Path(t)
            result = analyze(root, root/"out")
            self.assertEqual(result["source_path_found"], 0)
            self.assertEqual(result["methods_indexed"], 0)


if __name__ == "__main__":
    unittest.main()
