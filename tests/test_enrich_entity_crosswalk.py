"""No game assets; test source-preserving level alias and safe Obsidian identity."""
import unittest
from scripts.catalog.enrich_entity_crosswalk import ref as resolve, slug, md


class DetailedMappingTests(unittest.TestCase):
    def test_exact_source_skill_alias(self):
        row={"skill_id":"skill:001","skill_name_json":'"[PEA_SKILL]"',
             "skill_icon_json":'"IMAGE_PEA"'}
        self.assertEqual(resolve("RTID(Pea_L1@SkillTypes)",{"Pea_L1":[row]}),
                         ("skill:001","[PEA_SKILL]","IMAGE_PEA","exact-static-SkillTypes-alias"))

    def test_no_guess_for_unknown_or_multiple(self):
        self.assertEqual(resolve("RTID(missing@SkillTypes)",{} )[3],"unresolved-SkillTypes-ref")
        self.assertEqual(resolve("RTID(x@OtherNamespace)",{} )[3],"invalid-or-non-SkillTypes-ref")
        self.assertEqual(resolve("RTID(x@SkillTypes)",{"x":[{},{}]})[3],"ambiguous-SkillTypes-ref")
        self.assertEqual(resolve(None,{})[3],"no-explicit-skill-ref")

    def test_entity_filename_stable(self):
        self.assertEqual(slug("peashooter","plant"),"peashooter--8d728d3e28")
        self.assertNotEqual(slug("Peashooter","plant"),slug("peashooter","plant"))
        self.assertNotEqual(slug("peashooter","plant"),slug("peashooter","zombie"))

    def test_markdown_sanitizes_tables(self):
        self.assertEqual(md("AB|CD\nEF"),"AB/CD EF")


if __name__=="__main__":
    unittest.main()
