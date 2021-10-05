import 'package:flutter/material.dart';
import 'InputField.dart';
import 'Button.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: InputField(),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Forgot password?',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 40,
          ),
          Button()
        ],
      ),
    );
  }
}
