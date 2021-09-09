import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: Falci(),
    );
  }
}

class Falci extends StatefulWidget {
  @override
  _FalciState createState() => _FalciState();
}

class _FalciState extends State<Falci> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: Center(child: Text("Gunun Fali")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            width: 150,
            child: Image.asset(
              'images/falci.png',
            ),
          ),
          Card(margin: EdgeInsets.symmetric(vertical: 5,horizontal: 40),
            child: ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.red,
              ),title: Text('ASK DRUMU'),
            ),
          ),
          Card(margin: EdgeInsets.symmetric(vertical: 5,horizontal: 40),
            child: ListTile(
              leading: Icon(
                Icons.shop,
                color: Colors.green,
              ),title: Text('PARA DRUMU'
            ),
            ),
          ),
          Card(margin: EdgeInsets.symmetric(vertical: 5,horizontal: 40),
            child: ListTile(
              leading: Icon(
                Icons.explore,
                color: Colors.blue,
              ),title: Text('GUNLUK TAVSIYE'),
            ),
          )
        ],
      ),
    );
  }
}
