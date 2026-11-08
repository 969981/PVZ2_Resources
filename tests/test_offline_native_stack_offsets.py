"""Offline-only tests of bounded module relative callsite evidence."""
import unittest
from scripts.offline.consent_probe import validated_native_trace, validated_native_module_probe


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

    def test_probe_redacts_unsolicited_host_module_details(self):
        sample = {
            "status": "OBSERVED", "process_arch": "x64",
            "libsrc_mapped": False, "native_bridge_module_detected": True,
            "mapped_module_count": 218,
            "modules": [{"path": "/private/secret.so", "base": "0xdeadbeef"}],
            "raw_password": "must never export",
        }
        result = validated_native_module_probe(sample)
        self.assertEqual(result, {
            "status": "OBSERVED", "process_arch": "x64",
            "libsrc_mapped": False, "native_bridge_module_detected": True,
            "mapped_module_count": 218,
        })
        self.assertNotIn("modules", result)
        self.assertNotIn("raw_password", result)

    def test_missing_target_does_not_imply_guest_arm_was_not_executed(self):
        result = validated_native_trace({
            "status": "LIBSRC_NOT_MAPPED", "frames": [],
            "module_probe": {"status": "OBSERVED", "process_arch": "x64",
                             "libsrc_mapped": False,
                             "native_bridge_module_detected": True,
                             "mapped_module_count": 170},
        })
        self.assertEqual(result["status"], "LIBSRC_NOT_MAPPED")
        self.assertEqual(result["frames"], [])
        self.assertEqual(result["module_probe"]["process_arch"], "x64")

    def test_fuzzy_offsets_never_masquerade_as_accurate(self):
        result = validated_native_trace({
            "status": "OBSERVED_FUZZY", "backtracer": "FUZZY",
            "frames": ["0x1234", "0xDEADBEEF"],
        })
        self.assertEqual(result["status"], "OBSERVED_FUZZY")
        self.assertEqual(result["backtracer"], "FUZZY")
        self.assertEqual(result["frames"], ["0x1234", "0xdeadbeef"])

    def test_empty_observation_is_valid_but_not_hit(self):
        result=validated_native_trace({"status": "OBSERVED", "frames": []})
        self.assertEqual(result["frames"], [])
        self.assertEqual(result["status"], "OBSERVED")


if __name__ == "__main__":
    unittest.main()
