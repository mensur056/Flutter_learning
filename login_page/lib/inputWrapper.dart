import 'package:flutter/material.dart';

class inputWrapper extends StatelessWidget {
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
            child: inputField(),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Forget password?',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
