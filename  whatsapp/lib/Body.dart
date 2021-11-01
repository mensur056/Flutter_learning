import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Users(),
              Users(),
              Users(),
              Users(),
              Users(),
              Users(),
              Users(),
              Users(),
              Users(),
            ],
          ),
        ),
      ),
    );
  }
}

class Users extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 80,
          child: Image.asset('images/user.jpg'),
        )
      ],
    );
  }
}
