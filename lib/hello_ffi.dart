import 'dart:ffi';
import 'dart:io' as io;

final DynamicLibrary _module =
  io.Platform.isAndroid
    ? DynamicLibrary.open("libhello.so") // Androidでは共有ライブラリ(libXXXX.so)
    : DynamicLibrary.process();          // iOSではプロセスのモジュールを開く

// native_add を関数として引き込む
final int Function(int x, int y) nativeAdd =
  _module
    .lookup<NativeFunction<Int32 Function(Int32, Int32)>>("native_add")
    .asFunction();
