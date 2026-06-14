import 'package:shared/shared.dart';

class SettingLimitTimeState extends BaseState {
  final AppLimitConfig? appLimitConfig;
  final bool enableApplyAllDays;
  final bool enableWeekenOnly;
  final int minutes;
  final bool isLocked;
  const SettingLimitTimeState({
    this.isLocked = false,
    this.appLimitConfig,
    this.enableApplyAllDays = true,
    this.enableWeekenOnly = false,
    this.minutes = 90,
  });

  SettingLimitTimeState copyWith({
    bool? isLocked,
    AppLimitConfig? appLimitConfig,
    bool? enableApplyAllDays,
    bool? enableWeekenOnly,
    int? minutes,
  }) {
    return SettingLimitTimeState(
      isLocked: isLocked ?? this.isLocked,
      appLimitConfig: appLimitConfig ?? this.appLimitConfig,
      enableApplyAllDays: enableApplyAllDays ?? this.enableApplyAllDays,
      enableWeekenOnly: enableWeekenOnly ?? this.enableWeekenOnly,
      minutes: minutes ?? this.minutes,
    );
  }

  bool get hasChanges {
    final original = appLimitConfig;
    if (original == null) {
      return isLocked != false ||
          enableApplyAllDays != true ||
          enableWeekenOnly != false ||
          minutes != 90;
    }
    return isLocked != (original.isLocked ?? false) ||
        enableApplyAllDays != (original.applyAllDays ?? false) ||
        enableWeekenOnly != (original.applyWeekendOnly ?? false) ||
        minutes != (original.limitMinutes ?? 0);
  }

  @override
  List<Object?> get props =>
      [appLimitConfig, enableApplyAllDays, enableWeekenOnly, minutes, isLocked];
}
