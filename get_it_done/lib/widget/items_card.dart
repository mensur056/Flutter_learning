import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final bool isDone;
 final Function toggle;


  const ItemCard({ required this.title, required this.isDone, required this.toggle});


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        title: Text(title,style: TextStyle(color: Colors.black),),
        trailing: Checkbox(
          onChanged:(value)=>toggle,
          value: isDone,
          activeColor: Colors.white,
        ),
      ),
    );
  }
}
