import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
                child: Text('First container'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('Second container'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('Third container'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
