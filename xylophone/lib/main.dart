import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int noteNum) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$noteNum.wav');
  }

  Widget buildkey({color, soundNum}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: () {
          playSound(soundNum);
        },
        child: Container(
          color: color,
        ),
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
            children: [
              buildkey(color: Colors.red, soundNum: 1),
              buildkey(color: Colors.blue, soundNum: 2),
              buildkey(color: Colors.green, soundNum: 3),
              buildkey(color: Colors.yellow, soundNum: 4),
              buildkey(color: Colors.lightBlue, soundNum: 5),
              buildkey(color: Colors.lightGreen, soundNum: 6),
              buildkey(color: Colors.purple, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneKeys extends StatelessWidget {
  const XylophoneKeys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
