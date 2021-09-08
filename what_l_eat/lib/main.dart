import 'package:flutter/material.dart';

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
  int soupNumber=5;

  int eatNumber= 2;

  int sweetNumber =3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                splashColor: Colors.white,highlightColor: Colors.white,
                onPressed: () {setState(() {soupNumber =4;

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
                onPressed: () {setState(() {eatNumber=5;

                });},
                child: Image.asset('images/yemek_$eatNumber.jpg')),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(highlightColor: Colors.white,splashColor: Colors.white,
                onPressed: () {setState(() {
                  sweetNumber= 2;
                });

                }, child: Image.asset('images/tatli_$sweetNumber.jpg')),
          ),
        )
      ]),
    );
  }
}
