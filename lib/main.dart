import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
        AssetSource('note$soundNumber.wav')); // will immediately start playing
  }

  Expanded buildKey(int soundNumber) {
    return Expanded(
      child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.pink),
          ),
          onPressed: () {
            playsound(soundNumber);
          },
          child: Text('')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(1),
                buildKey(2),
                buildKey(3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
