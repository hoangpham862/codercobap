import 'package:flutter/services.dart';

import 'package:shared/helper/installed_application/installed_application_info.dart';

class GetListApplicationHelper {
  static const MethodChannel _methodChannel =
      MethodChannel("vn.com.codercobap.nekofocus/app_helper");

  static final Map<String, Uint8List?> _iconCache = {};

  static Future<List<InstalledApplicationInfo>> getListApplication() async {
    List<dynamic> json =
        await _methodChannel.invokeMethod("getListApplication");
    return json.map((e) => InstalledApplicationInfo.fromMap(e)).toList();
  }

  static Future<Uint8List?> getIcon(String packageName) async {
    if (_iconCache.containsKey(packageName)) {
      return _iconCache[packageName];
    }

    try {
      final Uint8List? iconBytes = await _methodChannel
          .invokeMethod("getAppIcon", {"packageName": packageName});

      _iconCache[packageName] = iconBytes;
      return iconBytes;
    } on PlatformException catch (e) {
      print("Failed to get app icon: ${e.message}");
      return null;
    }
  }
  //
}
