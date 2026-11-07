/*
 * Read-only PVZ2 CHN 4.2.8 emulator diagnostic.
 * No return-value changes, account interception, purchase or login hooks.
 * Only stack frames for the exact integrity-warning UI text are sent.
 * Frida 16.7.19 bundles the Java bridge for Python create_script().
 */
'use strict';
Java.perform(function () {
  const Log = Java.use('android.util.Log');
  const Exception = Java.use('java.lang.Exception');
  function observe(label, message) {
    try {
      const s = message === null ? '' : message.toString();
      if (s.indexOf('盗版游戏') === -1 && s.indexOf('请使用正版游戏') === -1) return;
      const stack = Log.getStackTraceString(Exception.$new()).toString()
        .split('\n').map(x => x.trim()).filter(x => x.indexOf('at ') === 0).slice(0, 24);
      send({type: 'INTEGRITY_WARNING_STACK', source: label, frames: stack});
    } catch (e) {
      send({type: 'TRACE_HOOK_ERROR', source: label, error_kind: 'capture_exception'});
    }
  }

  try {
    const TextView = Java.use('android.widget.TextView');
    const method = TextView.setText.overload('java.lang.CharSequence');
    method.implementation = function (message) {
      observe('TextView.setText(CharSequence)', message);
      return method.call(this, message);
    };
  } catch (e) {
    send({type: 'TRACE_HOOK_ERROR', source: 'TextView', error_kind: 'install_failed'});
  }

  try {
    const Builder = Java.use('android.app.AlertDialog$Builder');
    const method = Builder.setMessage.overload('java.lang.CharSequence');
    method.implementation = function (message) {
      observe('AlertDialog.Builder.setMessage', message);
      return method.call(this, message);
    };
  } catch (e) {
    send({type: 'TRACE_HOOK_ERROR', source: 'AlertDialog', error_kind: 'install_failed'});
  }
  send({type: 'TRACE_HOOKS_INSTALLED'});
});
