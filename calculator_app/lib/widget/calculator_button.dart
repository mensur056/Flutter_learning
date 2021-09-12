


import 'package:flutter/material.dart';

class CalculatorButton extends StatefulWidget {


  @override
  _CalculatorButtonState createState() => _CalculatorButtonState();
}

class _CalculatorButtonState extends State<CalculatorButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            '9',
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.blue,
          textColor: Color(0xFF000000),
        ),
      ),
    );
  }
}
