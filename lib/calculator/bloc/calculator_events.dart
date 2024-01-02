abstract class CalculatorEvents{}
class Addition extends CalculatorEvents{
  final double num1;
  final double num2;

  Addition({required this.num1, required this.num2});
  
}
class Substraction extends CalculatorEvents{
  final double num1;
  final double num2;

  Substraction({required this.num1, required this.num2});
  
}
class Division extends CalculatorEvents{
   final double num1;
  final double num2;

  Division({required this.num1, required this.num2});
}
class Multiplication extends CalculatorEvents{
   final double num1;
  final double num2;

  Multiplication({required this.num1, required this.num2});
}
class Clear extends CalculatorEvents{
  
}