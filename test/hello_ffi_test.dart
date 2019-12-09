import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_ffi/hello_ffi.dart';

void main() {
  const MethodChannel channel = MethodChannel('hello_ffi');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await HelloFfi.platformVersion, '42');
  });
}
