# External PvZ2 tools

These directories are real Git submodules, pinned to specific upstream commits. They are not copied/vendored code and not automatically installed by a normal git pull.

## Initialize

PowerShell in repository root:

~~~powershell
git submodule sync --recursive
git submodule update --init --recursive
python scripts/tools/verify_tools.py
~~~

To initialize only a few, run:

~~~powershell
git submodule update --init --recursive -- tools/PopStudio tools/LibWindPop tools/Pvz2Tool tools/PVZ2-CN-Reverse-Tools tools/pvz2-format-exploration tools/Twinning
~~~

Scripts/tools/setup-tools.ps1 provides a shorter selection workflow (after pulling the companion scripts commit).

## Tool purposes and actual applicability

| Directory | Role | Upstream license |
|---|---|---|
| PopStudio | RSB, RTON, PTX, PAM, Reanim and atlas conversion | Apache-2.0 |
| LibWindPop | Reusable RSB/PAK/PTX/Reanim library | Apache-2.0 |
| Pvz2Tool | PvZ2 Chinese RSB/RSGP, RTON, PTX, SMF code | MIT |
| PVZ2-CN-Reverse-Tools | Python Resource_Tool, Player_Tool; upstream tested on CHN 4.1.9/4.2.3 | License not specified in GitHub metadata |
| pvz2-format-exploration | Small Python RSLB/RSB probes and partial RTON decoder | MIT |
| Twinning | Cross-platform PopCap format conversion | GPL-3.0 |
| EffectViewer | .NET 10 visual Reanim/particle/trail editor | MIT |
| ReanimAnalyzer | C# Reanim track and frame analysis examples | Apache-2.0 |

Stage 1: local scripts/unpack/unpack_smf.py + pvz2-format-exploration for independent RSLB checks.
Stage 2: compare Pvz2Tool, PopStudio, LibWindPop and Twinning on the same RSB/RSGP sample.
Stage 3: RTON JSON, PTX PNG, animation JSON and media conversion; optionally EffectViewer/ReanimAnalyzer.
Stage 4: structured official Chinese names, plants, zombies, levels, and source linkage.

## Version tracking

- Each submodule is a Git link to an exact SHA; see tools/upstreams.json.
- To update deliberately: git submodule update --remote -- tools/PopStudio
- After an update, review git diff --submodule=log, update tools/upstreams.json with the new SHA, run tests, and commit both changes.
- Do not pull third-party source directly into scripts/ without license analysis.
- Twinning is GPL-3.0. The Chinese reverse tools repo has no license indicated in its GitHub metadata; keep it separate and do not assume source-reuse permission.
- The newest CN 4.2.8 APK has libSrc.so ELF; S3E-IDA-plugin is not relevant to the principal native library and was intentionally excluded.
- Only format support is documented here. Actual CHN 4.2.8 end-to-end decoding is not yet verified.

The original ROMS/ archive stays unchanged. Do not commit extracted copyrighted game assets into tools/.
