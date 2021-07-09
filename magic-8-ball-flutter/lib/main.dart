import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(EightBall());

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int eightBallImageNum = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.blue.shade900,
        ),
        backgroundColor: Colors.blue.shade300,
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        eightBallImageNum = Random().nextInt(5) + 1;
                      });
                    },
                    child: Image.asset('images/ball$eightBallImageNum.png')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
