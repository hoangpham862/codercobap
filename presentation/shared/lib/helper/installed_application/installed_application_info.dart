class InstalledApplicationInfo {
  final String? appName;
  final String? packageName;
  final String? isSystemApp;
  InstalledApplicationInfo({this.appName, this.packageName, this.isSystemApp});

  factory InstalledApplicationInfo.fromMap(Map<String, dynamic> json) =>
      InstalledApplicationInfo(
        appName: json['appName'],
        packageName: json['packageName'],
        isSystemApp: json['isSystemApp'],
      );
  Map<String, dynamic> toJson() => {
        'appName': appName,
        'packageName': packageName,
        'isSystemApp': isSystemApp,
      };
}
