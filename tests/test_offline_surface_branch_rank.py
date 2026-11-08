"""Synthetic metadata-only surface branch proximity ranking."""
import unittest
from scripts.offline.rank_surface_branch_candidates import rank, parse_addr


class SurfaceBranchRankTests(unittest.TestCase):
    def test_proximity_to_candidate_pointer(self):
        rows = [
            {"type": "entry", "query_jni_pointer": "05722ff0",
             "function_entry": "057227f0"},
            {"type": "conditional_branch", "instruction_address": "05722ff8",
             "last_callsite": "05722ff0", "mnemonic": "CBNZ",
             "flow_targets": "05723020"},
            {"type": "conditional_branch", "instruction_address": "057239f8",
             "last_callsite": "05723940", "mnemonic": "B.EQ",
             "flow_targets": "05723a10"},
        ]
        report = rank(rows)
        self.assertEqual(report["conditional_branches_total"], 2)
        self.assertEqual(report["top_candidates"][0]["rva"], "0x5722ff8")
        self.assertEqual(report["top_candidates"][0]["relative_to_jni_pointer_bytes"], 8)
        self.assertFalse(report["actual_signature_or_login_branch_verified"])

    def test_one_hop_caller_is_static_metadata_not_causal_proof(self):
        rows = [
            {"type": "entry", "query_jni_pointer": "05722ff0",
             "function_entry": "057227f0"},
            {"type": "conditional_branch", "instruction_address": "0568d410",
             "last_callsite": "0568d400", "mnemonic": "CBZ",
             "flow_targets": "0568d470",
             "function_name": "FUN_0568d380", "function_entry": "0568d380",
             "scope": "ONE_HOP_STATIC_CALLER"},
        ]
        report = rank(rows)
        self.assertTrue(report["one_hop_caller_branches_present"])
        candidate = report["top_candidates"][0]
        self.assertEqual(candidate["source_function_name"], "FUN_0568d380")
        self.assertEqual(candidate["scope"], "ONE_HOP_STATIC_CALLER")
        self.assertFalse(candidate["last_callsite_is_proven_predecessor"])
        self.assertFalse(report["actual_signature_or_login_branch_verified"])

    def test_invalid_hex_rejected(self):
        for x in ("", "../oops", "none", "0xZZZZ"):
            with self.assertRaises(ValueError):
                parse_addr(x)

    def test_missing_pointer_rejected(self):
        with self.assertRaises(ValueError):
            rank([])


if __name__ == "__main__":
    unittest.main()
