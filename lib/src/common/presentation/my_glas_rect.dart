import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/src/common/global.dart';
import 'package:jp_app/src/page2.dart';
import 'package:jp_app/src/common/presentation/text12.dart';

class MyGlasRect extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;
  final String text;
  final bool isSelected;
  final double borderRadius;

  const MyGlasRect({
    super.key,
    required this.width,
    required this.height,
    this.child,
    this.text = '',
    this.isSelected = false,
    this.borderRadius = 33,
  });

  @override
  Widget build(BuildContext context) {
    Widget childOut = child ??
        Center(
          child: Text12(
            text,
            color: isSelected ? Colors.black : Color(0x99EBEBF5),
            fontWeight: FontWeight.w700,
          ),
        );

    double r = min(borderRadius, height / 2);
    return ClipPath(
      clipper: CustomShapeClipper(r: r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: isSelected ? Color(0xFFedc8ea) : Colors.white.withValues(alpha: 0.05),
            borderRadius: BorderRadius.circular(borderRadius),
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
