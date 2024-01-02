import 'package:bloclearning/calculator/bloc/calculator_blocs.dart';
import 'package:bloclearning/calculator/view/calculator_view.dart';
import 'package:bloclearning/counter/bloc/app_blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBlocs(),
        ),
        BlocProvider(
          create: (context) => CalculatorBlocs(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home:const CalculatorView(),
      ),
    );
  }
}
