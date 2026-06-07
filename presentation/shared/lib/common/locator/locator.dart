import 'package:data/data.dart';
import 'package:domain/domain.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<AppRepository>(() => AppRepositoryImplement());
}
