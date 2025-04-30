import 'package:flutter/material.dart';

class Text24 extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color color;
  final double letterSpacing;
  const Text24(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.w900,
    this.color = const Color(0xFFFFFFFF),
    this.letterSpacing = 0.38,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'SFProDisplay',
        fontSize: 24,
        color: color,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
