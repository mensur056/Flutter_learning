import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'What should I eat today',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: FoodPage(),
      ),
    );
  }
}

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int soupNumber = 1;

  int eatNumber = 1;

  int sweetNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                splashColor: Colors.white,
                highlightColor: Colors.white,
                onPressed: () {
                  setState(() {
                    soupNumber = Random().nextInt(5)+1;
                    eatNumber = Random().nextInt(5)+1;
                    sweetNumber = Random().nextInt(5)+1;

                  });
                },
                child: Image.asset('images/corba_$soupNumber.jpg')),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                splashColor: Colors.white,
                highlightColor: Colors.white,
                onPressed: () {
                  setState(() {
                    soupNumber = Random().nextInt(5)+1;
                    eatNumber = Random().nextInt(5)+1;
                    sweetNumber = Random().nextInt(5)+1;

                  });
                },
                child: Image.asset('images/yemek_$eatNumber.jpg')),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: () {
                  setState(() {
                    soupNumber = Random().nextInt(5)+1;
                    eatNumber = Random().nextInt(5)+1;
                    sweetNumber = Random().nextInt(5)+1;

                  });
                },
                child: Image.asset('images/tatli_$sweetNumber.jpg')),
          ),
        )
      ]),
    );
  }
}
