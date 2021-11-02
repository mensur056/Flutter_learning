import 'package:flutter/material.dart';
import 'item.dart';

class ItemData with ChangeNotifier {
  final List<Item> items = [
    Item(title: 'Pazara git'),
    Item(title: 'Elma al'),
    Item(title: 'Eve gel'),
    Item(title: '2 Saat uyu'),
    Item(title: 'Ders calis')
  ];
}
