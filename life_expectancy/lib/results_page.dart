import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Results',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Center(child: Text('Hello',style: TextStyle(fontSize: 40),)),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
