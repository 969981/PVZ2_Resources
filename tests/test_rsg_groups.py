"""Synthetic test of RSB->RSG group extraction; no copyrighted input."""
import sys
import struct
from pathlib import Path
import tempfile
import unittest
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/"scripts"/"unpack"))
from extract_rsg_groups import run

class TestRSG(unittest.TestCase):
    def test_two_contiguous_groups(self):
        header=[0]*27
        header[0]=struct.unpack("<I",b"1bsr")[0]
        header[1]=4
        header[10]=2
        header[11]=0x100
        header[12]=0xB0
        file=bytearray(0x3000)
        file[:108]=struct.pack("<27I",*header)
        for i in range(2):
            off=0x100+i*0xB0
            name=f"RSG_TEST_{i}".encode()
            file[off:off+len(name)]=name
            struct.pack_into("<II",file,off+0x80,(i+1)*0x1000,0x1000)
            file[(i+1)*0x1000:(i+1)*0x1000+4]=b"pgsr"
        with tempfile.TemporaryDirectory() as d:
            root=Path(d)
            source=root/"RSB"
            source.mkdir()
            (source/"sample.rsb").write_bytes(file)
            result=run(source,root/"RSG",2,None,False)
            self.assertEqual(result["summary"]["rsb_failures"],0)
            self.assertEqual(result["summary"]["groups"],2)
            self.assertEqual(result["summary"]["group_failure"],0)
            self.assertEqual((root/"RSG"/"sample"/"00001.rsg").read_bytes()[:4],b"pgsr")
if __name__=="__main__":
    unittest.main()
