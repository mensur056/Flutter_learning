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
  void deleteItem(int index){
    items.removeAt(index);
    notifyListeners();
  }
}
//Item(title: 'You go store'),
//Item(title: 'You buy apple'),
//Item(title: 'Go back')