import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'WhatsApp',
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    Spacer(),
                    Icon(Icons.search),
                    Icon(Icons.more_vert_rounded)
                  ],
                ),
                Row()
              ],
            ),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
