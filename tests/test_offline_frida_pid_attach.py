"""Synthetic, no-device checks for targeting Frida at the active Android PID."""
import unittest
from scripts.offline.consent_probe import pid_from_adb_output


class AndroidPidSelectionTest(unittest.TestCase):
    def test_single_pid(self):
        self.assertEqual(pid_from_adb_output("73192\n"), 73192)

    def test_multiple_pidof_matches(self):
        self.assertEqual(pid_from_adb_output("1245 1247"), 1245)

    def test_rejects_packages_and_empty(self):
        for s in ("", "com.popcap.pvz2cthdbk", "1245 unknown", "0"):
            self.assertIsNone(pid_from_adb_output(s))

    def test_rejects_non_pid_expressions(self):
        self.assertIsNone(pid_from_adb_output("1245;rm -rf /"))


if __name__ == "__main__":
    unittest.main()
