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
        Row(
          children: [
            Container(
              height: 60,
              width: 60,
              child: Image.asset(
                'images/file.png',
              ),
            ),
            Column(
              children: [
                Text(
                  'Android',
                  style: TextStyle(color: Colors.white),
                ),
                Text('3 items | 19/08/2021  12:32',
                    style: TextStyle(color: Colors.white))
              ],
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_outlined))
          ],
        )
      ],
    );
  }
}
