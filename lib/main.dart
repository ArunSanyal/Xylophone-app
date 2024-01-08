import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Future<void> sound(int a) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$a.wav'));
  }



  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildtile(color: Colors.red, soundno: 1),
              buildtile(color: Colors.orange, soundno: 2),
              buildtile(color: Colors.yellow, soundno: 3),
              buildtile(color: Colors.green, soundno: 4),
              buildtile(color: Colors.teal, soundno: 5),
              buildtile(color: Colors.blue, soundno: 6),
              buildtile(color: Colors.purple, soundno: 7),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildtile({required Color color, required int soundno} ) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        height: 100,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(color),
          ),
          onPressed: () {
            sound(soundno);
          },
          child: Text(''),
        ),
      ),
    );
  }
}
