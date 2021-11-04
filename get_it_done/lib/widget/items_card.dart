
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final bool isDone;
 final Function(bool?) toggle;


 ItemCard({ required this.title, required this.isDone, required this.toggle,});


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: isDone?1:5,
      shadowColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        title: Text(title,style: TextStyle(color: Colors.black,decoration: isDone?TextDecoration.lineThrough:null),),
        trailing: Checkbox(
          onChanged:toggle,
          value: isDone,
          activeColor: Colors.green,
        ),
      ),
    );
  }
}
