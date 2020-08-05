part of 'custom_bloc.dart';

abstract class CustomState extends Equatable {
  const CustomState();
}

class CustomInitial extends CustomState {
  final Map<int, Map<int, MyObject>> map;
  final Random random = Random();

  CustomInitial(this.map);

  @override
  List<Object> get props => [map]; //[random.nextDouble()];
}
