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
  int soupNumber = 2;
  int eatNumber = 2;
  int sweetNumber = 2;
  List<String> soupName = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Dugun Corbasi',
    'Yogutlu Corba'
  ];
  List<String> eatName = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> sweetName = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void changeFood() {
    setState(() {
      soupNumber = Random().nextInt(5) + 1;
      eatNumber = Random().nextInt(5) + 1;
      sweetNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: FlatButton(
                splashColor: Colors.white,
                highlightColor: Colors.white,
                onPressed: changeFood,
                child: Image.asset('images/corba_$soupNumber.jpg')),
          ),
        ),
        Text(
          soupName[soupNumber - 1],
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Container(
            width: 190,
            child: Divider(
              height: 4,
              color: Colors.black,
            )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: FlatButton(
                splashColor: Colors.white,
                highlightColor: Colors.white,
                onPressed: changeFood,
                child: Image.asset('images/yemek_$eatNumber.jpg')),
          ),
        ),
        Text(
          eatName[eatNumber - 1],
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Container(
            width: 190,
            child: Divider(
              height: 4,
              color: Colors.black,
            )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: changeFood,
                child: Image.asset('images/tatli_$sweetNumber.jpg')),
          ),
        ),
        Text(
          sweetName[sweetNumber - 1],
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ]),
    );
  }
}
