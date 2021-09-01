import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen2'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: RaisedButton(child: Text('Go To Back Screen0'),
          onPressed: () {Navigator.pop(context);},
          color: Colors.red,
        ),
      ),
    );
  }
}
