import 'dart:async';

import 'package:flutter/services.dart';

class HelloFfi {
  static const MethodChannel _channel =
      const MethodChannel('hello_ffi');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
