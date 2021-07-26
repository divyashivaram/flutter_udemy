import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final callback;
  final displayText;

  BottomButton(this.callback, this.displayText);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBottomButtonColor,
      height: kBottomButtonHeight,
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => callback(),
            ),
          );
        },
        child: Text(
          displayText,
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ),
    );
  }
}
