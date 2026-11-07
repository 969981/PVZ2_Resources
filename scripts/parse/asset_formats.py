#!/usr/bin/env python3
"""Lossless, evidence-labelled PvZ2 file parsers (metadata only, no asset bytes written).

Parsers never infer gameplay meaning from an extension. Rich native formats such
as PTX/PAM/POPFX remain opaque unless separately converted by PopStudio/astcenc.
"""
from __future__ import annotations
from collections import Counter
import json
from pathlib import Path
import re
import struct
import xml.etree.ElementTree as ET

RTID=re.compile(r"RTID\(([^@()]+)@([^()]+)\)")
PNG_SIG=b"\x89PNG\r\n\x1a\n"
TEXT_LIMIT=16*1024*1024
try:
    from PIL import Image
except ImportError:
    Image=None

def _walk(value,prefix="",depth=0):
    if depth>36:return
    if isinstance(value,str):
        for m in RTID.finditer(value):
            yield (prefix,m.group(0),m.group(1),m.group(2))
    elif isinstance(value,dict):
        for k,v in value.items():
            yield from _walk(v,prefix+"/"+str(k)[:80],depth+1)
    elif isinstance(value,list):
        for i,v in enumerate(value):
            yield from _walk(v,prefix+"/"+str(i),depth+1)

def _json(path,max_refs):
    with path.open("r",encoding="utf-8-sig") as stream:root=json.load(stream)
    kinds=Counter()
    refs=[]
    ref_total=0
    alias_count=0
    objects=root.get("objects",[]) if isinstance(root,dict) else []
    if not isinstance(objects,list):objects=[]
    for i,obj in enumerate(objects):
        if not isinstance(obj,dict):continue
        cls=obj.get("objclass")
        if isinstance(cls,str):kinds[cls]+=1
        aliases=obj.get("aliases",[])
        if isinstance(aliases,(list,tuple)):alias_count+=sum(isinstance(x,str) for x in aliases)
        elif isinstance(aliases,str):alias_count+=1
        for field,rtid,alias,namespace in _walk(obj.get("objdata",{})):
            ref_total+=1
            if len(refs)<max_refs:
                refs.append((i,field,rtid,alias,namespace))
    if not objects:
        for field,rtid,alias,namespace in _walk(root):
            ref_total+=1
            if len(refs)<max_refs:refs.append((-1,field,rtid,alias,namespace))
    meta={"root_type":type(root).__name__,"root_keys":list(root)[:24] if isinstance(root,dict) else [],
          "game_objects":len(objects),"aliases":alias_count,
          "class_types":len(kinds),"rtid_total":ref_total,
          "rtid_exported":len(refs),"rtid_not_exported":ref_total-len(refs)}
    return "parsed-json",meta,kinds,refs

def _png(path):
    with path.open("rb") as f:
        hdr=f.read(33)
    if len(hdr)<33 or hdr[:8]!=PNG_SIG or hdr[12:16]!=b"IHDR":
        raise ValueError("not a PNG with an IHDR chunk")
    width,height,depth,color,compression,filtration,interlace=struct.unpack(">IIBBBBB",hdr[16:29])
    if not 0<width<=65535 or not 0<height<=65535 or color not in (0,2,3,4,6):
        raise ValueError("invalid PNG dimensions or colour type")
    meta={"width":width,"height":height,"bit_depth":depth,"color_type":color,
          "interlace":interlace,"pixel_decode":"not-run"}
    if Image is None:
        return "png-structural",meta,Counter(),[]
    try:
        with Image.open(path) as image:
            if image.size!=(width,height):raise ValueError("PIL width/height disagree with IHDR")
            image.load()
            meta["pixel_decode"]="Pillow load succeeded"
            meta["pillow_mode"]=image.mode
    except Exception as exc:
        raise ValueError("PNG pixel decode failed: "+str(exc)[:230]) from exc
    return "png-decoded",meta,Counter(),[]

def _riff(path):
    n=path.stat().st_size
    if n<12:raise ValueError("RIFF header is too short")
    with path.open("rb") as stream:
        head=stream.read(12)
        if head[:4] not in (b"RIFF",b"RIFX") or head[8:12]!=b"WAVE":
            return "unresolved",{"reason":"non-RIFF or non-WAVE WEM","prefix_hex":head.hex()},Counter(),[]
        order="<" if head[:4]==b"RIFF" else ">"
        declared=struct.unpack(order+"I",head[4:8])[0]+8
        chunks=[]
        fmt={}
        at=12
        while at+8<=n and len(chunks)<128:
            stream.seek(at)
            block=stream.read(8)
            tag,size=struct.unpack(order+"4sI",block)
            start=at+8
            end=start+size
            if end>n:
                return "riff-partial",{
                    "container":head[:4].decode(),"declared_total_bytes":declared,
                    "actual_bytes":n,"chunks":chunks[:40],"chunks_seen":len(chunks),
                    "wave_format":fmt,
                    "anomaly":{"offset":at,"tag_hex":tag.hex(),
                               "declared_chunk_bytes":size,"remaining_bytes":n-start,
                               "reason":"RIFF chunk length beyond source; Wwise variant/trailing data requires independent validation"},
                    "note":"Do NOT call this file corrupt or claim WAV playback without Wwise-specific validation"
                },Counter(),[]
            name=tag.decode("ascii","replace")
            chunks.append({"name":name,"bytes":size})
            if tag==b"fmt " and size>=16:
                stream.seek(start)
                blob=stream.read(min(size,32))
                wtag,channels,rate,byte_rate,align,bits=struct.unpack(order+"HHIIHH",blob[:16])
                fmt={"format_tag":wtag,"channels":channels,"sample_rate":rate,
                     "average_bytes_per_sec":byte_rate,"block_align":align,
                     "bits_per_sample":bits}
            at=end+(size%2)
        metadata={"container":head[:4].decode(),"declared_total_bytes":declared,
                  "actual_bytes":n,"riff_size_matches":declared==n,
                  "chunks":chunks[:40],"chunks_seen":len(chunks),"wave_format":fmt,
                  "note":"WEM container parsed; codec decoding and WAV playback not performed"}
        return "riff-structural",metadata,Counter(),[]

def _bnk(path):
    size=path.stat().st_size
    with path.open("rb") as f:
        first=f.read(4)
        if first!=b"BKHD":
            return "unresolved",{"reason":"BNK does not start with BKHD","prefix_hex":first.hex()},Counter(),[]
        pos=0
        sections={}
        chunks=[]
        while pos+8<=size and len(chunks)<128:
            f.seek(pos)
            tag,length=struct.unpack("<4sI",f.read(8))
            start=pos+8
            end=start+length
            if end>size:raise ValueError("BNK chunk exceeds source length")
            name=tag.decode("ascii","replace")
            chunks.append({"tag":name,"offset":start,"bytes":length})
            sections.setdefault(name,[]).append((start,length))
            pos=end
        trailer=size-pos
        warning=None
        if trailer>4:
            f.seek(pos)
            warning={"reason":"nonstandard BNK trailer; source remains intact",
                     "trailing_bytes":trailer,"trailer_prefix_hex":f.read(32).hex(),
                     "trailer_offset":pos}
        entries=0
        invalid=0
        if sections.get("DIDX") and sections.get("DATA"):
            didxstart,didxlen=sections["DIDX"][0]
            datastart,datalen=sections["DATA"][0]
            if didxlen%12:raise ValueError("DIDX not aligned to 12 bytes")
            f.seek(didxstart)
            for i in range(didxlen//12):
                buf=f.read(12)
                if len(buf)!=12:raise ValueError("incomplete DIDX entry")
                _,offset,length=struct.unpack("<III",buf)
                entries+=1
                if offset+length>datalen:invalid+=1
        if invalid:raise ValueError(str(invalid)+" DIDX ranges exceed DATA")
        return ("bnk-partial" if warning else "bnk-chunks-parsed"),{"chunk_count":len(chunks),"chunks":chunks[:30],
             "trailer_anomaly":warning,
             "embedded_wem_records":entries,"trailing_bytes":trailer,
             "note":"Bank metadata only; WEM streams not re-extracted here"},Counter(),[]

def _font(path):
    with path.open("rb") as f:
        hdr=f.read(12)
        if len(hdr)<12:raise ValueError("short sfnt directory")
        if hdr[:4] not in (b"\x00\x01\x00\x00",b"OTTO",b"true",b"typ1"):
            return "unresolved",{"reason":"unknown sfnt signature","prefix_hex":hdr[:4].hex()},Counter(),[]
        tables=struct.unpack(">H",hdr[4:6])[0]
        if tables>1024:raise ValueError("implausible table count")
        records=[]
        for _ in range(tables):
            r=f.read(16)
            if len(r)!=16:raise ValueError("short font table record")
            tag,_,offset,length=struct.unpack(">4sIII",r)
            if offset+length>path.stat().st_size:
                raise ValueError("font table exceeds file")
            records.append(tag.decode("ascii","replace"))
    return "sfnt-directory",{"table_count":tables,"table_tags":records[:90]},Counter(),[]

def _text(path,fmt):
    if path.stat().st_size>TEXT_LIMIT:
        return "opaque-preserved",{"reason":"text exceeds 16 MiB parsing safety threshold"},Counter(),[]
    raw=path.read_bytes()
    if raw.startswith((b"\xff\xfe",b"\xfe\xff")):
        text=raw.decode("utf-16")
        encoding="UTF-16-BOM"
    else:
        try:text=raw.decode("utf-8-sig");encoding="UTF-8"
        except UnicodeDecodeError:
            return "unresolved",{"reason":"non-UTF-8 text, encoding not assumed",
                                  "prefix_hex":raw[:16].hex()},Counter(),[]
    meta={"encoding":encoding,"lines":len(text.splitlines()),"characters":len(text)}
    if fmt=="XML":
        try:
            root=ET.fromstring(text)
        except ET.ParseError as exc:
            meta["xml_parse_error"]=str(exc)[:260]
            meta["note"]="XML contains unsupported entity/grammar; source remains unmodified"
            return "xml-partial",meta,Counter(),[]
        meta.update(root_tag=root.tag,element_count=sum(1 for _ in root.iter()))
        return "text-structure",meta,Counter(),[]
    if fmt=="INI":
        meta["section_headers"]=sum(line.lstrip().startswith("[") and line.rstrip().endswith("]")
                                    for line in text.splitlines())
        meta["assignments"]=sum("=" in line and not line.lstrip().startswith(("#",";"))
                                for line in text.splitlines())
    return "text-structure",meta,Counter(),[]

def inspect(path:Path,fmt:str,max_refs=24):
    """Return (status, metadata, Counter(objclass), sampled_refs).

    A parser error is returned as status parse-error; integrity failures are
    handled separately by the caller and are always fatal.
    """
    try:
        if fmt in ("JSON","PAM_JSON","BNK_JSON","RTON_JSON") or path.suffix.lower()==".json":
            return _json(path,max_refs)
        if fmt=="PNG" or path.suffix.lower()==".png":return _png(path)
        if fmt=="WEM" or path.suffix.lower()==".wem":return _riff(path)
        if fmt=="BNK" or path.suffix.lower()==".bnk":return _bnk(path)
        if fmt=="TTF" or path.suffix.lower()==".ttf":return _font(path)
        if fmt in ("INI","TXT","XML") or path.suffix.lower() in (".ini",".txt",".xml"):
            return _text(path,fmt)
        if fmt=="Lua" or path.suffix.lower()==".lua":
            with path.open("rb") as f:head=f.read(32)
            if head.startswith(b"\x1bLua"):
                return "lua-bytecode-header",{"lua_bytecode_version":head[4] if len(head)>4 else None,
                       "prefix_hex":head[:16].hex(),"code_decompiled":False},Counter(),[]
            return _text(path,"Lua")
        with path.open("rb") as f:prefix=f.read(32)
        return "opaque-preserved",{"format":fmt,"prefix_hex":prefix.hex(),
                "reason":"requires format-specific decoder or semantic renderer"},Counter(),[]
    except (ValueError,UnicodeError,struct.error,ET.ParseError,RecursionError,OverflowError) as exc:
        return "parse-error",{"error":str(exc)[:400],"format":fmt},Counter(),[]
