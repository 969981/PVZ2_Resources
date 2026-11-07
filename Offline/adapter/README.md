# PVZ2 CHN 4.2.8 — Local-only player/profile proof of concept

**Not an integrated offline APK yet.** This Java module is an independent test
component, ready to be wired into the original engine **only after** the
TwGameSDK → PopCap game session callback and real save/level key types have
been recovered and validated for the source SHA256.

- `java/org/pvz2/offline/LocalProfileStore.java` creates one on-device
  `offline-UUID` identity that **is not** an online account or token.
- Stores local completed-level keys and best star count in an app-private
  `Properties` file with atomic replacement and fsync.
- Repeating a completed level is idempotent; worse results cannot downgrade it.
- Contains no payment, SMS, network library, remote service, online entitlements,
  bypass of account provider, or fake authenticated HTTP response.
- `tests/LocalProfileStoreTest.java` verifies first run, replay, restart,
  state continuity and input validation using purely synthetic level IDs.
- CI: `.github/workflows/pvz2-local-profile-tests.yml`.

The game may use **different** fields/IDs/results; do not map the synthetic
`WorldA.Level_1` or stars directly to the production user save until native
`LevelDefinition`, end-of-battle callback and save schema have been verified.

Required before integration:

1. Identify confirmed local-only game session callback in original Java/JNI.
2. Determine player info fields that engine reads from SDK session result.
3. Trace first-level entry and finish to the concrete game save path.
4. Connect a **separate** local offline profile for single-player use; never
   write this identity or its progress back to a real online server.
5. Validate gameplay, settlement, restart and 100% airplane mode.
