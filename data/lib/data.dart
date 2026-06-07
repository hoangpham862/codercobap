library data;

import 'package:hive_flutter/hive_flutter.dart';

export 'datasource/remote/api/api.dart';
export 'responses/response.dart';
export 'repositories/repositories.dart';
export 'helper/helper.dart';
export 'base/base.dart';
export 'package:get_it/get_it.dart';

abstract class Data {
  static final Data _instance = _DataImpl();
  static Data get instance => _instance;

  bool isDatabaseInitialized = false;

  Future<void> init();
}

class _DataImpl extends Data {
  @override
  Future<void> init() async {
    await Hive.initFlutter();
  }
}
