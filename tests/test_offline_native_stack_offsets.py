"""Offline-only tests of bounded module relative callsite evidence."""
import unittest
from scripts.offline.consent_probe import validated_native_trace


class NativeStackTraceTests(unittest.TestCase):
    def test_keeps_only_valid_relative_rvas(self):
        result = validated_native_trace({
            "status": "OBSERVED",
            "module": "libSrc.so",
            "frames": ["0x05722ff0", "0Xabc", "../secret", "0x23", 12],
        })
        self.assertEqual(result["module"], "libSrc.so")
        self.assertEqual(result["frames"], ["0x05722ff0", "0x23"])

    def test_rejects_unknown_object(self):
        self.assertEqual(validated_native_trace("secret")["status"], "MISSING")
        self.assertEqual(validated_native_trace({"status": "OTHER"})["status"], "INVALID")

    def test_empty_observation_is_valid_but_not_hit(self):
        result=validated_native_trace({"status": "OBSERVED", "frames": []})
        self.assertEqual(result["frames"], [])
        self.assertEqual(result["status"], "OBSERVED")


if __name__ == "__main__":
    unittest.main()
