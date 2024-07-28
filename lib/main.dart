import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    Audio audio = Audio.load('assets/note$soundNumber.wav');
    audio.play();
  }

  Expanded buildKey({frgrdcolor, bckgrdcolor, soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            //borderRadius: BorderRadius.zero, //Rectangular border
          ),
          foregroundColor: frgrdcolor,
          backgroundColor: bckgrdcolor,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text('Click me'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                  frgrdcolor: Colors.red,
                  bckgrdcolor: Colors.red,
                  soundNumber: 1),
              buildKey(
                  frgrdcolor: Colors.orange,
                  bckgrdcolor: Colors.orange,
                  soundNumber: 2),
              buildKey(
                  frgrdcolor: Colors.yellow,
                  bckgrdcolor: Colors.yellow,
                  soundNumber: 3),
              buildKey(
                  frgrdcolor: Colors.green,
                  bckgrdcolor: Colors.green,
                  soundNumber: 4),
              buildKey(
                  frgrdcolor: Colors.teal,
                  bckgrdcolor: Colors.teal,
                  soundNumber: 5),
              buildKey(
                  frgrdcolor: Colors.blue,
                  bckgrdcolor: Colors.blue,
                  soundNumber: 6),
              buildKey(
                  frgrdcolor: Colors.purple,
                  bckgrdcolor: Colors.purple,
                  soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
