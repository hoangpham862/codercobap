import 'package:equatable/equatable.dart';

abstract class BaseState extends Equatable {
  const BaseState();

  @override
  List<Object?> get props => [];
}

class InitState extends BaseState {}

class LoadingState<T> extends BaseState {
  final T? e;
  LoadingState({this.e});
}

class ProcessingState extends BaseState {}

class CancelState extends BaseState {}

class LoadedState<T> extends BaseState {
  final dynamic data;
  final dynamic source;
  final T? e;

  LoadedState({required this.data, this.source, this.e});

  @override
  List<Object?> get props => [data, source];
}

class ErrorState<T> extends BaseState {
  final dynamic data;
  final T? e;

  ErrorState({required this.data, this.e}) : assert(data != null);

  @override
  List<Object?> get props => [data, e];
}
