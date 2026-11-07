import unittest
from scripts.offline.twpurchase_login_branches import analyze_source, argument_kind

class BranchShapeTest(unittest.TestCase):
    def test_no_payload_leaks(self):
        example='''public static native void Native_SDKLoginEnd(long h,int code,String payload);
public void onResponse(int code, String payload) {
  if (code == 0) {
    Native_SDKLoginEnd(ptr, code, payload);
  } else {
    Native_SDKLoginEnd(ptr, -1, "SECRET_TOKEN");
  }
}'''
        rows=analyze_source(example,"0"*64)
        self.assertEqual(len(rows),2)
        self.assertEqual([r["argument_count_hint"] for r in rows],[3,3])
        self.assertNotIn("SECRET_TOKEN",str(rows))
        self.assertIn("variable;integer_literal;string_literal_redacted",rows[1]["argument_type_hints"])
    def test_kinds(self):
        self.assertEqual(argument_kind("true"),"boolean_literal")
        self.assertEqual(argument_kind("foo(bar)"),"nested_method_call")
