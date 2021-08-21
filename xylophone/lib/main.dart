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
      home: Scaffold(backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: FlatButton(color: Colors.red,
                    onPressed: () {
                      PlaySound(1);
                    },
                    child: Text('Click me'),
                  ),
                ),
                Expanded(
                  child: FlatButton(color: Colors.pink,
                    onPressed: () {
                      PlaySound(2);
                    },
                    child: Text('Click me'),
                  ),
                ),
                Expanded(
                  child: FlatButton(color: Colors.teal,
                    onPressed: () {
                      PlaySound(3);
                    },
                    child: Text('Click me'),
                  ),
                ),
                Expanded(
                  child: FlatButton(color: Colors.blue,
                    onPressed: () {
                      PlaySound(4);
                    },
                    child: Text('Click me'),
                  ),
                ),
                Expanded(
                  child: FlatButton(color: Colors.green,
                    onPressed: () {
                      PlaySound(5);
                    },
                    child: Text('Click me'),
                  ),
                ),
                Expanded(
                  child: FlatButton(color: Colors.yellow,
                    onPressed: () {
                      PlaySound(6);
                    },
                    child: Text('Click me'),
                  ),
                ),
                Expanded(
                  child: FlatButton(color: Colors.orange,
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
