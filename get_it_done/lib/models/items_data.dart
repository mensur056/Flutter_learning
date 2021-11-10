import 'package:flutter/material.dart';
import 'item.dart';

class ItemData with ChangeNotifier {
  final List<Item> _items = [
    Item(title: 'You go store'),
    Item(title: 'You buy apple'),
    Item(title: 'Go back'),
    Item(title: 'You must sleep')
  ];

  void toggleStatus(int index) {
    _items[index].trueFalse();
    notifyListeners();
  }

  void addItem(String title) {
    _items.add(Item(title: title));
    notifyListeners();
  }

  void deleteItem(int index) {
    _items.removeAt(index);
    notifyListeners();
  }

  List<Item> get items =>_items;
}
//Item(title: 'You go store'),
//Item(title: 'You buy apple'),
//Item(title: 'Go back')
