import 'package:flutter/material.dart';
import 'package:hello_ffi/hello_ffi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('dart:ffi plugin example app'),
        ),
        body: Center(
          child: Text('4+5=${nativeAdd(4, 5)}'),
        ),
      ),
    );
  }
}


