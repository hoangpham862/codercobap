part of "repositories.dart";

class AppRepositoryImplement implements AppRepository {
  final AppInstalledPigeonSchema _appInstalledPigeonSchema =
      AppInstalledPigeonSchema();

  final Map<String, Uint8List?> _iconCache = {};
  final Map<String, InstalledApplicationInfo?> _appInstalledCache = {};

  @override
  Future<List<InstalledApplicationInfo>> getListApplication() async {
    List<PigInstalledApplicationInfo> pigJson =
        await _appInstalledPigeonSchema.getListApplication();

    return pigJson.map((e) {
      InstalledApplicationInfo installedApplicationInfo =
          InstalledApplicationInfo(
              appName: e.appName,
              packageName: e.packageName,
              isSystemApp: e.isSystemApp);
      //
      if ((e.packageName ?? '').isNotEmpty) {
        _appInstalledCache[e.packageName!] = installedApplicationInfo;
        getIcon(e.packageName ?? '');
      }
      return installedApplicationInfo;
    }).toList();
  }

  @override
  Future<Uint8List?> getIcon(String packageName) async {
    if (_iconCache.containsKey(packageName)) {
      return _iconCache[packageName];
    }

    try {
      final Uint8List? iconBytes =
          await _appInstalledPigeonSchema.getAppIcon(packageName);

      _iconCache[packageName] = iconBytes;
      return iconBytes;
    } on PlatformException catch (e) {
      debugPrint("Failed to get app icon: ${e.message}");
      return null;
    }
  }

  @override
  List<InstalledApplicationInfo?> get getAllAppInstalled =>
      _appInstalledCache.values.toList();

  @override
  Uint8List? getIconForPackage(String? packageName) {
    if (packageName == null || packageName.isEmpty) return null;
    if (_iconCache.containsKey(packageName)) {
      return _iconCache[packageName];
    }
    return null;
  }
}
