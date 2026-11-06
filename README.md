# PVZ2_Resources

Plants vs. Zombies 2 Chinese Android resource extraction and research. Current starting point: purported CHN 4.2.8 APK, SHA256 64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4. The filename has 4.2.8; manifest versionName/versionCode still need binary-manifest verification.

The repository's existing ROMS/CHN/V4.2.8 multi-volume 7z archive is preserved unchanged. Code and generated outputs are kept separate.

## Layout
- AGENTS.md — project rules for coding assistants.
- docs/ROADMAP.md — phased extraction and validation gates.
- docs/FORMATS.md — APK/SMF/RSLB/RSB/RTON layers.
- docs/SCHEMAS.md — provenance requirements and proposed data exports.
- docs/versions/CHN/4.2.8.md — specific observed counts, identity, unanswered questions.
- scripts/audit/inspect_apk.py — APK ZIP inventory and SHA256.
- scripts/unpack/unpack_smf.py — stage 1 RSLB unwrap + direct RTON copy.
- tests/test_smf.py — synthetic tests.
- ROMS/ — preexisting versioned archive; do not modify unintentionally.

## Commands (Python 3.10+, no third-party Python modules)
~~~powershell
python scripts/audit/inspect_apk.py "X:\ROMS\Android\PVZ2\PVZ2_4.2.8\PVZ2_4.2.8.apk" --out audit/local/4.2.8
python scripts/unpack/unpack_smf.py "X:\ROMS\Android\PVZ2\PVZ2_4.2.8\PVZ2_4.2.8.apk" --mode probe --out Unpack/CHN/4.2.8/stage1
python scripts/unpack/unpack_smf.py "X:\ROMS\Android\PVZ2\PVZ2_4.2.8\PVZ2_4.2.8.apk" --mode all --out Unpack/CHN/4.2.8/stage1
python -m unittest discover -s tests -v
~~~

Probe: dino.rsb.smf and resourcesDino.rton.smf. Stage 1 only creates RSB outer files and copies RTON; it does not extract individual RSGP members, convert RTON to JSON, or decrypt anything. Full stage 1 RSLB output is estimated from headers to be approximately 5.51 GiB; keep additional temporary space.

See docs/ROADMAP.md before claiming a complete extraction. Keep generated game resources outside public Git history.

## Third-party tools: actual pinned Git submodules

Eight upstream resource tools have been linked in tools/; see tools/README.md and tools/upstreams.json for roles, licenses, SHAs and known limitations.

~~~powershell
git submodule sync --recursive
git submodule update --init --recursive
python scripts/tools/verify_tools.py
~~~

For selective installation on Windows: powershell -ExecutionPolicy Bypass -File .\scripts\tools\setup-tools.ps1 -Only PopStudio,LibWindPop,Pvz2Tool

The tools are tracked upstream sources, not evidence of real CHN 4.2.8 extraction. Existing ROMS/ files are unchanged.
