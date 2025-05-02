import 'package:flutter/material.dart';
import 'package:jp_app/src/common/global.dart';

class MyPositioned extends StatelessWidget {
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  final Widget child;

  const MyPositioned({
    super.key,
    required this.child,
    this.left,
    this.top,
    this.right,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left != null ? left! * facWidth : null,
      top: top != null ? top! * facWidth : null,
      right: right != null ? right! * facWidth : null,
      bottom: bottom != null ? bottom! * facWidth : null,
      child: child,
    );
  }
}
