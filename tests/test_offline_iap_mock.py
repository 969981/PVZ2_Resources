"""The billing-success stub is strictly synthetic, not a real PVZ2 purchase bypass."""
import unittest
from scripts.offline.offline_iap_mock import OfflineMockBilling, make_report


class OfflinePurchaseMockTests(unittest.TestCase):
    def test_test_products_success_without_store_or_entitlements(self):
        observed = []
        gateway = OfflineMockBilling(test_mode=True, on_result=observed.append)
        a = gateway.purchase(request_id="one", product_id="test.pvz2.plant")
        b = gateway.purchase(request_id="two", product_id="test.pvz2.coins")
        self.assertEqual([a.status, b.status], ["MOCK_SUCCESS", "MOCK_SUCCESS"])
        self.assertFalse(a.verified_store_transaction)
        self.assertIsNone(a.receipt)
        self.assertFalse(a.entitlement_granted)
        self.assertEqual(observed, [a, b])

    def test_no_duplicate_callback_for_repeated_request(self):
        observed = []
        gateway = OfflineMockBilling(test_mode=True, on_result=observed.append)
        first = gateway.purchase(request_id="x", product_id="test.pvz2.plant")
        again = gateway.purchase(request_id="x", product_id="test.pvz2.plant")
        self.assertIs(first, again)
        self.assertEqual(len(observed), 1)
        with self.assertRaises(ValueError):
            gateway.purchase(request_id="x", product_id="test.pvz2.coins")

    def test_refuses_production_or_unknown_product(self):
        with self.assertRaises(ValueError):
            OfflineMockBilling(test_mode=False)
        gateway = OfflineMockBilling(test_mode=True)
        for product in ("premium.real_id", "test.pvz2.", "", "sku.100"):
            with self.subTest(product=product), self.assertRaises(ValueError):
                gateway.purchase(request_id="x", product_id=product)

    def test_report_never_claims_real_gameplay_or_purchase(self):
        report = make_report()
        self.assertEqual(len(report["events"]), 3)
        self.assertTrue(report["all_test_callbacks_returned_mock_success"])
        self.assertFalse(report["real_game_entitlements_granted"])
        self.assertFalse(report["real_purchase_validated"])
        self.assertFalse(report["original_main_menu_verified"])
        self.assertFalse(report["original_level_1_verified"])
        self.assertFalse(report["original_save_verified"])


if __name__ == "__main__":
    unittest.main()
