/*
 * Optional, strictly local and throwaway Android trial on UNMODIFIED,
 * ORIGINAL-SIGNED PVZ2 CHN 4.2.8 APK.
 * Avoids repacking/re-signing to distinguish signature integrity from
 * separate login initialization. Not a proven valid local player session.
 * DO NOT connect this trial session to an online server or accept purchases.
 */
'use strict';
Java.perform(function () {
  const Log = Java.use('android.util.Log');
  function mark(message) {
    Log.i('PVZ2LocalTrial', message);
    send({type: 'LOCAL_SESSION_TRACE', stage: message});
  }
  try {
    const Splash = Java.use('com.popcap.pvz2cthddev.AndroidSplashScreen');
    const sampleProgress = function () {
      Java.perform(function () {
        try {
          send({
            type: 'RESOURCE_LOADING_STAGE',
            current_stage: Number(Splash.mCurrentDecompressStage.value),
            time_hint: Number(Splash.mLeftDecompressTime.value),
            is_first_init: Boolean(Splash.mIsFirstInit.value),
          });
        } catch (e) {
          send({type: 'TRACE_HOOK_ERROR', source: 'SplashProgress',
                error_kind: 'counter_unavailable'});
        }
      });
    };
    sampleProgress();
    setInterval(sampleProgress, 30000);
  } catch (e) {
    send({type: 'TRACE_HOOK_ERROR', source: 'SplashProgress',
          error_kind: 'install_failed'});
  }
  try {
    const Runnable = Java.use('com.popcap.pvz2cthddev.TWPurchase$1');
    const Owner = Java.use('com.popcap.pvz2cthddev.TWPurchase');
    const start = Owner.Native_SDKInitStart.overload('long');
    const init = Owner.Native_SDKInitEnd.overload('long', 'int');
    const loginStart = Owner.Native_SDKLoginStart.overload('long');
    const loginEnd = Owner.Native_SDKLoginEnd.overload('long', 'int', 'java.lang.String');
    const run = Runnable.run.overload();
    run.implementation = function () {
      mark('LOCAL_SESSION_RUN_ENTER');
      try {
        const owner = this['this$0'].value;
        if (owner === null) { mark('LOCAL_SESSION_OWNER_MISSING'); return; }
        const handle = owner.mNativeDriverPtr.value;
        if (handle === null || handle.toString() === '0') {
          mark('LOCAL_SESSION_HANDLE_INVALID');
          return;
        }
        start.call(owner, handle);
        mark('LOCAL_SESSION_INIT_START_RETURN');
        init.call(owner, handle, 0);
        mark('LOCAL_SESSION_INIT_END_RETURN');
        loginStart.call(owner, handle);
        mark('LOCAL_SESSION_LOGIN_START_RETURN');
        loginEnd.call(owner, handle, 0, 'offline-local-test-only');
        mark('LOCAL_SESSION_LOGIN_END_RETURN');
      } catch (e) {
        // Log only an error classification; no arguments, keys or tokens.
        mark('LOCAL_SESSION_NATIVE_CALL_FAILED');
      }
    };
    mark('LOCAL_SESSION_HOOK_INSTALLED');
  } catch (e) {
    mark('LOCAL_SESSION_HOOK_INSTALL_FAILED');
  }
  send({type: 'TRACE_HOOKS_INSTALLED'});
});
