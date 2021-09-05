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
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            child: Stack(
              children: [
                redBox,
                Positioned(left: 60, top: 40, child: moonBox),
                Positioned(left:80,top:47,child: block),
                Positioned(left:176,top:73,child: star)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget redBox = Container(
  color: Colors.red,
  width: 400,
  height: 200,
);
Widget moonBox = Container(
  width: 125,
  height: 125,
  decoration: BoxDecoration(
      color: Colors.white, borderRadius: BorderRadius.circular(70)),
);
Widget block = Container(
  width: 110,
  height: 110,
  decoration:
      BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(55)),
);
Widget star= Icon(Icons.star,size: 50,color: Colors.white,);

