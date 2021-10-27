import 'package:flutter/material.dart';
import 'package:folder_manager/NavBars/navBar.dart';

class MyFiles extends StatefulWidget {
  @override
  _MyFilesState createState() => _MyFilesState();
}

class _MyFilesState extends State<MyFiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          NavBar(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 60,
                height: 60,
                color: Colors.green,
              ),
              Column(
                children: [
                  Text(
                    'Storage',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text('23.26/53.29', style: TextStyle(color: Colors.grey))
                ],
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Internal shared storage >',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w100),
              )
            ],
          )
        ],
      ),
    );
  }
}
