part of "repositories.dart";

class AppRepositoryImplement implements AppRepository {
  final AppInstalledPigeonSchema _appInstalledPigeonSchema =
      AppInstalledPigeonSchema();

  final Map<String, Uint8List?> _iconCache = {};
  final Map<String, InstalledApplicationInfo?> _appInstalledCache = {};
  final HiveStorageDatasource _hiveStorageDatasource = HiveStorageDatasource();

  @override
  Future<List<InstalledApplicationInfo>> getListApplication() async {
    List<PigInstalledApplicationInfo> pigJson =
        await _appInstalledPigeonSchema.getListApplication();

    List<InstalledApplicationInfo> filteredApps = [];

    for (var e in pigJson) {
      final packageName = e.packageName;
      if (packageName == null || packageName.isEmpty) continue;

      final lowerPackage = packageName.toLowerCase();

      // 1. Nếu thuộc Whitelist -> Bỏ qua hoàn toàn, không lưu cache, không trả về UI
      final isWhite = _whitelistKeywords.any((kw) => lowerPackage.contains(kw));

      if (isWhite) {
        continue;
      }

      // 2. Nếu là ứng dụng hệ thống, và không thuộc Blacklist -> Bỏ qua
      final isBlack = _blacklistKeywords.any((kw) => lowerPackage.contains(kw));
      log('debug_log' 'packageName: $lowerPackage, isWhite: $isBlack');
      if (e.isSystemApp == "true" && !isBlack) {
        continue;
      }

      InstalledApplicationInfo installedApplicationInfo =
          InstalledApplicationInfo(
              appName: e.appName,
              packageName: e.packageName,
              isSystemApp: e.isSystemApp);

      _appInstalledCache[packageName] = installedApplicationInfo;
      getIcon(packageName);
      filteredApps.add(installedApplicationInfo);
    }

    return filteredApps;
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

  static const List<String> _whitelistKeywords = [
    'com.android.phone',
    'com.android.contacts',
    'com.android.settings',
    'com.android.mms',
    'com.google.android.apps.maps',
    'deskclock',
    'camera',
  ];

  static const List<String> _blacklistKeywords = [
    'facebook',
    'instagram',
    'tiktok',
    'youtube',
    'twitter',
    'zalo',
    'netflix',
    'game',
    'messenger',
    'com.zhiliaoapp.musically',
    'com.ss.android.ugc.trill',
    'com.ss.android.ugc.aweme',
    'com.lemon.lvoverseas',
    'chrome',
    'browser',
  ];

  @override
  Future<AppLimitConfig?> getAppLimitConfig(String? packageName) async {
    if (packageName == null || packageName.isEmpty) return null;

    Map<String, dynamic>? data = await _hiveStorageDatasource
        .getValueAsync<Map<String, dynamic>?>('app_limit_config_$packageName');

    if (data != null) {
      return AppLimitConfig.fromJson(data);
    }

    final lowerPackage = packageName.toLowerCase();

    // Nếu thuộc Blacklist -> Mặc định BẬT kiểm soát (isLocked = true), 2 tiếng, cả tuần
    final isBlack = _blacklistKeywords.any((kw) => lowerPackage.contains(kw));
    if (isBlack) {
      return AppLimitConfig(
        package: packageName,
        limitMinutes: "120",
        applyAllDays: true,
        applyWeekendOnly: false,
        isLocked: true,
      );
    }

    // Các app bình thường khác -> Mặc định TẮT kiểm soát (isLocked = false)
    return AppLimitConfig(
      package: packageName,
      limitMinutes: "120",
      applyAllDays: true,
      applyWeekendOnly: false,
      isLocked: false,
    );
  }

  @override
  Future<bool> setAppLimitConfig(AppLimitConfig? appLimitConfig) async {
    if (appLimitConfig == null) return false;
    await _hiveStorageDatasource.setValue(
        'app_limit_config_${appLimitConfig.package}', appLimitConfig.toJson());
    return true;
  }
  //
}
