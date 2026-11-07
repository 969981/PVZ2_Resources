"""Asset-free synthetic tests for bounded PNG Git publication planner."""
from pathlib import Path
from tempfile import TemporaryDirectory
import unittest

from scripts.media.publish_png_batches import MIB, batches
from scripts.media.verify_publish_png import safe_path


class PublishPngTests(unittest.TestCase):
    def test_batches_respect_file_and_total_bytes(self):
        with TemporaryDirectory() as temp:
            root = Path(temp)
            files = []
            for i, size in enumerate((15, 16, 5, 25, 2)):
                target = root / f"{i}.png"
                target.write_bytes(b"x" * (size * 1024))
                files.append(target)
            planned = batches(files, max_files=2, max_bytes=35 * 1024)
            self.assertEqual([[p.name for p in group] for group in planned],
                             [["0.png","1.png"], ["2.png","3.png"], ["4.png"]])
            self.assertEqual(sum(map(len,planned)), 5)

    def test_reject_impossible_batch(self):
        with TemporaryDirectory() as temp:
            path = Path(temp)/"big.png"
            path.write_bytes(b"x"*8192)
            with self.assertRaisesRegex(ValueError,"exceeds batch"):
                batches([path], max_bytes=4096)

    def test_reject_invalid_batch_controls(self):
        with self.assertRaisesRegex(ValueError,"positive"):
            batches([], max_files=0)

    def test_png_path_validation(self):
        self.assertEqual(safe_path("PNG/init/A/ATLAS.png"),Path("PNG/init/A/ATLAS.png"))
        for path in ("../evil.png","/etc/passwd","PNG/../../evil.png",
                     "PNG\\a.png","WEM/voice.png","PNG/a.wem","C:/PNG/a.png"):
            with self.subTest(path=path), self.assertRaises(ValueError):
                safe_path(path)


if __name__ == "__main__":
    unittest.main()
