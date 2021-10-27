import 'package:flutter/material.dart';
import 'package:folder_manager/MyFolder.dart';
import 'package:folder_manager/screens/myFiles.dart';
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: NavBarItem(
              icon: Icons.list,
              colour: Colors.black,
            ),
          ),
          FlatButton(
              onPressed: () {
                Navigator.push(
                    (context),
                    MaterialPageRoute(
                      builder: (context) => MyFolder(),
                    ));
              },
              child: NavBarItem(
                  icon: Icons.access_time_outlined, colour: Colors.black)),
          FlatButton(
              onPressed: () {
                Navigator.push(
                    (context),
                    MaterialPageRoute(
                      builder: (context) => MyFiles(),
                    ));
              },
              child: NavBarItem(icon: Icons.folder_open, colour: Colors.black)),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: NavBarItem(icon: Icons.search, colour: Colors.black),
          )
        ],
      ),
    );
  }
}
