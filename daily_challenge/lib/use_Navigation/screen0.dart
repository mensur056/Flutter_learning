import 'package:daily_challenge/use_Navigation/screen1.dart';
import 'package:flutter/material.dart';
import 'screen2.dart';

class Screen0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen0'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Screen1();
                }));
              },
              color: Colors.red,
              child: Text('Go to Screen1'),
            ),SizedBox(height: 10,),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Screen2();
                }));
              },
              color: Colors.red,
              child: Text('Go to Screen2'),
            )
          ],
        ),
      ),
    );
  }
}
