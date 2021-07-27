import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final onTap;

  RoundIconButton(this.icon, this.onTap);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      elevation: kSmallButtonElevation,
      fillColor: kSmallButtonFillColor,
      constraints: BoxConstraints.tightFor(width: 70.0, height: 56.0),
      onPressed: () {
        onTap();
      },
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Icon(
          icon,
          size: 40.0,
        ),
      ),
    );
  }
}
