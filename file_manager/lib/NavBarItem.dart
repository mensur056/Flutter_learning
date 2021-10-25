import 'package:flutter/material.dart';


class NavBarItem extends StatelessWidget {
  final IconData icon;

  const NavBarItem({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black,
            offset: Offset(5, 10),
            spreadRadius: 3,
            blurRadius: 10),
        BoxShadow(offset: Offset(-3, -4), spreadRadius: -2, blurRadius: 20)
      ], color: Colors.black, borderRadius: BorderRadius.circular(10)),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
