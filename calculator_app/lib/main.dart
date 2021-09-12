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
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [CalculatorButton(text: '9',),
                  CalculatorButton(text: '8',),
                  CalculatorButton(text: '7',),
                  CalculatorButton(text: '6',),



                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [CalculatorButton(text: '',),
                  CalculatorButton(text: '',),
                  CalculatorButton(text: '',),
                  CalculatorButton(text: '',),



                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [CalculatorButton(text: '5',),
                  CalculatorButton(text: '4',),
                  CalculatorButton(text: '3',),
                  CalculatorButton(text: '2',),



                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [CalculatorButton(text: '9',),
                  CalculatorButton(text: '8',),
                  CalculatorButton(text: '7',),
                  CalculatorButton(text: '6',),



                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
