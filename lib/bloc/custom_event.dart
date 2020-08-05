part of 'custom_bloc.dart';

abstract class CustomEvent extends Equatable {
  const CustomEvent();
}

class MyEvent extends CustomEvent {
  final Map<int, Map<int, MyObject>> map;

  MyEvent(this.map);

  @override
  List<Object> get props => [map];
}
