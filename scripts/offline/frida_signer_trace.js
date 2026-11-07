// Frida 17 CLI-only (bundled Java bridge) read-only observation agent.
// Never record arguments, network traffic, signing bytes, account identifiers,
// tokens, path contents or original app method bodies. Observing is not bypass.
'use strict';
const hitCount = {};
function note(kind) {
  hitCount[kind] = (hitCount[kind] || 0) + 1;
  if (hitCount[kind] <= 12) console.log('PVZ2_TRACE:' + kind);
}
['exit', '_exit', 'abort', 'raise', 'kill', 'tgkill'].forEach(name => {
  try {
    Interceptor.attach(Module.getGlobalExportByName(name), {
      onEnter(_args) { note('native_' + name); }
    });
    note('hook_native_' + name);
  } catch (_) {
    note('hook_native_unavailable_' + name);
  }
});
Java.perform(() => {
  const safe = (cls, method, signature, kind) => {
    try {
      const klass = Java.use(cls);
      const target = klass[method].overload(...signature);
      target.implementation = function (...args) {
        note(kind);
        return target.call(this, ...args);
      };
      note('hook_' + kind);
    } catch (_) { note('hook_unavailable_' + kind); }
  };
  safe('java.lang.System', 'exit', ['int'], 'java_System_exit');
  safe('java.lang.Runtime', 'exit', ['int'], 'java_Runtime_exit');
  safe('java.lang.Runtime', 'halt', ['int'], 'java_Runtime_halt');
  safe('android.os.Process', 'killProcess', ['int'], 'java_Process_killProcess');
  safe('android.app.Activity', 'finish', [], 'java_Activity_finish');
  safe('android.app.Activity', 'finishAffinity', [], 'java_Activity_finishAffinity');
  safe('android.content.pm.Signature', 'toByteArray', [], 'java_Signature_toByteArray');
  safe('java.security.MessageDigest', 'digest', [], 'java_MessageDigest_digest');
  try {
    const PM = Java.use('android.app.ApplicationPackageManager');
    const overs = PM.getPackageInfo.overloads;
    overs.forEach(over => {
      over.implementation = function (...args) {
        note('java_getPackageInfo');
        return over.call(this, ...args);
      };
    });
    note('hook_java_getPackageInfo');
  } catch (_) { note('hook_unavailable_java_getPackageInfo'); }
  note('JAVA_READY');
});
note('SCRIPT_READY');
