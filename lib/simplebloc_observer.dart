import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleblocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    print('change :${change}');
  }

  @override
  void onClose(BlocBase bloc) {
    print('close :${bloc}');
  }

  @override
  void onCreate(BlocBase bloc) {
    print('create :${bloc}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}
