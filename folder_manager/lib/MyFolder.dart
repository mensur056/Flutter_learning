import 'package:folder_manager/NavBars/navBar.dart';
import 'package:flutter/material.dart';
import 'Body/simgeler.dart';
import 'apps/Apps.dart';

class MyFolder extends StatefulWidget {
  @override
  _MyFolderState createState() => _MyFolderState();
}

class _MyFolderState extends State<MyFolder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(flexibleSpace:  NavBar(),),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Divider( color: Colors.white10,height: 1,),
            Simgeler(),
            Divider(
              color: Colors.white10,
            ),Apps()
          ],
        ),
      ),
    );
  }
}
