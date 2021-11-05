import 'package:flutter/material.dart';
import 'item.dart';

class ItemData with ChangeNotifier {
  final List<Item> items = [

  ];

  void toggleStatus(int index) {
    items[index].trueFalse();
    notifyListeners();
  }

  void addItem(String title) {
    items.add(Item(title: title));
    notifyListeners();
  }
}
