import 'package:flutter/material.dart';

const labelStyle = TextStyle(fontSize: 25.0);
const sizedBoxHeight = 10.0;
const iconSize = 80.0;

class IconContainerContent extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContainerContent(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          'Female',
          style: labelStyle,
        ),
      ],
    );
  }
}
