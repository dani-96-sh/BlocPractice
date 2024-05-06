import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tests/counter/CounterEvents.dart';
import 'package:tests/counter/CounterState.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(InitCounter(0)) {
    on<Incresmentpressed>((event, emit) {
      emit(UpdateCounter(++counter));
    });
    on<Decresmentpressed>((event, emit) {
      emit(UpdateCounter(--counter));
    });

    on<resetpressed>((event, emit) {
      emit(UpdateCounter(counter = 0));
    });
  }
}
