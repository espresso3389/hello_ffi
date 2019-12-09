import 'dart:ffi';
import 'dart:io' as io;

final DynamicLibrary _module =
  io.Platform.isAndroid
    // Androidでは共有ライブラリを開く
    ? DynamicLibrary.open("hello.so")
    // iOSではアプリにスタティックリンクされてるのでプロセスのモジュールを開く
    : DynamicLibrary.process();

final int Function(int x, int y) nativeAdd =
  _module
    .lookup<NativeFunction<Int32 Function(Int32, Int32)>>("native_add")
    .asFunction();
