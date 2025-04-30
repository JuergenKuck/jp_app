import 'package:flutter/material.dart';

class Text14 extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color color;
  final double letterSpacing;
  final double height;

  const Text14(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.w500,
    this.color = const Color(0x99EBEBF5),
    this.letterSpacing = -0.09,
    this.height = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'SFProText',
        fontSize: 14,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        height: height,
      ),
    );
  }
}
