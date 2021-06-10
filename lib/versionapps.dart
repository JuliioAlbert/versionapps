import 'dart:async';

import 'package:flutter/services.dart';

class Versionapps {
  static const MethodChannel _channel = const MethodChannel('versionapps');

  Future<String?> platformVersion() async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
