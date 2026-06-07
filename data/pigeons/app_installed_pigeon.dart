import 'package:pigeon/pigeon.dart';

@HostApi()
abstract class AppInstalledPigeonSchema {
  // lấy info installed packages
  @async
  List<PigInstalledApplicationInfo> getListApplication();

  //lấy icon packages
  @async
  Uint8List? getAppIcon(String packageName);
}

//
class PigInstalledApplicationInfo {
  String? appName;
  String? packageName;
  String? isSystemApp;
}
