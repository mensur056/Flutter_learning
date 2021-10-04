import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.cyan,
            Colors.cyan,
            Colors.cyan,
          ]),
        ),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
              ),
            ),
            Text(
              'Welcome to inside Android',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(60),
                      topLeft: Radius.circular(60))),
            ))
          ],
        ),
      ),
    );
  }
}
