import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceState = 1;
  int rightDiceState = 1;

  void setDiceState() {
    setState(() {
      leftDiceState = Random().nextInt(6) + 1;
      rightDiceState = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    setDiceState();
                  },
                  child: Image.asset('images/dice$leftDiceState.png'),
                )),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setDiceState();
                },
                child: Image.asset('images/dice$rightDiceState.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
