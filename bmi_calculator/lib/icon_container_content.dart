import 'package:flutter/material.dart';

import 'constants.dart';

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
          size: kIconSize,
        ),
        SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          label,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
