import 'package:features/setting_limit_time/bloc/setting_limit_time_event.dart';
import 'package:shared/shared.dart';

class SettingLimitTimeBloc extends BaseBloc {
  SettingLimitTimeBloc() : super() {
    on<ApplyAllDaysEvent>((event, emit) {
      enableApplyAllDays = event.enable ?? enableApplyAllDays;
      emit(LoadedState(data: enableApplyAllDays));
    });
    on<ApplyWeekenOnlyEvent>((event, emit) {
      enableWeekenOnly = event.enable ?? enableWeekenOnly;
      emit(LoadedState(data: enableWeekenOnly));
    });
    on<ChangeTimeLimitEvent>((event, emit) {
      _minutes = event.minutes;
      emit(LoadedState(data: _minutes));
    });
  }
  //
  bool enableApplyAllDays = true;
  bool enableWeekenOnly = false;
  int _minutes = 90;
  int get minutes => _minutes;
}
