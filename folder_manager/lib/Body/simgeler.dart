import 'package:flutter/material.dart';
import 'ContainerDec.dart';
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
                padding: const EdgeInsets.only(left: 30,top: 10),
                child: ContDecaration(
                  icon: Icons.image,
                  colour: Colors.teal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ContDecaration(
                  colour: Colors.deepOrange,
                  icon: Icons.videocam,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ContDecaration(
                  icon: Icons.document_scanner_sharp,
                  colour: Colors.purple,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30,top: 10),
                child: ContDecaration(
                  colour: Colors.pink,
                  icon: Icons.library_music,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Text(
                  'Images',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(
                'Videos',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Docs',
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Text(
                  'Music',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: ContDecaration(
                  icon: Icons.android,
                  colour: Colors.green,
                ),
              ),
              ContDecaration(
                colour: Colors.blue,
                icon: Icons.download,
              ),
              ContDecaration(
                icon: Icons.archive,
                colour: Colors.orangeAccent,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: ContDecaration(
                  icon: Icons.view_module_rounded,
                  colour: Colors.red,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  'Apps',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text(
                'Download',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Archive',
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text(
                  'More',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

