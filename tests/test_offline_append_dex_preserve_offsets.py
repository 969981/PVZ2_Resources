"""Synthetic ZIP tests only. Never includes an original APK or commercial assets."""
import pathlib
import tempfile
import unittest
import zipfile
from scripts.offline.append_dex_preserve_zip_offsets import replace_one_dex

class AppendDexPreserveOffsetsTest(unittest.TestCase):
    def test_preserves_original_resource_offsets_and_only_replaces_dex(self):
        with tempfile.TemporaryDirectory() as td:
            base=pathlib.Path(td)
            src=base/"original.apk"
            replacement=base/"changed.dex"
            replacement.write_bytes(b"dex\n035\0"+b"\x01"*400)
            with zipfile.ZipFile(src,"w") as z:
                z.writestr("classes.dex",b"original dex"+b"\0"*50,
                           compress_type=zipfile.ZIP_DEFLATED)
                z.writestr("assets/rsb/content.bin",b"game resource A"*500,
                           compress_type=zipfile.ZIP_STORED)
                z.writestr("lib/arm64-v8a/libSrc.so",b"native original"*100,
                           compress_type=zipfile.ZIP_STORED)
                z.writestr("META-INF/CERT.RSA",b"old signature")
                z.writestr("META-INF/CERT.SF",b"old signature sf")
            out=base/"trial.apk"
            report=replace_one_dex(src,replacement,"classes.dex",out)
            self.assertEqual(report["untouched_entry_offset_mismatches"],0)
            with zipfile.ZipFile(src) as a,zipfile.ZipFile(out) as b:
                self.assertEqual(b.namelist().count("classes.dex"),1)
                self.assertNotIn("META-INF/CERT.RSA",b.namelist())
                self.assertEqual(b.read("classes.dex"),replacement.read_bytes())
                self.assertEqual(b.read("assets/rsb/content.bin"),
                                 a.read("assets/rsb/content.bin"))
                for name in ("assets/rsb/content.bin","lib/arm64-v8a/libSrc.so"):
                    self.assertEqual(b.getinfo(name).header_offset,
                                     a.getinfo(name).header_offset)
            self.assertGreater(out.stat().st_size,100)
            self.assertNotEqual(src.read_bytes(),out.read_bytes())

    def test_refuses_same_file_and_unknown_dex(self):
        with tempfile.TemporaryDirectory() as td:
            p=pathlib.Path(td)
            original=p/"old.apk"
            with zipfile.ZipFile(original,"w") as f:
                f.writestr("classes.dex",b"abc")
            dex=p/"new.dex";dex.write_bytes(b"dex")
            with self.assertRaisesRegex(ValueError,"overwrite"):
                replace_one_dex(original,dex,"classes.dex",original)
            with self.assertRaisesRegex(ValueError,"exact six"):
                replace_one_dex(original,dex,"classes7.dex",p/"out.apk")
