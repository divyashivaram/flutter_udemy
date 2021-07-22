import 'dart:ffi';

import 'package:flutter/material.dart';

const containerMargin = EdgeInsets.all(15.0);

class ContainerBox extends StatelessWidget {
  final Color bgcolor;
  final Widget? cardContent;
  final onPress;
  ContainerBox(this.bgcolor, [this.cardContent, this.onPress]);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardContent,
        margin: containerMargin,
        decoration: BoxDecoration(color: bgcolor),
      ),
    );
  }
}
