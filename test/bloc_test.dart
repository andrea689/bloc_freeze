import 'dart:collection';
import 'dart:math';

import 'package:bloc_problem/bloc/custom_bloc.dart';
import 'package:bloc_problem/model.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  CustomBloc bloc;

  setUp(() {
    bloc = CustomBloc();
  });

  tearDown(() {
    bloc?.close();
  });

  var random = Random();

  Set<MyObject2> getMyObject2() => {
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
        MyObject2(DateTime.now(), random.nextDouble()),
      };

  MyObject getMyObject() {
    return MyObject(
      {1: SplayTreeSet.from(getMyObject2())},
      {1: SplayTreeSet.from(getMyObject2())},
      SplayTreeSet.from(getMyObject2()),
      SplayTreeSet.from(getMyObject2()),
      1,
      1,
    ).clone();
  }

  Map<int, Map<int, MyObject>> getMap() {
    final Map<int, Map<int, MyObject>> map = {};

    for (var i = 0; i < 100; i++) {
      map[i] = {};
      for (var j = 0; j < 100; j++) {
        map[i][j] = getMyObject();
      }
    }

    return map;
  }

  test('description', () {
    final Map<int, Map<int, MyObject>> map = {
      1: {2: getMyObject()}
    };
    bloc.add(MyEvent(map));
    expect(1, 1);
  });

  test('description 2', () {
    final map1 = getMap();
    final map2 = getMap();
    bloc.add(MyEvent(map1));
    bloc.add(MyEvent(map2));
  });

  final map1 = getMap();
  final map2 = getMap();
  final map3 = getMap();
  final map4 = getMap();
  final map5 = getMap();
  final map6 = getMap();
  final map7 = getMap();
  final map8 = getMap();
  final map9 = getMap();

  blocTest<CustomBloc, CustomState>(
    'description 3',
    build: () {
      return bloc;
    },
    act: (bloc) {
      bloc.add(MyEvent(map1));
      bloc.add(MyEvent(map2));
      bloc.add(MyEvent(map3));
      bloc.add(MyEvent(map4));
      bloc.add(MyEvent(map5));
      bloc.add(MyEvent(map6));
      bloc.add(MyEvent(map7));
      bloc.add(MyEvent(map8));
      bloc.add(MyEvent(map9));
      return;
    },
    expect: [
      CustomInitial(map1),
      CustomInitial(map2),
      CustomInitial(map3),
      CustomInitial(map4),
      CustomInitial(map5),
      CustomInitial(map6),
      CustomInitial(map7),
      CustomInitial(map8),
      CustomInitial(map9),
    ],
  );
}
