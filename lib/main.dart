import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
        final player = AudioPlayer();
        player.play(
        AssetSource('note$note.wav'));
  }

  Widget buildKey({Color color=Colors.red, int soundNumber=1}) {
    return TextButton(
      style: TextButton.styleFrom(backgroundColor: color),
      onPressed: () {
        playSound(soundNumber);
      },
      child: const SizedBox(
        width: double.infinity,
        height: 35.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.green, soundNumber: 2),
              buildKey(color: Colors.blueGrey, soundNumber: 3),
              buildKey(color: Colors.orange, soundNumber: 4),
              buildKey(color: Colors.brown, soundNumber: 5),
              buildKey(color: Colors.cyan, soundNumber: 6),
              buildKey(color: Colors.tealAccent, soundNumber: 7),

              // TextButton(
              //   style: TextButton.styleFrom(backgroundColor: Colors.green),
              //   onPressed: () {
              //     playSound(2);
              //   },
              //   child: const SizedBox(
              //     width: double.infinity,
              //     height: 35.0,
              //   ),
              // ),
              // TextButton(
              //   style: TextButton.styleFrom(backgroundColor: Colors.blue),
              //   onPressed: () {
              //     playSound(3);
              //   },
              //   child: const SizedBox(
              //     width: double.infinity,
              //     height: 35.0,
              //   ),
              // ),
              // TextButton(
              //   style: TextButton.styleFrom(backgroundColor: Colors.yellow),
              //   onPressed: () {
              //     playSound(4);
              //   },
              //   child: const SizedBox(
              //     width: double.infinity,
              //     height: 35.0,
              //   ),
              // ),
              // TextButton(
              //   style: TextButton.styleFrom(backgroundColor: Colors.amber),
              //   onPressed: () {
              //     playSound(5);
              //   },
              //   child: const SizedBox(
              //     width: double.infinity,
              //     height: 35.0,
              //   ),
              // ),
              // TextButton(
              //   style: TextButton.styleFrom(
              //       backgroundColor: Colors.orange,
              //     // maximumSize: Size(double.infinity, 30.0),
              //   ),
              //   onPressed: () {
              //     playSound(6);
              //   },
              //   child: const SizedBox(
              //     width: double.infinity,
              //     height: 35.0,
              //   ),
              // ),
              // TextButton(
              //   style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
              //   onPressed: () {
              //     playSound(7);
              //   },
              //   child: const SizedBox(
              //     width: double.infinity,
              //     height: 35.0,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
