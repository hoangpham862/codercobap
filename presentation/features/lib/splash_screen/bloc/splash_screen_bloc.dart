import 'dart:developer';

import 'package:shared/shared.dart';

import 'blocs.dart';

class SplashScreenBloc extends BaseBloc {
  SplashScreenBloc() : super() {
    on<CustomProgressBarEvent>(_onCustomProgressBar);
  }

  void _onCustomProgressBar(
      CustomProgressBarEvent event, Emitter<BaseState> emit) {
    emit(LoadedState<CustomProgressBarEvent>(data: event.percent ?? 0.0));
  }

  //
  double percent = 0;

  //
  Future<void> getListApplication() async {
    percent = 0.0;
    add(CustomProgressBarEvent(percent: percent));

    // Bắt đầu tải danh sách ứng dụng
    final appRepository = locator<AppRepository>();
    final loadTask = appRepository.getListApplication();

    // Chạy song song hiệu ứng tăng progress mượt mà từ 0% đến 90%
    bool isCompleted = false;
    final progressSimulation = () async {
      while (!isCompleted && percent < 0.9) {
        await Future.delayed(const Duration(milliseconds: 50));
        if (isCompleted) break;
        percent += 0.02;
        if (percent > 0.9) percent = 0.9;
        add(CustomProgressBarEvent(percent: percent));
      }
    }();

    try {
      final listApp = await loadTask;
      if (listApp.isNotEmpty) {
        log(listApp.first.packageName ?? '');
      }
    } catch (e) {
      log('Error loading applications: $e');
    } finally {
      isCompleted = true;
    }

    // Chạy nốt phần progress còn lại lên 100% (1.0) sau khi tải xong
    while (percent < 1.0) {
      await Future.delayed(const Duration(milliseconds: 20));
      percent += 0.05;
      if (percent > 1.0) percent = 1.0;
      add(CustomProgressBarEvent(percent: percent));
    }
  }
}
