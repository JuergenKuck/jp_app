import 'package:flutter/material.dart';

class Text18 extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color color;
  final double letterSpacing;

  const Text18(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.w700,
    this.color = const Color(0xFFFFFFFF),
    this.letterSpacing = 0.38,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: color,
        fontFamily: 'SFProText',
        fontWeight: fontWeight,
      ),
    );
  }
}
