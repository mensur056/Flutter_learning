import 'package:flutter/material.dart';
import 'package:calculator_app/widget/calculator_button.dart';

void main() => runApp(MyCalculator());

class MyCalculator extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [CalculatorButton(),
                  CalculatorButton(),
                  CalculatorButton(),
                  CalculatorButton(),



                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
