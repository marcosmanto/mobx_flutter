import 'package:mobx/mobx.dart';

class Counter {
  final Observable _count = Observable(0);
  late Action increment;

  Counter() {
    increment = Action(_increment);
  }

  int get count => _count.value;

  void _increment() {
    _count.value++;
  }
}
