import tempfile
from pathlib import Path
import unittest

from scripts.offline.smali_gate_index import ROOTS, analyze, scan_file

class GateIndexerTests(unittest.TestCase):
    def test_warning_and_exit_same_method_ranked_without_raw_source(self):
        with tempfile.TemporaryDirectory() as directory:
            source = Path(directory)/"source"
            for name in ROOTS:
                (source/name).mkdir(parents=True)
            file = source/"smali/example/Gate.smali"
            file.parent.mkdir(parents=True)
            file.write_text(
                '.class public Lexample/Gate;\n'
                '.method public run()V\n'
                '  const-string v0, "盗版游戏随时可能会崩溃"\n'
                '  invoke-static {v1}, Ljava/lang/System;->exit(I)V\n'
                '.end method\n', encoding="utf-8"
            )
            matches=scan_file(file,source)
            self.assertEqual(len(matches),1)
            self.assertIn("EXIT_PATH",matches[0]["categories"])
            self.assertIn("PIRACY_WARNING",matches[0]["categories"])
            self.assertGreater(matches[0]["triage_score"],100)
            out=Path(directory)/"out"
            result=analyze(source,out)
            self.assertEqual(result["smali_files_scanned"],1)
            self.assertFalse(result["signature_validation_cause_verified"])
            self.assertNotIn("盗版游戏",(out/"smali_gate_candidates.json").read_text())

    def test_in_source_output_refused(self):
        with tempfile.TemporaryDirectory() as directory:
            path=Path(directory)
            with self.assertRaises(ValueError):
                analyze(path,path/"nested")

if __name__=="__main__":
    unittest.main()
