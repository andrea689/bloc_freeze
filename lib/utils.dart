import 'dart:collection';
import 'dart:math';

import 'package:bloc_problem/model.dart';

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
