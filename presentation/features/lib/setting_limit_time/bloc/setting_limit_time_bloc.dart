import 'package:shared/shared.dart';

import 'bloc.dart';

class SettingLimitTimeBloc extends BaseBloc {
  SettingLimitTimeBloc() : super() {
    on<ApplyAllDaysEvent>((event, emit) {
      emit(currentState.copyWith(
          enableApplyAllDays: event.enable ?? currentState.enableApplyAllDays));
    });
    on<ApplyWeekenOnlyEvent>((event, emit) {
      emit(currentState.copyWith(
          enableWeekenOnly: event.enable ?? currentState.enableWeekenOnly));
    });
    on<ChangeTimeLimitEvent>((event, emit) {
      emit(currentState.copyWith(minutes: event.minutes));
    });
    on<EnableLockAppEvent>((event, emit) {
      emit(currentState.copyWith(isLocked: event.isLocked));
    });
    on<LoadAppLimitConfigEvent>((event, emit) async {
      AppLimitConfig? results =
          await loadAppLimitConfig(packageName: event.packageName);
      if (results != null) {
        emit(SettingLimitTimeState(
            appLimitConfig: results,
            enableApplyAllDays: results.applyAllDays ?? false,
            enableWeekenOnly: results.applyWeekendOnly ?? false,
            minutes: results.limitMinutes ?? 0,
            isLocked: results.isLocked ?? false));
      } else {
        emit(SettingLimitTimeState(
          appLimitConfig: results,
        ));
      }
    });
    //
    on<SaveAppLimitConfigEvent>((event, emit) async {
      var updatedConfig = AppLimitConfig(
        package: event.packageName,
        isLocked: currentState.isLocked,
        applyAllDays: currentState.enableApplyAllDays,
        applyWeekendOnly: currentState.enableWeekenOnly,
        limitMinutes: currentState.minutes,
      );
      await saveAppLimitConfig(
        appLimitConfig: updatedConfig,
      );
      emit(currentState.copyWith(appLimitConfig: updatedConfig));
    });
  }

  SettingLimitTimeState get currentState {
    if (state is SettingLimitTimeState) {
      return state as SettingLimitTimeState;
    }
    return const SettingLimitTimeState();
  }

  Future<AppLimitConfig?> loadAppLimitConfig(
      {required String packageName}) async {
    AppLimitConfig? results =
        await locator<AppRepository>().getAppLimitConfig(packageName);

    return results;
  }

  Future<void> saveAppLimitConfig(
      {required AppLimitConfig appLimitConfig}) async {
    await locator<AppRepository>().setAppLimitConfig(appLimitConfig);
  }
}
