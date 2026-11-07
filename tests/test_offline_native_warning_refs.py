"""Synthetic binary string-locator tests."""
import io
import tempfile
import unittest
from pathlib import Path
from zipfile import ZipFile
from scripts.offline.find_native_warning_refs import NEEDLES, offsets, scan


class NativeWarningRefs(unittest.TestCase):
    def test_cross_chunk_matching(self):
        data=b"x"*(1024*1024-5)+b"check_sign_failed"
        entries=offsets(io.BytesIO(data),NEEDLES)
        self.assertTrue(any(x["kind"]=="check_sign_failed" and
                            x["offset"]==1024*1024-5 for x in entries))

    def test_scans_dex_and_so_only(self):
        with tempfile.TemporaryDirectory() as temp:
            p=Path(temp)/"fixture.apk"
            with ZipFile(p,"w") as z:
                z.writestr("classes.dex",b"check_sign_failed")
                z.writestr("lib/arm64-v8a/libnative.so",b"check_sign_failed")
                z.writestr("resources.arsc",b"check_sign_failed")
            report=scan(p)
        self.assertEqual(report["dex_and_so_examined"],2)
        self.assertEqual(len(report["matching_members"]),2)
        self.assertFalse(report["anti_tamper_cause_verified"])


if __name__=="__main__":
    unittest.main()
