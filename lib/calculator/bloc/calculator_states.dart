import 'package:flutter/widgets.dart';

class CalculatorStates{
  double result;
  TextEditingController number1;
  TextEditingController number2;
  CalculatorStates({required this.result,required this.number1,required this.number2});
}

class CalculatorInitialState extends CalculatorStates{
  CalculatorInitialState():super(result: 0,number1: TextEditingController(text: ""),number2:TextEditingController(text: ""));
}