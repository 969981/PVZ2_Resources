"""Synthetic metadata-only test for native surface-creation string mapping."""
import unittest
from scripts.offline.surface_jni_registration import mapped_name_offsets


class SurfaceJNIMappingTest(unittest.TestCase):
    def test_exact_null_terminated_bridges(self):
        data = (b"prefix\x00Native_onSurfaceCreated\x00"
                b"UI_ShowAlertDialog\x00Device_ExitApp\x00")
        seg = [{"off": 0, "va": 0x1000,
                "size": len(data), "flags": 4}]
        rows = mapped_name_offsets(data, seg)
        self.assertEqual([x["name"] for x in rows],
                         ["Native_onSurfaceCreated", "UI_ShowAlertDialog",
                          "Device_ExitApp"])
        self.assertEqual(int(rows[0]["name_literal_rva"], 16), 0x1007)

    def test_no_partial_suffix_match(self):
        data = b"Native_onSurfaceCreatedSuffix\x00"
        segments = [{"off": 0, "va": 0x0, "size": len(data), "flags": 4}]
        self.assertEqual(mapped_name_offsets(data, segments), [])


if __name__ == "__main__":
    unittest.main()
