/*
 * Read-only resource-stage sampling for the original-signed CHN 4.2.8 APK.
 *
 * Never replaces game methods, invokes login callbacks, accesses credentials,
 * or changes native / Java return values. Java.choose is a bounded search
 * for an already-existing SplashScreen instance (not object construction).
 */
'use strict';

Java.perform(function () {
  const CLASS_NAME = 'com.popcap.pvz2cthddev.AndroidSplashScreen';
  let lastError = null;

  function errorOnce(kind) {
    if (lastError === kind) return;
    lastError = kind;
    send({type: 'TRACE_HOOK_ERROR',
          source: 'PassiveResourceObserver',
          error_kind: kind});
  }

  function fieldValue(owner, field) {
    try {
      const wrapper = owner[field];
      if (wrapper === undefined || wrapper === null) return null;
      // Do not convert null, false, or empty strings to a fabricated zero.
      const v = wrapper.value;
      return (typeof v === 'number' && Number.isInteger(v)
              && v >= -1 && v <= 100000) ? v : null;
    } catch (_) {
      return null;
    }
  }

  function sampleFields(owner, origin) {
    const stage = fieldValue(owner, 'mCurrentDecompressStage');
    const time = fieldValue(owner, 'mLeftDecompressTime');
    if (stage === null && time === null) return null;
    const record = {type: 'RESOURCE_LOADING_STAGE', observation_source: origin};
    if (stage !== null) record.current_stage = stage;
    if (time !== null) record.time_hint = time;
    try {
      const value = owner.mIsFirstInit.value;
      if (typeof value === 'boolean') record.is_first_init = value;
    } catch (_) { /* optional field */ }
    return record;
  }

  function sample() {
    Java.perform(function () {
      let klass;
      try {
        klass = Java.use(CLASS_NAME);
      } catch (_) {
        errorOnce('splash_class_unavailable');
        return;
      }

      const direct = sampleFields(klass, 'static');
      if (direct !== null) {
        lastError = null;
        send(direct);
        return;
      }

      // Most Activity fields are instance fields: looking only on Java.use()
      // incorrectly reports them as missing. Inspect an existing object.
      let observed = false;
      try {
        Java.choose(CLASS_NAME, {
          onMatch: function (instance) {
            const value = sampleFields(instance, 'instance');
            if (value === null) return;
            observed = true;
            lastError = null;
            send(value);
            return 'stop';
          },
          onComplete: function () {
            if (!observed) errorOnce('resource_fields_or_live_instance_unavailable');
          }
        });
      } catch (_) {
        errorOnce('splash_instance_scan_unavailable');
      }
    });
  }

  send({type: 'TRACE_HOOKS_INSTALLED'});
  sample();
  setInterval(sample, 30000);
});
