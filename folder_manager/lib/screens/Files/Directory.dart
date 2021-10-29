
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
        Fayillar(
          text: 'Android',
          item: '3 items | 19/08/2021  12:32',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        Fayillar(
          text: 'DCIM',
          item: '2 items | 12/10/2021  10:44',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        Fayillar(
          text: 'Documents',
          item: '0 items | 11/10/2021  14:21',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        Fayillar(
          text: 'Download',
          item: '0 items | 20/10/2021  09:12',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        Fayillar(
          text: 'HDWall',
          item: '3 items | 20/09/2021  06:39',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        Fayillar(
          text: 'MIUI',
          item: '3 items | 19/09/2021  10:09',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        Fayillar(
          text: 'Movies',
          item: '1 items | 31/08/2021  15:51',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        Fayillar(
          text: 'Music',
          item: '2 items | 15/09/2021  10:00',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        Fayillar(
          text: 'Notifications',
          item: '0 items | 03/01/2021  07:13',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10),
          child: Divider(
            height: 1,
            color: Colors.white10,
          ),
        ),
        Fayillar(
          text: 'Pictures',
          item: '4 items | 22/10/2021  08:59',
        ),
      ],
    );
  }
}

class Fayillar extends StatelessWidget {
  final String text;
  final String item;

  const Fayillar({required this.text, required this.item});

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
            Text(item, style: TextStyle(color: Colors.grey))
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
