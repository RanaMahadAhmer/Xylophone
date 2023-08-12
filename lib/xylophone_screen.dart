import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneScreen extends StatefulWidget {
  const XylophoneScreen({super.key});

  @override
  State<XylophoneScreen> createState() => _XylophoneScreenState();
}

class _XylophoneScreenState extends State<XylophoneScreen> {
  ElevatedButton _createButton(
      {required Color color, required String char, required int tuneNumber}) {
    return ElevatedButton(
      onPressed: () {
        final player = AudioPlayer();
        player.play(AssetSource('note$tuneNumber.wav'));
        player.dispose();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: Size(0, MediaQuery.of(context).size.height * 0.095),
      ),
      child: Text(char),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Red, orange, yellow, green, blue, indigo, violet.
          _createButton(color: Colors.red, char: "A", tuneNumber: 1),
          _createButton(color: Colors.orange, char: "B", tuneNumber: 2),
          _createButton(color: Colors.yellow, char: "C", tuneNumber: 3),
          _createButton(color: Colors.green, char: "D", tuneNumber: 4),
          _createButton(color: Colors.blue, char: "E", tuneNumber: 5),
          _createButton(color: Colors.indigo, char: "F", tuneNumber: 6),
          _createButton(color: Colors.deepPurple, char: "G", tuneNumber: 7),
        ],
      ),
    );
  }
}
