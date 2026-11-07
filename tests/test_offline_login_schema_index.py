import unittest
from scripts.offline.login_schema_index import field_schema

class LoginSchemaFieldsTest(unittest.TestCase):
    def test_class_fields_only(self):
        source = """
public class LoginResultBean {
   private int code;
   private String uid;
   private String token = "SECRET";
   public String getUid() {
       int x = 5;
       return uid;
   }
}
"""
        rows=field_schema(source,"com/talkweb/LoginResultBean.java","a"*64)
        keys={r["field"] for r in rows}
        self.assertTrue({"code","uid","token"}.issubset(keys))
        self.assertNotIn("x",keys)
        self.assertNotIn("SECRET",str(rows))

    def test_empty(self):
        self.assertEqual(field_schema("", "com/talkweb/LoginResultBean.java", "0"*64),[])
