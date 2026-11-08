"""Synthetic evidence classification tests; real Android remains decisive."""
import unittest

from scripts.offline.consent_probe import (
    PACKAGE, classify_runtime, redact_evidence_line, summarize_logcat_text,
)


class OfflineRuntimeDiagnosticsTests(unittest.TestCase):
    def test_android_anr_is_failure_even_before_process_exits(self):
        frames = [{"process_alive": True, "anr_dialog_seen": True}]
        self.assertEqual(classify_runtime(frames, {"counts": {"activity_anr": 0}}),
                         "FAIL_ANDROID_ANR")

    def test_integrity_warning_precedes_exit_classification(self):
        frames = [{"process_alive": True, "integrity_warning_seen": True}]
        self.assertEqual(classify_runtime(frames, {"counts": {}}),
                         "FAIL_INTEGRITY_WARNING")

    def test_frida_alert_takes_priority_when_ui_misses_it(self):
        frames = [{"process_alive": True, "integrity_warning_seen": False}]
        events = [{"type": "INTEGRITY_ALERT_REQUEST"}]
        self.assertEqual(
            classify_runtime(frames, {"counts": {"activity_anr": 0}}, events),
            "FAIL_INTEGRITY_WARNING")

    def test_untrusted_frida_values_do_not_invent_alert(self):
        frames = [{"process_alive": True, "integrity_warning_seen": False}]
        self.assertEqual(
            classify_runtime(frames, {"counts": {}},
                             [{"type": "UNRELATED"}, "INTEGRITY_ALERT_REQUEST"]),
            "RUNTIME_OBSERVED_GAMEPLAY_NOT_VERIFIED")

    def test_anr_from_logcat_is_failure(self):
        summary = summarize_logcat_text(
            "W/ActivityManager: ANR in " + PACKAGE + "\n"
            "Reason: Input dispatching timed out\n")
        self.assertEqual(summary["counts"]["activity_anr"], 1)
        self.assertEqual(classify_runtime([{"process_alive": True}], summary),
                         "FAIL_ANDROID_ANR")
        self.assertTrue(summary["bounded_runtime_events"])

    def test_process_exit_is_failure_without_native_crash(self):
        self.assertEqual(
            classify_runtime([{"process_alive": False}], {"counts": {}}),
            "FAIL_GAME_PROCESS_EXITED")

    def test_alive_is_observation_not_gameplay_acceptance(self):
        self.assertEqual(
            classify_runtime([{"process_alive": True}], {"counts": {}}),
            "RUNTIME_OBSERVED_GAMEPLAY_NOT_VERIFIED")

    def test_redact_bounded_evidence(self):
        line = "ANR http://test.invalid/abc someone@example.org 10.11.12.13 " + "x" * 800
        result = redact_evidence_line(line)
        self.assertLessEqual(len(result), 280)
        for token in ("http", "someone@", "10.11.12.13"):
            self.assertNotIn(token, result)


if __name__ == "__main__":
    unittest.main()
