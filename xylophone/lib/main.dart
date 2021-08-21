import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  void PlaySound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.red,
                  child: FlatButton(
                    onPressed: () {
                      PlaySound(1);
                    },
                    child: Text('Click me'),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: FlatButton(
                    onPressed: () {
                      PlaySound(2);
                    },
                    child: Text('Click me'),
                  ),
                ),
                Container(
                  color: Colors.teal,
                  child: FlatButton(
                    onPressed: () {
                      PlaySound(3);
                    },
                    child: Text('Click me'),
                  ),
                ),
                Container(
                  color: Colors.yellow,
                  child: FlatButton(
                    onPressed: () {
                      PlaySound(4);
                    },
                    child: Text('Click me'),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: FlatButton(
                    onPressed: () {
                      PlaySound(5);
                    },
                    child: Text('Click me'),
                  ),
                ),
                Container(
                  color: Colors.orange,
                  child: FlatButton(
                    onPressed: () {
                      PlaySound(6);
                    },
                    child: Text('Click me'),
                  ),
                ),
                Container(
                  color: Colors.pink,
                  child: FlatButton(
                    onPressed: () {
                      PlaySound(7);
                    },
                    child: Text('Click me'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
