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
  // Bounded relative code addresses from the same live native thread.
  // No instruction bytes, binary images, certificates or strings are exported.
  function nativeBacktrace() {
    try {
      const m = Process.findModuleByName('libSrc.so');
      if (m === null) return {status: 'LIBSRC_NOT_MAPPED', frames: []};
      const end = m.base.add(m.size);
      const addresses = Thread.backtrace(undefined, Backtracer.ACCURATE);
      const frames = addresses.filter(a => a.compare(m.base) >= 0 && a.compare(end) < 0)
        .slice(0, 24).map(a => '0x' + a.sub(m.base).toString(16));
      return {status: 'OBSERVED', module: 'libSrc.so', frames: frames};
    } catch (e) {
      return {status: 'BACKTRACE_UNAVAILABLE', frames: []};
    }
  }
  function observe(label, message) {
    try {
      const s = message === null ? '' : message.toString();
      if (s.indexOf('盗版游戏') === -1 && s.indexOf('请使用正版游戏') === -1) return;
      const stack = Log.getStackTraceString(Exception.$new()).toString()
        .split('\n').map(x => x.trim()).filter(x => x.indexOf('at ') === 0).slice(0, 24);
      send({type: 'INTEGRITY_WARNING_STACK', source: label, frames: stack,
            native_trace: nativeBacktrace()});
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
  // Native game code requests this Java UI bridge before the UI-thread runnable.
  // Keep all arguments and the original method semantics unchanged.
  try {
    const App = Java.use('com.popcap.pvz2cthddev.AndroidGameApp');
    const show = App.UI_ShowAlertDialog.overload(
      'java.lang.String', 'java.lang.String', 'java.lang.String', 'boolean');
    show.implementation = function (title, message, okay, exitApp) {
      const content = message === null ? '' : message.toString();
      if (content.indexOf('盗版游戏') !== -1 || content.indexOf('请使用正版游戏') !== -1) {
        const trace = Log.getStackTraceString(Exception.$new()).toString()
          .split('\n').map(x => x.trim()).filter(x => x.indexOf('at ') === 0).slice(0, 24);
        send({type: 'INTEGRITY_ALERT_REQUEST', source: 'AndroidGameApp.UI_ShowAlertDialog',
              exit_requested: Boolean(exitApp), frames: trace,
              native_trace: nativeBacktrace()});
      }
      return show.call(this, title, message, okay, exitApp);
    };

    const exit = App.Device_ExitApp.overload();
    exit.implementation = function () {
      const trace = Log.getStackTraceString(Exception.$new()).toString()
        .split('\n').map(x => x.trim()).filter(x => x.indexOf('at ') === 0).slice(0, 24);
      send({type: 'GAME_EXIT_REQUEST', source: 'AndroidGameApp.Device_ExitApp',
            frames: trace, native_trace: nativeBacktrace()});
      return exit.call(this);
    };
  } catch (e) {
    send({type: 'TRACE_HOOK_ERROR', source: 'AndroidGameApp',
          error_kind: 'install_failed'});
  }

  try {
    const Proc = Java.use('android.os.Process');
    const kill = Proc.killProcess.overload('int');
    kill.implementation = function (pid) {
      if (pid === Proc.myPid()) {
        const trace = Log.getStackTraceString(Exception.$new()).toString()
          .split('\n').map(x => x.trim()).filter(x => x.indexOf('at ') === 0).slice(0, 24);
        send({type: 'GAME_EXIT_REQUEST', source: 'Process.killProcess',
              frames: trace, native_trace: nativeBacktrace()});
      }
      return kill.call(this, pid);
    };
  } catch (e) {
    send({type: 'TRACE_HOOK_ERROR', source: 'Process.killProcess',
          error_kind: 'install_failed'});
  }

  send({type: 'TRACE_HOOKS_INSTALLED'});
});
