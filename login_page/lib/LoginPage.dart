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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),),
            SizedBox(
              height: 150,
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
