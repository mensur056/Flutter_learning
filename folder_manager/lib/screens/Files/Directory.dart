import 'dart:html';

import 'package:flutter/material.dart';

class Directory extends StatefulWidget {
  @override
  _DirectoryState createState() => _DirectoryState();
}

class _DirectoryState extends State<Directory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        fayillar(text: 'Android',item: '3 items | 19/08/2021  12:32',),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        fayillar(text: 'DCIM',item: '2 items | 12/10/2021  10:44',),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        fayillar(text: 'Documents',item: '0 items | 11/10/2021  14:21',),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        fayillar(text:'Download',item: '0 items | 20/10/2021  09:12',),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        fayillar(text: 'HDWall',item: '3 items | 20/09/2021  06:39',),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        fayillar(text: 'MIUI',item: ,),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        fayillar(),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        fayillar(),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        fayillar(),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        fayillar(),
      ],
    );
  }
}

class fayillar extends StatelessWidget {

  final String text;
  final String item;

  const fayillar({, required this.text, required this.item}) ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Container(
            height: 55,
            width: 55,
            child: Image.asset(
              'images/file.png',
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            Text(item,
                style: TextStyle(color: Colors.grey))
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_forward_ios_outlined,
            size: 13,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
