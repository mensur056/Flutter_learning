
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
final String text;
const CalculatorButton({required this.text});

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
            text,
            style: TextStyle(fontSize: 24),
          ),
          color: Colors.blue,
          textColor: Color(0xFF000000),
        ),
      ),
    );
  }
}
