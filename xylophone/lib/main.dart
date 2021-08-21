import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  void PlaySound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color? color,int? soundNumber}) {
    return Expanded(
      child: FlatButton(color: color,
        onPressed: () {
          PlaySound(soundNumber!);
        },
        child: Text('Click me'),
      ),
    );

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

                buildKey(color: Colors.red,soundNumber: 1),
                buildKey(color: Colors.green,soundNumber: 2),
                buildKey(color: Colors.blue,soundNumber: 3),
                buildKey(color: Colors.yellow,soundNumber: 4),
                buildKey(color: Colors.teal,soundNumber: 5),
                buildKey(color: Colors.orange,soundNumber: 6),
                buildKey(color: Colors.pink,soundNumber: 7),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
