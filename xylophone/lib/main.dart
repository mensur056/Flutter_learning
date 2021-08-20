import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(color: Colors.red,
                  child: FlatButton(
                    onPressed: () {final player=AudioCache();
                    player.play('note1.wav');},
                    child: Text('Click me'),
                  ),
                ),
                Container(color: Colors.blue,
                  child: FlatButton(
                    onPressed: () {final player=AudioCache();
                    player.play('note2.wav');},
                    child: Text('Click me'),
                  ),
                ),
                Container(color: Colors.teal,
                  child: FlatButton(
                    onPressed: () {final player=AudioCache();
                    player.play('note3.wav');},
                    child: Text('Click me'),
                  ),
                ),
                Container(color: Colors.yellow,
                  child: FlatButton(
                    onPressed: () {final player=AudioCache();
                    player.play('note4.wav');},
                    child: Text('Click me'),
                  ),
                ),
                Container(color: Colors.green,
                  child: FlatButton(
                    onPressed: () {final player=AudioCache();
                    player.play('note5.wav');},
                    child: Text('Click me'),
                  ),
                ),
                Container(color: Colors.orange,
                  child: FlatButton(
                    onPressed: () {final player=AudioCache();
                    player.play('note6.wav');},
                    child: Text('Click me'),
                  ),
                ),
                Container(color: Colors.pink,
                  child: FlatButton(
                    onPressed: () {final player=AudioCache();
                    player.play('note7.wav');},
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
