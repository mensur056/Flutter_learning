import 'package:flutter/material.dart';
import 'package:my_folder/my_folder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFolder(),
    );
  }
}