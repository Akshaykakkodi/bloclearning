import 'package:bloclearning/calculator/bloc/calculator_events.dart';
import 'package:bloclearning/calculator/bloc/calculator_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorBlocs extends Bloc<CalculatorEvents, CalculatorStates> {
  CalculatorBlocs() : super(CalculatorInitialState()) {
    on<Addition>((event, emit) {
      addition(event.num1, event.num2);
      emit(CalculatorStates(
          result: state.result,
          number1: state.number1,
          number2: state.number2));
    });

    on<Substraction>((event, emit) {
      substraction(event.num1, event.num2);
      emit(CalculatorStates(
          result: state.result,
          number1: state.number1,
          number2: state.number2));
    });

    on<Division>((event, emit) {
      division(event.num1, event.num2);
      emit(CalculatorStates(
          result: state.result,
          number1: state.number1,
          number2: state.number2));
    });

    on<Multiplication>((event, emit) {
      multiplication(event.num1, event.num2);
      emit(CalculatorStates(
          result: state.result,
          number1: state.number1,
          number2: state.number2));
    });

    on<Clear>((event, emit) {
      emit(CalculatorInitialState());
    });
  }
  void addition(double num1, double num2) {
    state.result = num1 + num2;
  }

  void substraction(double num1, double num2) {
    state.result = num1 - num2;
  }

  void division(double num1, double num2) {
    state.result = num1 / num2;
  }

  void multiplication(double num1, double num2) {
    state.result = num1 * num2;
  }
}
