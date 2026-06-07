import 'package:shared/shared.dart';

import 'list_app_control_event.dart';

class ListAppControlBloc extends BaseBloc {
  ListAppControlBloc() : super() {
    on<AppFilterEvent>(_onFilter);
  }

  /// Danh sách gốc (không bao giờ bị thay đổi)
  List<InstalledApplicationInfo?> _allApps = [];

  /// Danh sách hiện tại (đã lọc)
  List<InstalledApplicationInfo?> get displayApps => (state is LoadedState)
      ? (state as LoadedState).data as List<InstalledApplicationInfo?>
      : [];

  /// Lấy toàn bộ ứng dụng và emit state ban đầu
  void getAllApp() {
    _allApps = locator<AppRepository>().getAllAppInstalled;
    emit(LoadedState<AppFilterEvent>(data: _allApps));
  }

  /// Normalize chuỗi: bỏ dấu tiếng Việt, lowercase, trim

  void _onFilter(AppFilterEvent event, Emitter<BaseState> emit) {
    final query = removeDiacritics(event.query);
    if (query.isEmpty) {
      emit(LoadedState<AppFilterEvent>(data: _allApps));
      return;
    }
    final filtered = _allApps.where((item) {
      final name = removeDiacritics(item?.appName ?? '');
      final pkg = removeDiacritics(item?.packageName ?? '');
      return name.contains(query) || pkg.contains(query);
    }).toList();
    emit(LoadedState<AppFilterEvent>(data: filtered));
  }
}
