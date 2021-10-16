import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      splashColor: Colors.white,
      highlightColor: Colors.white,
      child: Container(
        height: 45,
        margin: EdgeInsets.symmetric(horizontal: 45),
        decoration: BoxDecoration(
            color: Colors.cyan, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            'Login',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
