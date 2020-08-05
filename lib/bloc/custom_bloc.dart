import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:bloc_problem/model.dart';
import 'package:equatable/equatable.dart';

part 'custom_event.dart';
part 'custom_state.dart';

class CustomBloc extends Bloc<CustomEvent, CustomState> {
  CustomBloc() : super(CustomInitial({}));

  @override
  Stream<CustomState> mapEventToState(
    CustomEvent event,
  ) async* {
    if (event is MyEvent) {
      final start = DateTime.now();
      yield CustomInitial(event.map);
      print(DateTime.now().difference(start));
    }
  }
}
