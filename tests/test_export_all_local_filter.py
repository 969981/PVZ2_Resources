"""Synthetic tests for local format-filtered restoration orchestration."""
from pathlib import Path
from tempfile import TemporaryDirectory
from types import SimpleNamespace
from unittest import TestCase
from unittest.mock import patch
import csv
import json
from scripts.catalog import export_all_local


class LocalMediaExportTests(TestCase):
    def prepare(self, home):
        source = home/"Unpack"
        catalog = home/"Catalog"
        shard = source/"Media"/"shard-00"
        index = catalog/"shards"/"Media-00"
        shard.mkdir(parents=True)
        index.mkdir(parents=True)
        (shard/"manifest.json").write_text(json.dumps({
            "stage": "Media", "shard": 0, "archive_sha256": "abc",
            "source_file_count": 3
        }))
        (index/"summary.json").write_text(json.dumps({
            "archive_sha256": "abc", "file_count": 3,
            "total_size_bytes": 60, "git_size_eligible": 3,
            "git_size_ineligible": 0
        }))
        with (index/"files.csv").open("w",encoding="utf-8-sig",newline="") as f:
            w=csv.DictWriter(f,fieldnames=("size_bytes","suffix"))
            w.writeheader()
            for suffix in (".png",".wem",".json"):
                w.writerow({"size_bytes":20,"suffix":suffix})
        args=SimpleNamespace(source=source,catalog=catalog,out=home/"Readable",
             report=home/"report.json",temporary=None,stages=["Media"],
             max_file_mib=95,dry_run=True,require_all=False,extensions=".png,.wem")
        return args

    def test_dry_run_has_only_selected_file_count_and_explicit_gap(self):
        with TemporaryDirectory() as tmp:
            args=self.prepare(Path(tmp))
            report=export_all_local.run(args)
            self.assertEqual(report["total_planned_files"],2)
            self.assertEqual(report["total_exported_files"],0)
            self.assertEqual(report["missing_shards"],[f"Media-{i:02d}" for i in range(1,8)])
            self.assertEqual(report["shards"][0]["would_export_files"],2)

    def test_selective_copy_counts_are_not_compared_to_all_files(self):
        with TemporaryDirectory() as tmp:
            args=self.prepare(Path(tmp))
            args.dry_run=False
            calls=[]
            def fake_run(command,**kwargs):
                calls.append(command)
                if "materialize_readable.py" in command[1]:
                    self.assertIn("--extensions",command)
                    self.assertEqual(command[command.index("--extensions")+1],".png,.wem")
                    report=Path(command[command.index("--report")+1])
                    report.write_text(json.dumps({
                        "files_indexed":3, "excluded_by_size":0,
                        "excluded_by_extension":1,
                        "copied_or_verified":2, "selected_total_bytes":40
                    }))
            with patch.object(export_all_local.subprocess,"run",side_effect=fake_run):
                result=export_all_local.run(args)
            self.assertEqual(result["total_exported_files"],2)
            self.assertEqual(result["total_planned_files"],2)
            self.assertEqual(len(calls),2)

    def test_invalid_extension_rejected(self):
        with TemporaryDirectory() as tmp:
            args=self.prepare(Path(tmp))
            args.extensions="png"
            with self.assertRaisesRegex(ValueError,"dot-prefixed"):
                export_all_local.run(args)
