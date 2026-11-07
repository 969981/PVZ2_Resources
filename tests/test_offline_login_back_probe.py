import unittest
from scripts.offline.login_back_probe import login_screen_verified

class OfflineLoginBackGateTests(unittest.TestCase):
    def test_real_login_text(self):
        frame = {"foreground":True,"ui_tree":{"described_nodes":[
          {"text":"请输入手机号注册/登录"},
          {"text":"请输入短信验证码"},
          {"text":"获取验证码"}
        ]}}
        self.assertTrue(login_screen_verified(frame))

    def test_no_unsafe_navigation_from_unknown_ui(self):
        self.assertFalse(login_screen_verified({"foreground":False,"ui_tree":{"described_nodes":[
          {"text":"请输入手机号注册/登录"},{"text":"请输入短信验证码"}
        ]}}))
        self.assertFalse(login_screen_verified({"foreground":True,"ui_tree":{"described_nodes":[
          {"text":"关卡选择"}
        ]}}))
