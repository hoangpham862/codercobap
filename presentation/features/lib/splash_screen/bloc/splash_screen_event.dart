import 'package:shared/shared.dart';

abstract class SplashScreenEvent extends BaseEvent {}

class CustomProgressBarEvent extends SplashScreenEvent {
  final double? percent;

  CustomProgressBarEvent({this.percent});
}


