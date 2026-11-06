# Scripts

Python >= 3.10, stage 0/1 standard library only. Do not run the full pipeline in CI against copyrighted APKs; CI uses synthetic fixtures only.

- audit/inspect_apk.py: source APK SHA256 + ZIP entry CSV, SMF header probes and JSON summary.
- unpack/unpack_smf.py: unwrap RSLB v1 to RSB, copy direct RTON and other SMF metadata.
- ../tests/test_smf.py: synthetic unit cases.

Run the smallest --mode probe first. The stage 1 output is an outer RSB, NOT an extracted RSGP member catalog, RTON JSON database or decryptor. Keep generated outputs outside committed source paths.
