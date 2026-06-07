part of "repositores.dart";

abstract class AppRepository {
  //
  Future<List<InstalledApplicationInfo>> getListApplication();
  //
  Future<Uint8List?> getIcon(String packageName);
  //
  List<InstalledApplicationInfo?> get getAllAppInstalled;
  Uint8List? getIconForPackage(String? packageName);
}
