import 'package:flutter/material.dart';

void main() => runApp(UseRow());

class UseRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100,

                color: Colors.white,
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Container(width: 100.0, height: 100.0, color: Colors.yellow),
                  Container(width: 100.0, height: 100.0, color: Colors.green)
                ],
              ),SizedBox(width: 30.0,),
              Container(
                width: 100,

                color: Colors.red,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
