"""Synthetic, no-device consent flow gating tests."""
import unittest
from scripts.offline.consent_probe import screen_dimensions_ok, screen_is_privacy_policy, AGREE_X, AGREE_Y, POLICY_PALETTE, privacy_palette_matches, COMPACT_POLICY_PALETTE, privacy_compact_palette_matches


class ConsentGuardTest(unittest.TestCase):
    def test_privacy_confirmed(self):
        frame = {"ui_tree": {"status": "success",
                  "described_nodes": [{"text": "隐私政策", "content_desc": ""}]}}
        self.assertTrue(screen_is_privacy_policy(frame))

    def test_not_privacy(self):
        self.assertFalse(screen_is_privacy_policy({"ui_tree": {"status": "unavailable"}}))
        self.assertFalse(screen_is_privacy_policy({"ui_tree": {"status": "success",
            "described_nodes": [{"text": "游戏主菜单", "content_desc": ""}]}}))

    def test_expected_original_landscape_resolution(self):
        self.assertTrue(screen_dimensions_ok({"image_info": {"width": 2340, "height": 1080}}))
        self.assertFalse(screen_dimensions_ok({"image_info": {"width": 1080, "height": 2340}}))

    def test_agree_coordinate_on_actual_screen(self):
        self.assertTrue(1200 <= AGREE_X <= 1600)
        self.assertTrue(850 <= AGREE_Y <= 1000)

    def test_second_real_dialog_layout(self):
        expected = {(x,y):color for x,y,color in COMPACT_POLICY_PALETTE}
        self.assertEqual(privacy_compact_palette_matches(lambda p: expected[p]), 6)
        self.assertEqual(privacy_compact_palette_matches(lambda p: (0,0,0)), 0)

    def test_privacy_palette(self):
        valid = {(x, y): color for x, y, color in POLICY_PALETTE}
        self.assertEqual(privacy_palette_matches(lambda coordinate: valid[coordinate]), 8)
        # A wrong screen must not accidentally pass the test.
        self.assertEqual(privacy_palette_matches(lambda coordinate: (0, 0, 0)), 0)


if __name__ == "__main__":
    unittest.main()
