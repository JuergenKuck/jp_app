import 'dart:ui';
import 'package:flutter/material.dart';

class MyGlasRect extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;
  final String text;
  final bool isSelected;

  const MyGlasRect({
    super.key,
    required this.width,
    required this.height,
    this.child,
    this.text = '',
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget childOut = child ??
        Center(
          child: Text(
            text,
            style: TextStyle(
              color: Color(0x99EBEBF5),
              fontFamily: 'SFProDisplay',
              fontSize: 13.2,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.35,
            ),
          ),
        );

    return ClipRRect(
      borderRadius: BorderRadius.circular(33),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.05), // halbtransparent
            borderRadius: BorderRadius.circular(33),
            border: Border.all(color: Colors.white.withValues(alpha: 0.15)),
          ),
          alignment: Alignment.topCenter,
          child: childOut,
        ),
      ),
    );
  }
}
