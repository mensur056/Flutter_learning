import 'package:flutter/material.dart';
import './const.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[700],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizzPage(),
          ),
        ),
      ),
    );
  }
}

class QuizzPage extends StatefulWidget {
  @override
  _QuizzPageState createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  List<Widget> elections = [];
  List<String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'Butterflies live one day',
    'People can live for 1 month without water',
    'A slug\'s blood is green.',
  ];
  int questionIndex=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[questionIndex],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          runSpacing: 10,
          spacing: 10,
          children: elections,
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: RaisedButton(
                      padding: EdgeInsets.all(12),
                      textColor: Colors.white,
                      color: Colors.red[400],
                      child: Icon(
                        Icons.close,
                        size: 30.0,
                      ),
                      onPressed: () {
                        setState(() {questionIndex++;
                          elections.add(kFalseIcon);
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: RaisedButton(
                      padding: EdgeInsets.all(12),
                      textColor: Colors.white,
                      color: Colors.green[400],
                      child: Icon(Icons.check, size: 30.0),
                      onPressed: () {
                        setState(() {questionIndex++;
                          elections.add(kTrueIcon);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

/*
 'You can lead a cow down stairs but not up stairs.', false,
 'Approximately one quarter of human bones are in the feet.', true,
 'Butterflies live one day',false,
 'People can live for 1 month without water',false
 'A slug\'s blood is green.', true,


*/
