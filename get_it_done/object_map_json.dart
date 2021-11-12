import 'package:flutter/material.dart';

main() {
  Item itemObject = Item(title: 'Uyu', isDone: true);
  print('itemObject:$itemObject');
  print('itemObject Type:${itemObject.runtimeType}');
  Map itemAsMap=itemObject.toMap();
  print('itemAsMap:$itemAsMap');
  print('itemAsMap Type:${itemAsMap.runtimeType}');
}

class Item {
  String title;
  bool isDone;

  Item({ this.title='uyu', this.isDone=true});

  Map<String, dynamic> toMap() => {'title': title, 'isDone': isDone};
}
