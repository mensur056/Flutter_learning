import 'package:flutter/material.dart';


class MyFolder extends StatefulWidget {
  @override
  _MyFolderState createState() => _MyFolderState();
}

class _MyFolderState extends State<MyFolder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        leading: Icon(Icons.list,
      ),
    ));
  }
}
