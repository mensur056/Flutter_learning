import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: Falci(),
    );
  }
}

class Falci extends StatefulWidget {
  @override
  _FalciState createState() => _FalciState();
}

class _FalciState extends State<Falci> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Center(child: Text("Gunun Fali")),
      ),body: Column(),
    );
  }
}
