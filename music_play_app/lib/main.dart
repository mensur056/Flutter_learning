import 'package:flutter/material.dart';
import 'colors.dart';
import 'navbar.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Circular'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Navbar(),
    );
  }
}
