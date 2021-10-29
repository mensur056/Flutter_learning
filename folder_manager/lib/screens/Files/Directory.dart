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
                  'Android',
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
                SizedBox(
                  height: 10,
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
