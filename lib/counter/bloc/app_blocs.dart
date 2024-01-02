import 'package:bloclearning/counter/bloc/app_events.dart';
import 'package:bloclearning/counter/bloc/app_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocs extends Bloc<CounterEvents, CounterStates> {
  CounterBlocs() : super(InitialState()) {
    on<Increment>((event, emit) {
      emit(CounterStates(counter: state.counter + 1));
    });

    on<Decrement>((event, emit) {
      if (state.counter > 0) {
        emit(CounterStates(counter: state.counter - 1));
      } else {
        emit(state);
        showSnackBar(event.context);
      }
    });
  }
  void showSnackBar(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('Counter cannot go below 0!'),
      duration: Duration(seconds: 2),
    );

    // Access the current context to show the SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
