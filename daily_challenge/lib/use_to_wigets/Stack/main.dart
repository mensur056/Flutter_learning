import 'package:flutter/material.dart';
void main()=>runApp(Stack());
class Stack extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:StackLesson(),);
  }
}
class StackLesson extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
Widget blueBox=Container(color: Colors.blue,height: 200,width: 200,);
Widget pinkBox=Container(color: Colors.pink,height: 200,width: 200,);
Widget star=Icon(Icons.star,size: 50,color: Colors.yellow,);