import unittest
from scripts.offline.twpurchase_login_branches import analyze_source, argument_kind, integer_status_literal, identifier_only

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
    def test_static_status_and_only_identifier_names(self):
        example = '''public class A {
   public void onResponse(int code, String json) {
      Native_SDKLoginEnd(TWPurchase.this.nativePtr, 12, TWPurchase.this.userCache);
      Native_SDKLoginEnd(ptr, -5, token);
   }
}'''
        rows=analyze_source(example,"1"*64)
        self.assertEqual(len(rows),2)
        self.assertEqual([x["integer_status_literal"] for x in rows],["12","-5"])
        self.assertEqual(rows[0]["native_handle_identifier"],"TWPurchase.this.nativePtr")
        self.assertEqual(rows[1]["payload_identifier"],"token")
        self.assertEqual(identifier_only("getToken(secret)"),"")
        self.assertEqual(integer_status_literal("getStatus()"),"")

    def test_kinds(self):
        self.assertEqual(argument_kind("true"),"boolean_literal")
        self.assertEqual(argument_kind("foo(bar)"),"nested_method_call")
