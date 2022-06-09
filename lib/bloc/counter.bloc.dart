import 'package:bloc/bloc.dart';

// events
abstract class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}

// states

abstract class CounterState {
  final int counter;
  CounterState({required this.counter});
}

class CounterSuccessState extends CounterState {
  CounterSuccessState({required super.counter});
}

class CounterErrorState extends CounterState {
  final String errorMessage;

  CounterErrorState({required int counter, required this.errorMessage})
      : super(counter: counter);
}

// bloc

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitialState()) {
    on((IncrementCounterEvent event, emit) {
      if (state.counter < 10) {
        int counterValue = state.counter + 1;
        emit(CounterSuccessState(counter: counterValue));
      } else {
        emit(CounterErrorState(
            counter: state.counter,
            errorMessage: "Counter value can't exceed 10"));
      }
    });

    on((DecrementCounterEvent event, emit) {
      if (state.counter > 0) {
        int counterValue = state.counter - 1;
        emit(CounterSuccessState(counter: counterValue));
      } else {
        emit(CounterErrorState(
            counter: state.counter,
            errorMessage: "Counter value can't be less than 0 "));
      }
    });
  }
}

class CounterInitialState extends CounterState {
  CounterInitialState() : super(counter: 0);
}
