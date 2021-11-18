import 'package:flutter/material.dart';
import 'ContainerDec.dart';
import 'package:folder_manager/screens/More_page/MorePage.dart';

class Simgeler extends StatefulWidget {
  @override
  _SimgelerState createState() => _SimgelerState();
}

class _SimgelerState extends State<Simgeler> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: FlatButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      ContDecaration(
                        icon: Icons.image,
                        colour: Colors.teal,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Images',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: FlatButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      ContDecaration(
                        colour: Colors.deepOrange,
                        icon: Icons.videocam,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Video',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: FlatButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      ContDecaration(
                        icon: Icons.document_scanner_sharp,
                        colour: Colors.purple,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Docs',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, top: 10),
                child: FlatButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      ContDecaration(
                        colour: Colors.pink,
                        icon: Icons.library_music,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Music',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: FlatButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      ContDecaration(
                        icon: Icons.android,
                        colour: Colors.green,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Apps',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Column(
                  children: [
                    ContDecaration(
                      colour: Colors.blue,
                      icon: Icons.download,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Download',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Column(
                  children: [
                    ContDecaration(
                      icon: Icons.archive,
                      colour: Colors.orangeAccent,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Archive',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        (context),
                        MaterialPageRoute(
                          builder: (context) => MorePage(),
                        ));
                  },
                  child: Column(
                    children: [
                      ContDecaration(
                        icon: Icons.view_module_rounded,
                        colour: Colors.red,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'More',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
