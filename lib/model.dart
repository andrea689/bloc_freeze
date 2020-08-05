import 'dart:collection';

import 'package:equatable/equatable.dart';

class MyObject extends Equatable {
  final Map<int, SplayTreeSet<MyObject2>> prop1;
  final Map<int, SplayTreeSet<MyObject2>> prop2;
  final SplayTreeSet<MyObject2> prop3;
  final SplayTreeSet<MyObject2> prop4;
  final int prop5;
  final int prop6;

  MyObject(
    this.prop1,
    this.prop2,
    this.prop3,
    this.prop4,
    this.prop5,
    this.prop6,
  );

  MyObject clone() {
    final clone = MyObject(
      prop1.map((key, value) => MapEntry(key, SplayTreeSet.from(value))),
      prop2.map((key, value) => MapEntry(key, SplayTreeSet.from(value))),
      SplayTreeSet.from(prop3),
      SplayTreeSet.from(prop4),
      prop5,
      prop6,
    );
    return clone;
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        prop1,
        prop2,
        prop3,
        prop4,
        prop5,
        prop6,
      ];
}

class MyObject2 extends Equatable implements Comparable<MyObject2> {
  final DateTime date;
  final double value;

  MyObject2(this.date, this.value);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [date, value];

  @override
  int compareTo(MyObject2 other) {
    if (date.isBefore(other.date)) {
      return -1;
    }
    if (date.isAfter(other.date)) {
      return 1;
    }
    return 0;
  }
}
