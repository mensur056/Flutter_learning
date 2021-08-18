import 'package:flutter/material.dart';

void main() => runApp(UseAvatar());

class UseAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/elon.jpg'),
                ),
                Text(
                  'Elon Musk',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Pacifico',
                      color: Colors.white),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Source',
                      color: Colors.tealAccent),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+994 50 645 29 39',
                        style: TextStyle(fontFamily: 'Source', fontSize: 20.0),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,color: Colors.teal,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'ElonMusk@gmail.com',
                        style: TextStyle(fontSize: 20.0, fontFamily: 'Source'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
