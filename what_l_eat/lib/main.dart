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

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                splashColor: Colors.white,highlightColor: Colors.white,
                onPressed: () {},
                child: Image.asset('images/corba_1.jpg')),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                splashColor: Colors.white,
                highlightColor: Colors.white,
                onPressed: () {},
                child: Image.asset('images/yemek_1.jpg')),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(highlightColor: Colors.white,splashColor: Colors.white,
                onPressed: () {}, child: Image.asset('images/tatli_1.jpg')),
          ),
        )
      ]),
    );
  }
}
