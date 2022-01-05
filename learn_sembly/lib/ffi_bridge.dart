import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';

// Current versions of src can not be integrated to dart , cause of void functions
// We should define a new function to execute everything.
typedef CpuFunction = void Function();
typedef CpuFunctionDart =  void Function();

class FFIBridge {
  CpuFunctionDart _executeCpu;

  FFIBridge() {
    // 1
    final dl = Platform.isAndroid
        ? DynamicLibrary.open('libmaincpu.so')
        : DynamicLibrary.process();

    _executeCpu = dl
        .lookupFunction<
        CpuFunction,
        CpuFunctionDart>('execute_cpu');

  }

  void executeCpu() => _executeCpu();
}
