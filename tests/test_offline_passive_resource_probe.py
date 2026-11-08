"""Synthetic tests of the passive original APK resource-stage summarizer."""
import unittest

from scripts.offline.passive_original_observation import summarize


class PassiveResourceProbeTests(unittest.TestCase):
    def test_control_never_infers_gameplay_from_stage(self):
        data = summarize([
            {"type": "TRACE_HOOKS_INSTALLED"},
            {"type": "RESOURCE_LOADING_STAGE", "current_stage": 1, "time_hint": 3},
            {"type": "RESOURCE_LOADING_STAGE", "current_stage": 1, "time_hint": 3},
        ])
        self.assertTrue(data["frida_script_loaded"])
        self.assertTrue(data["stage_field_observed"])
        self.assertFalse(data["stage_changed_in_observation"])
        self.assertEqual(data["distinct_stage_values"], [1])

    def test_missing_fields_cannot_look_like_success(self):
        data = summarize([
            {"type": "TRACE_HOOK_ERROR", "source": "PassiveResourceObserver",
             "error_kind": "resource_fields_unavailable"},
            {"type": "RESOURCE_LOADING_STAGE", "is_first_init": False},
        ])
        self.assertFalse(data["frida_script_loaded"])
        self.assertFalse(data["stage_field_observed"])
        self.assertEqual(data["numeric_stage_sample_count"], 0)
        self.assertEqual(len(data["resource_field_errors"]), 1)

    def test_rejects_unbounded_and_boolean_numeric(self):
        data = summarize([
            {"type": "TRACE_HOOKS_INSTALLED"},
            {"type": "RESOURCE_LOADING_STAGE", "current_stage": True, "time_hint": -100},
            {"type": "RESOURCE_LOADING_STAGE", "current_stage": 2, "time_hint": 4},
            {"type": "RESOURCE_LOADING_STAGE", "current_stage": 3, "time_hint": 0},
        ])
        self.assertTrue(data["stage_changed_in_observation"])
        self.assertEqual(data["numeric_stage_sample_count"], 2)
        self.assertEqual(data["distinct_stage_values"], [2, 3])


if __name__ == "__main__":
    unittest.main()
