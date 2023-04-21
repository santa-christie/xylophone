import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(const XyloApp());

class XyloApp extends StatelessWidget {
  const XyloApp({super.key});

  void playsound(int noteNumber) async {
    //input argument we used in this function;
    final player = AudioPlayer();
    await player.play(AssetSource('note$noteNumber.wav'));
  }

//creating the a new Function for reducing the code line;
  Expanded buildKey({required Color color, required int noteNumber}) {
    //changed the output of the function as 'Expanded';
    //'buildKey' is the function name;

    return Expanded(
      //returning the Expanded function;
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          //'color' is the first argument in 'buildKey';
        ),
        onPressed: () {
          playsound(noteNumber);
          //'noteNumber' is the second argument in 'buildKey';
        },
        child: const Text(' '),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, noteNumber: 1),
              //specifiying the argument names as 'color' && 'noteNumber';
              buildKey(color: Colors.orange, noteNumber: 2),
              buildKey(color: Colors.yellow, noteNumber: 3),
              buildKey(color: Colors.green, noteNumber: 4),
              buildKey(color: Colors.blue, noteNumber: 5),
              buildKey(color: Colors.indigo, noteNumber: 6),
              buildKey(color: Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
