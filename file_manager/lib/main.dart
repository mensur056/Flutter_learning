import 'package:flutter/material.dart';
import 'my_folder.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false
      ,

      home: MyFolder(),
    );
  }
}

