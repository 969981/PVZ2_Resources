"""No-emulator tests for long offline extraction diagnostics."""
import unittest
from scripts.offline.extraction_monitor import bar_progress_fraction, parse_disk_df


class OfflineExtractionMonitorTests(unittest.TestCase):
    def test_df(self):
        s = "Filesystem 1K-blocks Used Available Use% Mounted on\n/dev/block/dm-13 10500000 4000000 6500000 38% /data\n"
        self.assertEqual(parse_disk_df(s)["available_kib"], 6500000)
        self.assertEqual(parse_disk_df("Permission denied")["status"], "unavailable")

    def test_bar_fraction(self):
        # A synthetic green band occupies 575..870 of the original 575..1780 bar.
        def green(pos):
            x, y = pos
            return (40, 218, 40) if 575 <= x <= 870 and y == 920 else (10, 10, 10)
        value = bar_progress_fraction(green)
        self.assertTrue(0.20 < value < 0.30)
        self.assertIsNone(bar_progress_fraction(lambda pos: (0, 0, 0)))


if __name__ == "__main__":
    unittest.main()
