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
          Divider(
            color: Colors.grey,
            height: 1,
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.orange),
                      width: 60,
                      height: 60,
                    ),
                    Positioned(top: 5,left:5,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                        width: 50,
                        height: 50,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Storage',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text('23.26GB/53.29GB',
                          style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.grey,
                      size: 10,
                    ))
              ],
            ),
          ),
          Divider(
            height: 30,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Row(
              children: [
                Text(
                  'Internal shared storage >',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w100),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
