import 'package:flutter/material.dart';
import 'package:jp_app/src/common/global.dart';

class OutlinedSoftLightText extends StatelessWidget {
  final String text;
  final double fontSize;
  final double strokeWidth;
  final bool isOpacity;

  const OutlinedSoftLightText(
      {super.key, required this.text, required this.fontSize, required this.strokeWidth, this.isOpacity = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize * facHeight,
        fontFamily: 'SFProDisplay',
        fontWeight: FontWeight.w600,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth * facWidth
          ..blendMode = BlendMode.softLight
          ..color = isOpacity ? Colors.white.withValues(alpha: 0.25) : Colors.white,
      ),
    );
  }
}
