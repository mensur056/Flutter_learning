import 'package:flutter/material.dart';
import 'package:get_it_done/models/items_data.dart';
import 'package:provider/provider.dart';
import 'screens/home_page.dart';

void main() {
  runApp(ChangeNotifierProvider<ItemData>(
      create: (BuildContext context) => ItemData(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.green,
          accentColor: Colors.green,
          scaffoldBackgroundColor: Colors.green,
          appBarTheme: AppBarTheme(color: Colors.green),
          primarySwatch: Colors.green,
          textTheme: TextTheme(
              subtitle1: TextStyle(color: Colors.white),
              headline3: TextStyle(color: Colors.white))),
      home: HomePage(),
    );
  }
}

ThemeData redTheme = ThemeData(
  primaryColor: Colors.red,
  accentColor: Colors.red,
  scaffoldBackgroundColor: Colors.red,
  appBarTheme: AppBarTheme(color: Colors.red),
  primarySwatch: Colors.red,
  textTheme: TextTheme(
    subtitle1: TextStyle(color: Colors.white),
    headline3: TextStyle(color: Colors.white),
  ),
);

ThemeData greenTheme = ThemeData(
  primaryColor: Colors.green,
  accentColor: Colors.green,
  scaffoldBackgroundColor: Colors.green,
  appBarTheme: AppBarTheme(color: Colors.green),
  primarySwatch: Colors.green,
  textTheme: TextTheme(
    subtitle1: TextStyle(color: Colors.white),
    headline3: TextStyle(color: Colors.white),
  ),
);
