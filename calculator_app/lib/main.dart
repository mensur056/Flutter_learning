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
        backgroundColor: Color(0xFF0A0E21),
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    callBack: null,
                    text: 'AC',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFF8ac4d0,

                  ),
                  CalculatorButton(
                    text: 'C',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFF8ac4d0,
                    callBack: null,
                  ),
                  CalculatorButton(
                    callBack: null,
                    text: '<',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFFed970e,
                  ),
                  CalculatorButton(
                    callBack: null,
                    text: '/',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFFed970e,
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    callBack: null,
                    text: '9',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFF8ac4d0,

                  ), CalculatorButton(
                    callBack: null,
                    text: '8',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFF8ac4d0,
                  ),
                  CalculatorButton(
                    callBack: null,
                    text: '7',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFF8ac4d0,
                  ),
                  CalculatorButton(
                    callBack: null,
                    text: 'X',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFFed970e,
                  ),
                ],
              ),Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    callBack: null,
                    text: '9',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFF8ac4d0,

                  ), CalculatorButton(
                    callBack: null,
                    text: '8',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFF8ac4d0,
                  ),
                  CalculatorButton(
                    callBack: null,
                    text: '7',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFF8ac4d0,
                  ),
                  CalculatorButton(
                    callBack: null,
                    text: 'X',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFFed970e,
                  ),
                ],
              ),Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    callBack: null,
                    text: '9',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFF8ac4d0,

                  ), CalculatorButton(
                    callBack: null,
                    text: '8',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFF8ac4d0,
                  ),
                  CalculatorButton(
                    callBack: null,
                    text: '7',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFF8ac4d0,
                  ),
                  CalculatorButton(
                    callBack: null,
                    text: 'X',
                    textColor: 0xFF000000,
                    textSize: 20,
                    fillColor: 0xFFed970e,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
