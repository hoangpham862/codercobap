import 'package:shared/shared.dart';

abstract class ListAppControlEvent extends BaseEvent {}

class AppFilterEvent extends ListAppControlEvent {
  final String query;
  AppFilterEvent({required this.query});
}
