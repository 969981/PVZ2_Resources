#!/usr/bin/env python3
"""Verify Git submodules against pinned tools/upstreams.json and .gitmodules."""
from __future__ import annotations
import argparse
import configparser
import json
from pathlib import Path
import re
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[2]
PIN = re.compile(r"^[0-9a-f]{40}$")

def git(*args: str, cwd: Path = ROOT) -> str:
    return subprocess.check_output(["git", "-C", str(cwd), *args],
                                   stderr=subprocess.STDOUT, text=True).strip()

def check() -> int:
    registry = json.loads((ROOT / "tools/upstreams.json").read_text(encoding="utf-8"))
    cfg = configparser.ConfigParser(interpolation=None)
    if not cfg.read(ROOT / ".gitmodules", encoding="utf-8"):
        raise FileNotFoundError(".gitmodules")
    errors = []
    seen = set()
    for item in registry["tools"]:
        name, path, pin = item["name"], item["path"], item["sha"]
        section = 'submodule "' + path + '"'
        if name in seen:
            errors.append("duplicate name: " + name)
        seen.add(name)
        if not path.startswith("tools/") or not PIN.fullmatch(pin):
            errors.append("bad path or SHA: " + name)
            continue
        if not cfg.has_section(section):
            errors.append("missing submodule section: " + path)
            continue
        for key, target in (("path", path), ("url", item["url"]), ("branch", item["branch"])):
            if cfg.get(section, key, fallback=None) != target:
                errors.append("config " + key + " mismatch: " + path)
        line = git("ls-tree", "HEAD", "--", path)
        parts = line.split()
        if len(parts) < 3 or parts[0] != "160000" or parts[1] != "commit":
            errors.append("not a pinned gitlink: " + path)
        elif parts[2] != pin:
            errors.append("gitlink revision differs from registry: " + path)
        child = ROOT / path
        if (child / ".git").exists():
            try:
                actual = git("rev-parse", "HEAD", cwd=child)
                if actual != pin:
                    errors.append("initialized checkout does not match pin: " + path)
            except subprocess.CalledProcessError:
                errors.append("unreadable tool checkout: " + path)
    expected = set(item["path"] for item in registry["tools"])
    actual = set(cfg.get(section, "path") for section in cfg.sections()
                 if section.startswith('submodule "') and cfg.has_option(section, "path"))
    if expected != actual:
        errors.append("registry and .gitmodules differ: " + repr(sorted(expected ^ actual)))
    if errors:
        for error in errors:
            print("ERROR: " + error, file=sys.stderr)
        return 1
    print("Verified", len(registry["tools"]), "pinned tool gitlinks, upstream URLs and branches")
    return 0

def main() -> None:
    argparse.ArgumentParser(description=__doc__).parse_args()
    raise SystemExit(check())

if __name__ == "__main__":
    main()
