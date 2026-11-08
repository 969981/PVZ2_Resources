/*
 * Passive baseline for the original-signed CHN 4.2.8 APK.
 * Never replaces a Java method, calls a native SDK login callback,
 * reads credentials, or changes a return value.
 *
 * Resource-stage field names are hypotheses from the original Java layer:
 * absence of a field must NOT be reported as a successful stage read.
 */
'use strict';
Java.perform(function () {
  let reportedUnavailable = false;
  function readNumber(klass, name) {
    try {
      const prop = klass[name];
      if (prop === undefined || prop === null) return null;
      const n = Number(prop.value);
      return Number.isFinite(n) && n >= -1 && n <= 100000 ? n : null;
    } catch (_) {
      return null;
    }
  }
  function sample() {
    Java.perform(function () {
      try {
        const Splash = Java.use('com.popcap.pvz2cthddev.AndroidSplashScreen');
        const stage = readNumber(Splash, 'mCurrentDecompressStage');
        const left = readNumber(Splash, 'mLeftDecompressTime');
        if (stage === null && left === null) {
          if (!reportedUnavailable) {
            send({type: 'TRACE_HOOK_ERROR',
                  source: 'PassiveResourceObserver',
                  error_kind: 'resource_fields_unavailable'});
            reportedUnavailable = true;
          }
          return;
        }
        let first = null;
        try {
          const v = Splash.mIsFirstInit.value;
          if (typeof v === 'boolean') first = v;
        } catch (_) {}
        const message = {type: 'RESOURCE_LOADING_STAGE'};
        if (stage !== null) message.current_stage = stage;
        if (left !== null) message.time_hint = left;
        if (first !== null) message.is_first_init = first;
        send(message);
      } catch (_) {
        if (!reportedUnavailable) {
          send({type: 'TRACE_HOOK_ERROR',
                source: 'PassiveResourceObserver',
                error_kind: 'splash_class_unavailable'});
          reportedUnavailable = true;
        }
      }
    });
  }
  send({type: 'TRACE_HOOKS_INSTALLED'});
  sample();
  setInterval(sample, 30000);
});
