import 'package:flutter/material.dart';

void main() => runApp(UseAvatar());

class UseAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('images/elon.jpg'),
          ),
        ),
      ),
    );
  }
}
