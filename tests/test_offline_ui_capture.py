import unittest
from scripts.offline.emulator_ui_capture import png_info, hash_data

class UICaptureTest(unittest.TestCase):
    def test_png_meta(self):
        raw = bytes.fromhex("89504e470d0a1a0a") + b"\x00\x00\x00\x0dIHDR" + (1280).to_bytes(4, "big") + (720).to_bytes(4, "big")
        info = png_info(raw)
        self.assertEqual(info["width"], 1280)
        self.assertEqual(info["height"], 720)
        self.assertEqual(len(info["sha256"]), 64)
    def test_bad_png(self):
        self.assertIsNone(png_info(b"not an image"))
        self.assertIsNone(png_info(bytes.fromhex("89504e470d0a1a0a") + b"x"*16))
