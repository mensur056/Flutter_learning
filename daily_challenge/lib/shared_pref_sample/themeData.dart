import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData green = ThemeData(
    buttonColor: Colors.green.shade300,
    primarySwatch: Colors.green,
    scaffoldBackgroundColor: Colors.green.shade50);

ThemeData red = ThemeData(
    buttonColor: Colors.red.shade300,
    primarySwatch: Colors.red,
    scaffoldBackgroundColor: Colors.red.shade50);

class ThemeColorData with ChangeNotifier {
  SharedPreferences _sharedPrefObject;
  bool _isGreen = true;

  bool get isGreen => _isGreen;

  ThemeData get themeColor {
    return _isGreen ? green : red;
  }

  void toggleColor() {
    _isGreen = !_isGreen;
    saveThemeToSharedPref(_isGreen);
    notifyListeners();
  }

  Future<void> createSharedPrefObject() async {
    _sharedPrefObject = await SharedPreferences.getInstance();
  }

  void saveThemeToSharedPref(bool value) {
    _sharedPrefObject.setBool('themeData', value);
  }

  void loadThemeFromSharedPref() async {
    await createSharedPrefObject();
    if(_sharedPrefObject.getBool('themeData')==null){
      _isGreen=true;
    }else{_isGreen = _sharedPrefObject.getBool('themeData');}

  }
}
