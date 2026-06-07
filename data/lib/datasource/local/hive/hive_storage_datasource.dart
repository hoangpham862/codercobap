import 'package:data/datasource/local/hive/hive_key_const.dart';
import 'package:hive_flutter/hive_flutter.dart';

//
export 'hive_key_const.dart';

class HiveStorageDatasource {
  static final HiveStorageDatasource _instance =
      HiveStorageDatasource._internal();
  factory HiveStorageDatasource() => _instance;
  HiveStorageDatasource._internal();
  //
  late LazyBox _box;

  // Khỏi tạo box
  Future<void> initBox() async {
    await Hive.initFlutter();
    _box = await Hive.openLazyBox(HiveKeyConst.app_common_box);
  }

  // =========================================================
  // HÀM ĐỌC DÙNG CHUNG (Nhận vào Key, Default Value và trả về T)
  // =========================================================

  Future<T> getValueAsync<T>(String key, {T? defaultValue}) async {
    return await _box.get(key, defaultValue: defaultValue) as T;
  }

  // =========================================================
  // HÀM GHI DÙNG CHUNG
  // =========================================================
  Future<void> setValue<T>(String key, T value) async {
    await _box.put(key, value);
  }

  //
  //
  Future<void> clearAllData() async {
    await _box.clear();
  }
}
