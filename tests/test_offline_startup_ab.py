"""No synthetic A/B conclusion may be promoted to confirmed game playability."""
import unittest
from scripts.offline.compare_startup_ab import compare, summarize


class StartupABTests(unittest.TestCase):
    def test_observed_warning_and_exit_diverge(self):
        original = {
            "frida_status": "attached",
            "process_alive_at_checkpoints": [True, True],
            "integrity_warning_at_checkpoints": [False, False],
        }
        rebuilt = {
            "frida_status": "attached",
            "after_consent": [
                {"process_alive": True, "integrity_warning_seen": True},
                {"process_alive": False, "integrity_warning_seen": True},
            ],
            "frida_warning_events": [
                {"type": "INTEGRITY_ALERT_REQUEST"},
                {"type": "GAME_EXIT_REQUEST"},
            ],
        }
        report = compare(original, rebuilt)
        self.assertTrue(report["observable_startup_divergence"])
        self.assertTrue(report["warning_diverges"])
        self.assertTrue(report["survival_diverges"])
        self.assertFalse(report["specific_integrity_branch_verified"])
        self.assertFalse(report["offline_playable_verified"])

    def test_frida_alert_outweighs_clean_screenshot(self):
        """A transient warning cannot be hidden by a later clean sample."""
        report = summarize({
            "integrity_warning_at_checkpoints": [False, False],
            "after_consent": [{"integrity_warning_seen": False}],
            "frida_warning_events": [{"type": "INTEGRITY_ALERT_REQUEST"}],
        })
        self.assertTrue(report["integrity_warning_observed"])

    def test_conflicting_samples_preserve_positive_warning(self):
        report = summarize({
            "integrity_warning_at_checkpoints": [False],
            "after_consent": [{"integrity_warning_seen": True}],
        })
        self.assertTrue(report["integrity_warning_observed"])

    def test_missing_evidence_is_not_interpreted_as_no_warning(self):
        report = compare({}, {})
        self.assertIsNone(report["original"]["integrity_warning_observed"])
        self.assertFalse(report["warning_diverges"])
        self.assertFalse(report["observable_startup_divergence"])

    def test_observed_survival_does_not_prove_main_menu(self):
        summary = summarize({"after_consent": [{"process_alive": True}]})
        self.assertTrue(summary["alive_at_all_observed_checkpoints"])
        self.assertFalse(summary["main_menu_verified"])

    def test_boolean_coercions_do_not_invent_evidence(self):
        summary = summarize({
            "process_alive_at_checkpoints": [1, "true"],
            "integrity_warning_at_checkpoints": ["false"],
        })
        self.assertIsNone(summary["alive_at_all_observed_checkpoints"])
        self.assertIsNone(summary["integrity_warning_observed"])

    def test_rejects_non_object_input(self):
        with self.assertRaises(ValueError):
            summarize([])


if __name__ == "__main__":
    unittest.main()
