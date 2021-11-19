import 'package:flutter/material.dart';
import 'package:folder_manager/MyFolder.dart';
import 'package:folder_manager/screens/Files/myFiles.dart';
import 'package:folder_manager/screens/SearchPage/searchpage.dart';
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: FlatButton(
              onPressed: () {showModalBottomSheet(context: context,builder: (BuildContext context){return Container(color: Colors.white,height: 250,); });},
              child: NavBarItem(
                icon: Icons.list,
                colour: Colors.black,
              ),
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
            child: FlatButton(
                onPressed: () {Navigator.push(
                    (context),
                    MaterialPageRoute(
                      builder: (context) => SearchPage(),
                    ));},
                child: NavBarItem(icon: Icons.search, colour: Colors.black)),
          )
        ],
      ),
    );
  }
}
