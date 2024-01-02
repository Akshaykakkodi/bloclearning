import 'package:bloclearning/calculator/bloc/calculator_blocs.dart';
import 'package:bloclearning/calculator/bloc/calculator_events.dart';
import 'package:bloclearning/calculator/bloc/calculator_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
      ),
      body: BlocBuilder<CalculatorBlocs, CalculatorStates>(
        builder: (context, state) {
          return SingleChildScrollView(
              child: MediaQuery.of(context).orientation == Orientation.portrait
                  ? Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(
                              controller: state.number1,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  constraints: BoxConstraints(maxWidth: 70),
                                  border: OutlineInputBorder()),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            TextField(
                              controller: state.number2,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  constraints: BoxConstraints(maxWidth: 70),
                                  border: OutlineInputBorder()),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () => BlocProvider.of<CalculatorBlocs>(
                                        context)
                                    .add(Addition(
                                        num1: double.parse(state.number1.text),
                                        num2:
                                            double.parse(state.number2.text))),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  color: Colors.grey[300],
                                  child: const Center(
                                      child: Text(
                                    "+",
                                    style: TextStyle(fontSize: 30),
                                  )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () => BlocProvider.of<CalculatorBlocs>(
                                        context)
                                    .add(Substraction(
                                        num1: double.parse(state.number1.text),
                                        num2:
                                            double.parse(state.number2.text))),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  color: Colors.grey[300],
                                  child: const Center(
                                      child: Text(
                                    "-",
                                    style: TextStyle(fontSize: 30),
                                  )),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () => BlocProvider.of<CalculatorBlocs>(
                                        context)
                                    .add(Division(
                                        num1: double.parse(state.number1.text),
                                        num2:
                                            double.parse(state.number2.text))),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  color: Colors.grey[300],
                                  child: const Center(
                                      child: Text(
                                    "/",
                                    style: TextStyle(fontSize: 30),
                                  )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () => BlocProvider.of<CalculatorBlocs>(
                                        context)
                                    .add(Multiplication(
                                        num1: double.parse(state.number1.text),
                                        num2:
                                            double.parse(state.number2.text))),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  color: Colors.grey[300],
                                  child: const Center(
                                      child: Text(
                                    "*",
                                    style: TextStyle(fontSize: 30),
                                  )),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () =>
                                    BlocProvider.of<CalculatorBlocs>(context)
                                        .add(Clear()),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  color: Colors.grey[300],
                                  child: const Center(
                                      child: Text(
                                    "C",
                                    style: TextStyle(fontSize: 30),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            width: 80,
                            color: Colors.green[300],
                            child: Center(
                                child: Text(
                              state.result.toString(),
                              style: const TextStyle(fontSize: 30),
                            )),
                          ),
                        ),
                      ],
                    )
                  :

                  //landscape orientation
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextField(
                                  controller: state.number1,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                      constraints: BoxConstraints(maxWidth: 70),
                                      border: OutlineInputBorder()),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                TextField(
                                  controller: state.number2,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                      constraints: BoxConstraints(maxWidth: 70),
                                      border: OutlineInputBorder()),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 80,
                                width: 80,
                                color: Colors.green[300],
                                child: Center(
                                    child: Text(
                                  state.result.toString(),
                                  style: const TextStyle(fontSize: 30),
                                )),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () =>
                                        BlocProvider.of<CalculatorBlocs>(
                                                context)
                                            .add(Addition(
                                                num1: double.parse(
                                                    state.number1.text),
                                                num2: double.parse(
                                                    state.number2.text))),
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      color: Colors.grey[300],
                                      child: const Center(
                                          child: Text(
                                        "+",
                                        style: TextStyle(fontSize: 30),
                                      )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () =>
                                        BlocProvider.of<CalculatorBlocs>(
                                                context)
                                            .add(Substraction(
                                                num1: double.parse(
                                                    state.number1.text),
                                                num2: double.parse(
                                                    state.number2.text))),
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      color: Colors.grey[300],
                                      child: const Center(
                                          child: Text(
                                        "-",
                                        style: TextStyle(fontSize: 30),
                                      )),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () =>
                                        BlocProvider.of<CalculatorBlocs>(
                                                context)
                                            .add(Division(
                                                num1: double.parse(
                                                    state.number1.text),
                                                num2: double.parse(
                                                    state.number2.text))),
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      color: Colors.grey[300],
                                      child: const Center(
                                          child: Text(
                                        "/",
                                        style: TextStyle(fontSize: 30),
                                      )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () =>
                                        BlocProvider.of<CalculatorBlocs>(
                                                context)
                                            .add(Multiplication(
                                                num1: double.parse(
                                                    state.number1.text),
                                                num2: double.parse(
                                                    state.number2.text))),
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      color: Colors.grey[300],
                                      child: const Center(
                                          child: Text(
                                        "*",
                                        style: TextStyle(fontSize: 30),
                                      )),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () =>
                                        BlocProvider.of<CalculatorBlocs>(
                                                context)
                                            .add(Clear()),
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      color: Colors.grey[300],
                                      child: const Center(
                                          child: Text(
                                        "C",
                                        style: TextStyle(fontSize: 30),
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ));
        },
      ),
    );
  }
}
