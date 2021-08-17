import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: Text('Hello'),
          ),
          body: Center(
            child: Image(image: AssetImage('images/photo.jpg')),
          ),
        ),
      ),
    );
