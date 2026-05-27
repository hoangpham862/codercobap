import 'package:shared/shared.dart';

import 'blocs.dart';

class SplashScreenBloc extends BaseBloc {
  SplashScreenBloc() : super() {
    on<CustomProgressBarEvent>(_onCustomProgressBar);
  }

  void _onCustomProgressBar(CustomProgressBarEvent event, Emitter emit) {
    emit(SplashScreenState());
  }

  //
  double percent = 0;

  //
  Future<void> getListApplication() async {
    await GetListApplicationHelper.getListApplication();
  }
}
