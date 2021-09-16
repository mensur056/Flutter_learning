import 'package:flutter/material.dart';
import 'colors.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          NavBarItem(
            icon: Icons.arrow_back_ios,
          ),
          Text('Playing Now'),
          NavBarItem(
            icon: Icons.list,
          )
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;

  const NavBarItem({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: darkPrimaryColor,
              offset: Offset(5, 10),
              spreadRadius: 3,
              blurRadius: 10),
        ],
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        icon,
        color: darkPrimaryColor,
      ),
    );
  }
}
