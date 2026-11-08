/*
 * Experimental SDK lifecycle instrumentation for original-signed CHN 4.2.8.
 * Original APK bytes remain untouched, but Java method wrappers MAY perturb
 * scheduling. It is NOT the pristine passive baseline. No credentials,
 * account identifiers, signatures or purchase values are collected.
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


  // Observe the *actual* asynchronous SDK lifecycle before consent. These
  // wrappers invoke each original implementation exactly once, preserving its
  // return value and exceptions. Never read or transmit SDK JSON, user IDs,
  // login tokens, app IDs, native pointers, signatures or purchase data.
  const lifecycleStarted = Date.now();
  let lifecycleEvents = 0;
  const LIFECYCLE_EVENT_LIMIT = 120;
  const definitions = [
    ['com.popcap.pvz2cthddev.TWPurchase', 'InitializeSDK', 'INITIALIZE_REQUEST'],
    ['com.popcap.pvz2cthddev.TWPurchase', 'Native_SDKInitStart', 'JNI_INIT_START'],
    ['com.popcap.pvz2cthddev.TWPurchase', 'Native_SDKInitEnd', 'JNI_INIT_END'],
    ['com.popcap.pvz2cthddev.TWPurchase', 'Native_SDKLoginStart', 'JNI_LOGIN_START'],
    ['com.popcap.pvz2cthddev.TWPurchase', 'Native_SDKLoginEnd', 'JNI_LOGIN_END'],
    ['com.popcap.pvz2cthddev.TWPurchase$1', 'run', 'INIT_RUNNABLE'],
    ['com.popcap.pvz2cthddev.TWPurchase$1$1', 'onResponse', 'INIT_CALLBACK'],
    ['com.popcap.pvz2cthddev.TWPurchase$1$1$1', 'onResponse', 'LOGIN_CALLBACK'],
    ['com.talkweb.twOfflineSdk.TwOfflineSDK', 'init', 'SDK_INIT'],
    ['com.talkweb.twOfflineSdk.TwOfflineSDK', 'login', 'SDK_LOGIN']
  ];

  function lifecycleEmit(stage, phase, args) {
    if (lifecycleEvents >= LIFECYCLE_EVENT_LIMIT) return;
    lifecycleEvents += 1;
    const record = {
      type: 'SDK_LIFECYCLE_EVENT',
      stage: stage,
      phase: phase,
      elapsed_ms: Math.max(0, Date.now() - lifecycleStarted)
    };
    // Status is an int supplied by JNI. Deliberately do not inspect the
    // string argument (which may contain a token).
    if ((stage === 'JNI_INIT_END' || stage === 'JNI_LOGIN_END') &&
        args.length >= 2 && typeof args[1] === 'number' &&
        Number.isInteger(args[1]) && args[1] >= -10 && args[1] <= 10000) {
      record.status_code = args[1];
    }
    send(record);
  }

  let lifecycleHooks = 0;
  definitions.forEach(function (definition) {
    const klassName = definition[0];
    const methodName = definition[1];
    const stage = definition[2];
    try {
      const klass = Java.use(klassName);
      const method = klass[methodName];
      if (method === undefined || !method.overloads.length) {
        throw new Error('method_unavailable');
      }
      method.overloads.forEach(function (overload) {
        overload.implementation = function () {
          lifecycleEmit(stage, 'ENTER', arguments);
          try {
            const value = overload.apply(this, arguments);
            lifecycleEmit(stage, 'RETURN', arguments);
            return value;
          } catch (err) {
            lifecycleEmit(stage, 'THROW', arguments);
            throw err;
          }
        };
        lifecycleHooks += 1;
      });
    } catch (_) {
      errorOnce('lifecycle_hook_unavailable_' + stage.toLowerCase());
    }
  });
  send({type: 'SDK_LIFECYCLE_READY', installed_overloads: lifecycleHooks});

  send({type: 'TRACE_HOOKS_INSTALLED'});
  sample();
  setInterval(sample, 30000);
});
