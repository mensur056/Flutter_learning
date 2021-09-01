import 'package:flutter/material.dart';
import 'screen2.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen1'), backgroundColor: Colors.red),
      body: Center(
        child: RaisedButton(
          color: Colors.red,
          onPressed: () {Navigator.pop(context);

          },
          child: Text('Go To Back Screen0'),
        ),
      ),
    );
  }
}
