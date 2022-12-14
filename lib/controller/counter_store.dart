import 'package:mobx/mobx.dart';

part 'counter_store.g.dart';

class Counter = _CounterBase with _$Counter;

abstract class _CounterBase with Store {
  @observable
  int count = 0;
  @computed
  bool get isEmpty => count == 0;
  @computed
  bool get isFull => count == 20;

  @action
  void increment() {
    count++;
  }

  @action
  void decrement() {
    count--;
  }
}
