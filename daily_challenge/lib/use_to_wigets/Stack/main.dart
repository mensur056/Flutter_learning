import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StackLesson(),
    );
  }
}

class StackLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(backgroundColor: Colors.black,
        body: Center(
          child: Container(
            width: 350,
            height: 350,
            child: Stack(
              children: [blueBox, pinkBox, Positioned(bottom: 0,right:0, child: star)],
            ),
          ),
        ),
      ),
    );
  }
}

Widget blueBox = Container(
  color: Colors.blue,
  height: 200,
  width: 200,
);
Widget pinkBox = Container(
  color: Colors.pink,
  height: 100,
  width: 100,
);
Widget star = Icon(
  Icons.star,
  size: 50,
  color: Colors.yellow,
);
