import 'package:folder_manager/NavBars/navBar.dart';
import 'package:flutter/material.dart';
import 'Body/simgeler.dart';

class MyFolder extends StatefulWidget {
  @override
  _MyFolderState createState() => _MyFolderState();
}

class _MyFolderState extends State<MyFolder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            Divider(
              color: Colors.white,
            ),
            Simgeler()
          ],
        ),
      ),
    );
  }
}
