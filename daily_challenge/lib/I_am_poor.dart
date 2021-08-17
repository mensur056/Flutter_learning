import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('I am poor'),
          ),
          body: Center(
            child: Image(
              image: AssetImage('images/elon.jpg'),
            ),
          ),
        ),
      ),
    );
