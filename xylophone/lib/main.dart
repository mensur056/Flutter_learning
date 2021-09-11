import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color? color, int? soundNumber, String? text}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber!);
        },
        child: Text(text!),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Center(
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        buildKey(
                            color: Colors.red,
                            soundNumber: 1,
                            text: 'Music1'),
                        buildKey(
                            color: Colors.green, soundNumber: 2, text: 'Music2'),
                        buildKey(
                            color: Colors.blue, soundNumber: 3, text: 'Music3'),
                        buildKey(
                            color: Colors.yellow, soundNumber: 4, text: 'Music4'),
                      ],
                    ),
                  ),

                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      buildKey(
                          color: Colors.black, soundNumber: 5, text: 'Music5'),
                      buildKey(
                          color: Colors.orange, soundNumber: 6, text: 'Music6'),
                      buildKey(
                          color: Colors.pink, soundNumber: 7, text: 'Music7'),
                      buildKey(
                          color: Colors.grey, soundNumber: 1, text: 'Music8'),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
