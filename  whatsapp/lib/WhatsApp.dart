import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            color: Color(0xFF2d6a4f),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Text(
                        'WhatsApp',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.search,
                        color: Colors.white70,
                      ),
                      Icon(
                        Icons.more_vert_rounded,
                        color: Colors.white70,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 30.0, right: 30, bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.camera_alt,
                        color: Colors.white70,
                      ),
                      Text(
                        'CHATS',
                        style: TextStyle(
                            color: Colors.white70, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'STATUS',
                        style: TextStyle(
                            color: Colors.white70, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'CALLS',
                        style: TextStyle(
                            color: Colors.white70, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
                child: Column(
                  children: [
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                    Row(),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
