abstract class CounterState {}

class InitCounter extends CounterState {
  final int counter;

  InitCounter(this.counter);
}

class UpdateCounter extends CounterState {
  final int counter;

  UpdateCounter(this.counter);
}
