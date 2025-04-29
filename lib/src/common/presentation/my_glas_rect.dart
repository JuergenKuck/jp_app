import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/src/common/global.dart';

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

    double r = min(33, height / 2);
    return ClipPath(
      clipper: CustomShapeClipper(r: r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.05), // halbtransparent
            borderRadius: BorderRadius.circular(33),
            border: Border.all(
              color: Color(0x99EBEBF5),
              width: 0.60,
            ),
          ),
          alignment: Alignment.topCenter,
          child: childOut,
        ),
      ),
    );
  }
}
