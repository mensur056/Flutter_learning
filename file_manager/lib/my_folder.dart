import 'package:file_manager/NavBar.dart';
import 'package:flutter/material.dart';
import 'Item/Items.dart';

class MyFolder extends StatefulWidget {
  @override
  _MyFolderState createState() => _MyFolderState();
}

class _MyFolderState extends State<MyFolder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          NavBar(),
          Divider(
            color: Colors.white,
          ),
          Items()
        ],
      ),
    );
  }
}
