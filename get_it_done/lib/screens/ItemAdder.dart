import 'package:flutter/material.dart';

class ItemAdder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '...',
                  labelText: 'Add Item'),
              autofocus: true,
            ),
            FlatButton(onPressed: () {},color: Theme.of(context).accentColor, child: Text('add'))
          ],
        ),
      ),
    );
  }
}
