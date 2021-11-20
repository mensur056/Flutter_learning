import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.white,
        appBar:AppBar(
          backgroundColor: Colors.white,
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Color(0xFFc8c8c8), borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.search,color: Colors.blue,),

                    border: InputBorder.none),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
