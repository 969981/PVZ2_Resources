import unittest
from scripts.offline.emulator_smoke import abi_decision, safe_failure

class EmulatorOfflineDiagnosticTest(unittest.TestCase):
    def test_native(self):
        self.assertEqual(abi_decision("x86_64,arm64-v8a","0"),("native","arm64-v8a"))
    def test_bridge(self):
        self.assertEqual(abi_decision("x86,x86_64","libndk_translation.so"),("bridge_candidate","libndk_translation.so"))
    def test_no_abi(self):
        self.assertEqual(abi_decision("x86,x86_64","0"),("unsupported",""))
    def test_install_failure(self):
        self.assertEqual(safe_failure("INSTALL_FAILED_NO_MATCHING_ABIS"),"INSTALL_FAILED_NO_MATCHING_ABIS")
