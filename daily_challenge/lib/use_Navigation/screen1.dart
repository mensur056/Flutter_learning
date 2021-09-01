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
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Screen2();
            }));
          },
          child: Text('Go To Screen2'),
        ),
      ),
    );
  }
}
