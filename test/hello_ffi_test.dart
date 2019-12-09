import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_ffi/hello_ffi.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();


  test('nativeAdd', () async {
    expect(nativeAdd(40, 5), 45);
  });
}
