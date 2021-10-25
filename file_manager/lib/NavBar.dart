import 'package:flutter/material.dart';
import 'NavBarItem.dart';
class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.black,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarItem(icon: Icons.list),
          NavBarItem(icon: Icons.access_time_outlined),
          NavBarItem(icon: Icons.folder),
          NavBarItem(icon: Icons.search)
        ],
      ),
    );
  }
}

