import 'package:flutter/material.dart';

class ColorThemeData with ChangeNotifier {
  final ThemeData _redTheme = ThemeData(
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

  final ThemeData _greenTheme = ThemeData(
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

  ThemeData _selectedThemeData = ThemeData(
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
  bool isGreen=true;

  void switchTheme(bool selected) {
    _selectedThemeData = selected ? _greenTheme : _redTheme;
    notifyListeners();
  }

  ThemeData get selectedThemeData => _selectedThemeData;
}
