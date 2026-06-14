import 'package:shared/shared.dart';

abstract class SettingLimitTimeEvent extends BaseEvent {}

class ApplyAllDaysEvent extends SettingLimitTimeEvent {
  final bool? enable;
  ApplyAllDaysEvent({this.enable});
}

class ApplyWeekenOnlyEvent extends SettingLimitTimeEvent {
  final bool? enable;
  ApplyWeekenOnlyEvent({this.enable});
}

class ChangeTimeLimitEvent extends SettingLimitTimeEvent {
  final int minutes;
  ChangeTimeLimitEvent({required this.minutes});
}

//
class EnableLockAppEvent extends SettingLimitTimeEvent {
  final bool? isLocked;
  EnableLockAppEvent({this.isLocked});
}

//
class LoadAppLimitConfigEvent extends SettingLimitTimeEvent {
  final String packageName;
  LoadAppLimitConfigEvent({required this.packageName});
}

class SaveAppLimitConfigEvent extends SettingLimitTimeEvent {
  final String packageName;

  SaveAppLimitConfigEvent({
    required this.packageName,
  });
}
