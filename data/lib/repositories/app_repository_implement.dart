part of "repositories.dart";

class AppRepositoryImplement implements AppRepository {
  final MethodChannel _methodChannel =
      const MethodChannel("vn.com.codercobap.nekofocus/app_helper");

  final Map<String, Uint8List?> _iconCache = {};

  @override
  Future<List<InstalledApplicationInfo>> getListApplication() async {
    List<dynamic> json =
        await _methodChannel.invokeMethod("getListApplication");
    return json.map((e) => InstalledApplicationInfo.fromMap(e)).toList();
  }

  @override
  Future<Uint8List?> getIcon(String packageName) async {
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
}
