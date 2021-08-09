
import 'dart:async';

import 'package:flutter/services.dart';

class GeoLocManager {
  static const MethodChannel _channel =
      const MethodChannel('geo_loc_manager');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
