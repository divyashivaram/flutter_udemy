import 'package:flutter/material.dart';

const containerMargin = EdgeInsets.all(15.0);

class ContainerBox extends StatelessWidget {
  final Color bgcolor;
  final Widget? cardContent;
  ContainerBox(this.bgcolor, [this.cardContent]);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardContent,
      margin: containerMargin,
      decoration: BoxDecoration(color: bgcolor),
    );
  }
}
