from pathlib import Path
import tempfile
import unittest

from scripts.offline.frida_signer_probe import summarize_traces


class FridaSignerTelemetryTests(unittest.TestCase):
    def test_records_only_known_event_names(self):
        with tempfile.TemporaryDirectory() as folder:
            p = Path(folder) / "private.txt"
            p.write_text(
                "Other debugger line with secret-token=123\n"
                "PVZ2_TRACE:JAVA_READY\n"
                "PVZ2_TRACE:java_getPackageInfo\n"
                "PVZ2_TRACE:java_getPackageInfo\n"
                "PVZ2_TRACE:secret-token=123\n"
            )
            result = summarize_traces(p)
            self.assertEqual(result["event_counts"]["java_getPackageInfo"], 2)
            self.assertTrue(result["java_hook_ready"])
            self.assertFalse(any("secret" in k for k in result["event_counts"]))
            self.assertFalse(result["raw_trace_uploaded"])


if __name__ == "__main__":
    unittest.main()
