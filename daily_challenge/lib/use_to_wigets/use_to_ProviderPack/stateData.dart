import 'package:flutter/cupertino.dart';

class StateData with ChangeNotifier {
  String sehir = 'Baku';
  String olke='Azerbaycan';
  String mehle='Serifzade';

  void newCity(String city) {
    sehir = city;
    notifyListeners();
  }
}