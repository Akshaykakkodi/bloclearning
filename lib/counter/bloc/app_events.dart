import 'package:flutter/material.dart';

abstract class CounterEvents {}

class Increment extends CounterEvents {}

class Decrement extends CounterEvents {
  final BuildContext context;

  Decrement({required this.context});
}
