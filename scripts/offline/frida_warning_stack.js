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
  // Frida enumerates HOST modules, not necessarily ARM guest ELF mappings
  // when Android's x86_64 Native Bridge translates an ARM game library.
  // No module paths, absolute addresses, hashes or raw code are exported.
  function moduleProbe() {
    try {
      const modules = Process.enumerateModules();
      const names = modules.map(m => m.name.toLowerCase());
      return {
        status: 'OBSERVED',
        process_arch: Process.arch,
        mapped_module_count: modules.length,
        libsrc_mapped: names.some(n => n === 'libsrc.so'),
        native_bridge_module_detected: names.some(n =>
          n.indexOf('ndk_translation') !== -1 ||
          n.indexOf('houdini') !== -1)
      };
    } catch (e) {
      return {status: 'ENUMERATION_UNAVAILABLE'};
    }
  }

  function nativeBacktrace() {
    const probe = moduleProbe();
    try {
      let m = Process.findModuleByName('libSrc.so');
      if (m === null) {
        const matches = Process.enumerateModules().filter(mod =>
          mod.name.toLowerCase() === 'libsrc.so');
        m = matches.length > 0 ? matches[0] : null;
      }
      if (m === null) {
        // Do not mislabel an x64 host module lookup failure as proof
        // that translated ARM guest code never executed.
        return {status: 'LIBSRC_NOT_MAPPED', frames: [], module_probe: probe};
      }
      const end = m.base.add(m.size);
      function offsets(method) {
        return Thread.backtrace(undefined, method)
          .filter(a => a.compare(m.base) >= 0 && a.compare(end) < 0)
          .slice(0, 24).map(a => '0x' + a.sub(m.base).toString(16));
      }
      const accurate = offsets(Backtracer.ACCURATE);
      if (accurate.length > 0) {
        return {status: 'OBSERVED', module: 'libSrc.so', frames: accurate,
                backtracer: 'ACCURATE', module_probe: probe};
      }
      const fuzzy = offsets(Backtracer.FUZZY);
      if (fuzzy.length > 0) {
        // A fuzzy frame is evidence for investigation, NOT a confirmed PC.
        return {status: 'OBSERVED_FUZZY', module: 'libSrc.so', frames: fuzzy,
                backtracer: 'FUZZY', module_probe: probe};
      }
      return {status: 'LIBSRC_FRAMES_UNAVAILABLE', module: 'libSrc.so',
              frames: [], module_probe: probe};
    } catch (e) {
      return {status: 'BACKTRACE_UNAVAILABLE', frames: [], module_probe: probe};
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

  send({type: 'TRACE_HOOKS_INSTALLED', native_module_probe: moduleProbe()});
});
