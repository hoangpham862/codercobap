import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/services.dart';

class AppInfo {
  final String appName;
  final String packageName;
  final bool isSystemApp;

  AppInfo({
    required this.appName,
    required this.packageName,
    required this.isSystemApp,
  });

  factory AppInfo.fromMap(Map<dynamic, dynamic> map) {
    return AppInfo(
      appName: map['appName'] as String? ?? '',
      packageName: map['packageName'] as String? ?? '',
      isSystemApp: map['isSystemApp'] as bool? ?? false,
    );
  }

  @override
  String toString() => 'AppInfo(name: $appName, package: $packageName)';
}

class AppHelperService {
  static const MethodChannel _channel = MethodChannel('vn.com.codercobap.nekofocus/app_helper');

  /// Fetches the list of launcher applications installed on the Android device.
  static Future<List<AppInfo>> getInstalledApps() async {
    try {
      final List<dynamic>? apps = await _channel.invokeMethod<List<dynamic>>('getInstalledApps');
      if (apps == null) return [];
      return apps.map((dynamic item) => AppInfo.fromMap(item as Map<dynamic, dynamic>)).toList();
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print("Failed to get installed apps: '${e.message}'.");
      return [];
    }
  }

  /// Fetches the application icon as a [Uint8List] containing PNG bytes.
  /// Can be rendered in Flutter using [Image.memory].
  static Future<Uint8List?> getAppIcon(String packageName) async {
    try {
      final String? iconBase64 = await _channel.invokeMethod<String>('getAppIcon', {
        'packageName': packageName,
      });
      if (iconBase64 == null || iconBase64.isEmpty) return null;
      return base64Decode(iconBase64);
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print("Failed to get icon for $packageName: '${e.message}'.");
      return null;
    }
  }
}
