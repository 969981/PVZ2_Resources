"""Synthetic tests of the passive original APK resource-stage summarizer."""
import unittest

from scripts.offline.passive_original_observation import summarize
from scripts.offline.consent_probe import validated_sdk_lifecycle_event


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

    def test_instance_samples_are_distinguished_from_static(self):
        data = summarize([
            {"type": "TRACE_HOOKS_INSTALLED"},
            {"type": "RESOURCE_LOADING_STAGE", "current_stage": 0,
             "observation_source": "instance"},
            {"type": "RESOURCE_LOADING_STAGE", "time_hint": 7,
             "is_first_init": False, "observation_source": "static"},
            {"type": "RESOURCE_LOADING_STAGE", "time_hint": None,
             "observation_source": "instance"},
        ])
        self.assertEqual(data["numeric_stage_sample_count"], 2)
        self.assertEqual(data["field_observation_sources"],
                         {"static": 1, "instance": 1})
        self.assertEqual(data["distinct_stage_values"], [0])
        self.assertFalse(data["stage_changed_in_observation"])
        self.assertEqual(data["resource_stage_samples"][1]["is_first_init"], False)

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


    def test_real_lifecycle_timeline_is_only_observation(self):
        data = summarize([
            {"type": "TRACE_HOOKS_INSTALLED"},
            {"type": "SDK_LIFECYCLE_READY", "installed_overloads": 10},
            {"type": "SDK_LIFECYCLE_EVENT", "stage": "SDK_INIT",
             "phase": "ENTER", "elapsed_ms": 12},
            {"type": "SDK_LIFECYCLE_EVENT", "stage": "INIT_CALLBACK",
             "phase": "ENTER", "elapsed_ms": 25},
            {"type": "SDK_LIFECYCLE_EVENT", "stage": "JNI_INIT_END",
             "phase": "ENTER", "elapsed_ms": 30, "status_code": 0},
            {"type": "SDK_LIFECYCLE_EVENT", "stage": "SDK_LOGIN",
             "phase": "ENTER", "elapsed_ms": 31},
            {"type": "SDK_LIFECYCLE_EVENT", "stage": "JNI_LOGIN_END",
             "phase": "ENTER", "elapsed_ms": 45, "status_code": 1},
        ])
        self.assertEqual(data["sdk_lifecycle_hooks_installed"], 10)
        self.assertEqual(data["sdk_lifecycle_event_count"], 5)
        self.assertTrue(data["init_callback_observed"])
        self.assertFalse(data["login_callback_observed"])
        self.assertEqual(data["jni_init_end_status_codes"], [0])
        self.assertEqual(data["jni_login_end_status_codes"], [1])
        self.assertFalse(data["login_success_proven"])
        self.assertFalse(data["native_player_state_proven"])

    def test_sdk_sanitizer_strips_credentials_and_rejects_bogus_events(self):
        raw = {"type": "SDK_LIFECYCLE_EVENT", "stage": "JNI_LOGIN_END",
               "phase": "ENTER", "elapsed_ms": 37, "status_code": 0,
               "token": "secret", "user_id": "123", "native_ptr": "0x123",
               "receipt": "secret", "payload": '{"token":"hidden"}'}
        safe = validated_sdk_lifecycle_event(raw)
        self.assertEqual(safe, {
            "type": "SDK_LIFECYCLE_EVENT", "stage": "JNI_LOGIN_END",
            "phase": "ENTER", "elapsed_ms": 37, "status_code": 0,
        })
        for invalid in (
            {**raw, "stage": "UNLISTED"},
            {**raw, "stage": []},
            {**raw, "stage": {}},
            {**raw, "elapsed_ms": True},
            {**raw, "phase": "REWRITE"},
            {**raw, "elapsed_ms": -5},
            {**raw, "elapsed_ms": 99999999},
        ):
            self.assertIsNone(validated_sdk_lifecycle_event(invalid))
        self.assertEqual(
            validated_sdk_lifecycle_event(
                {**raw, "stage": "SDK_INIT", "status_code": 0}),
            {"type": "SDK_LIFECYCLE_EVENT", "stage": "SDK_INIT",
             "phase": "ENTER", "elapsed_ms": 37},
        )
        self.assertIsNone(validated_sdk_lifecycle_event(
            {"type": "SDK_LIFECYCLE_READY", "installed_overloads": True}
        ))

    def test_no_sdk_callbacks_does_not_imply_login_completed(self):
        data = summarize([
            {"type": "TRACE_HOOKS_INSTALLED"},
            {"type": "SDK_LIFECYCLE_READY", "installed_overloads": 0},
            {"type": "RESOURCE_LOADING_STAGE", "current_stage": 5,
             "observation_source": "static"},
        ])
        self.assertFalse(data["init_callback_observed"])
        self.assertFalse(data["login_callback_observed"])
        self.assertEqual(data["jni_login_end_status_codes"], [])
        self.assertFalse(data["login_success_proven"])
        self.assertFalse(data["native_player_state_proven"])


if __name__ == "__main__":
    unittest.main()
