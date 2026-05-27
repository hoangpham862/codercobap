import 'package:flutter_bloc/flutter_bloc.dart';
import 'base.dart';

abstract class BaseBloc extends Bloc<BaseEvent, BaseState> {
  BaseBloc() : super(InitState());
}
