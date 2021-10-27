import 'package:flutter/material.dart';

class Apps extends StatefulWidget {
  @override
  _AppsState createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.black,
      child: Row(
        children: [
          Container(
            color: Colors.black,
            child: Image.asset('images/whtps.png'),
            width: 20,
            height: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
