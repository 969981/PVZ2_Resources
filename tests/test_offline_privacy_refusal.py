import unittest
from scripts.offline.privacy_refusal_probe import privacy_gate_present

class PrivacyGateTest(unittest.TestCase):
    def test_detect(self):
        frame={"ui_tree":{"status":"success","described_nodes":[{"text":"隐私政策","content_desc":""}]}}
        self.assertTrue(privacy_gate_present(frame))
    def test_no_unverified_click(self):
        self.assertFalse(privacy_gate_present({"ui_tree":{"status":"unavailable"}}))
        self.assertFalse(privacy_gate_present({"ui_tree":{"status":"success","described_nodes":[{"text":"游戏主菜单"}]}}))
