import 'package:flutter/material.dart';

// import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
              child: TextButton(
            child: Text("Play"),
            onPressed: () {
              // final player = AudioCache();
              // player.loadPath('note1.wav');
            },
          )),
        ),
      ),
    );
  }
}
