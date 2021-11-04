import 'package:flutter/material.dart';
import 'item.dart';

class ItemData with ChangeNotifier {
  final List<Item> items = [
    Item(title: 'You should go to the store'),
    Item(title: 'You should buy apples'),
    Item(title: 'Go back'),
    Item(title: 'You sleep 3 hours'),
    Item(title: 'Finish'),
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
