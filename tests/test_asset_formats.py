"""Original synthetic fixtures; never use or distribute commercial game assets."""
import json
from pathlib import Path
import struct
import tempfile
import unittest
import zlib
from scripts.parse.asset_formats import inspect

def png():
    def chunk(kind,data):
        return struct.pack(">I",len(data))+kind+data+struct.pack(">I",zlib.crc32(kind+data)&0xffffffff)
    return (b"\x89PNG\r\n\x1a\n"+
            chunk(b"IHDR",struct.pack(">IIBBBBB",1,1,8,2,0,0,0))+
            chunk(b"IDAT",zlib.compress(b"\x00\xff\x00\x00"))+
            chunk(b"IEND",b""))

class ParseFormatsTest(unittest.TestCase):
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory();self.addCleanup(self.tmp.cleanup)
        self.p=Path(self.tmp.name)
    def write(self,name,data):
        f=self.p/name
        f.write_bytes(data)
        return f
    def test_game_object_json_and_sampled_rtid(self):
        f=self.write("obj.json",json.dumps({"objects":[{"objclass":"LevelDefinition",
          "aliases":["lvl1"],"objdata":{"Name":"[LEVEL_NAME]","Modules":["RTID(A@CurrentLevel)"]}}]}).encode())
        status,meta,classes,refs=inspect(f,"JSON")
        self.assertEqual(status,"parsed-json")
        self.assertEqual(meta["game_objects"],1)
        self.assertEqual(meta["rtid_total"],1)
        self.assertEqual(classes["LevelDefinition"],1)
        self.assertEqual(refs[0][4],"CurrentLevel")
    def test_png_pixels(self):
        f=self.write("p.png",png())
        status,meta,_,_=inspect(f,"PNG")
        self.assertIn(status,("png-decoded","png-structural"))
        self.assertEqual(meta["width"],1)
    def test_wem_riff(self):
        fmt=struct.pack("<HHIIHH",1,1,22050,44100,2,16)
        body=b"WAVE"+b"fmt "+struct.pack("<I",16)+fmt+b"data"+struct.pack("<I",2)+b"\x00\x00"
        f=self.write("a.wem",b"RIFF"+struct.pack("<I",len(body))+body)
        status,meta,_,_=inspect(f,"WEM")
        self.assertEqual(status,"riff-structural")
        self.assertEqual(meta["wave_format"]["sample_rate"],22050)
    def test_bnk_chunk_and_wem_count(self):
        def ch(tag,data):return tag+struct.pack("<I",len(data))+data
        payload=ch(b"BKHD",b"\x00"*8)+ch(b"DIDX",struct.pack("<III",100,0,4))+ch(b"DATA",b"RIFF")
        status,meta,_,_=inspect(self.write("a.bnk",payload),"BNK")
        self.assertEqual(status,"bnk-chunks-parsed")
        self.assertEqual(meta["embedded_wem_records"],1)
    def test_bnk_not_bkhd_unresolved(self):
        self.assertEqual(inspect(self.write("odd.bnk",b"????"),"BNK")[0],"unresolved")
    def test_lua(self):
        status,meta,_,_=inspect(self.write("a.lua",b"\x1bLua\x54\x00"),"Lua")
        self.assertEqual(status,"lua-bytecode-header")
        self.assertEqual(meta["lua_bytecode_version"],0x54)
    def test_ini_and_xml(self):
        f=self.write("c.ini",b"[General]\na=3\n")
        self.assertEqual(inspect(f,"INI")[1]["assignments"],1)
        self.assertEqual(inspect(self.write("x.xml",b"<root><child/></root>"),"XML")[1]["element_count"],2)
    def test_ptx_preserved_not_falsely_decoded(self):
        self.assertEqual(inspect(self.write("raw.ptx",b"\x99"*32),"PTX")[0],"opaque-preserved")
if __name__=="__main__":
    unittest.main()
