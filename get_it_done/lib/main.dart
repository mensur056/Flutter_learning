import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.green,
          accentColor: Colors.green,
          scaffoldBackgroundColor: Colors.green,
          appBarTheme: AppBarTheme(color: Colors.green),
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              subtitle1: TextStyle(color: Colors.white),
              headline3: TextStyle(color: Colors.white))),
      home: HomePage(),
    );
  }
}
