import 'package:flutter/material.dart';
import 'package:jp_app/src/common/presentation/my_image.dart';
import 'package:jp_app/src/common/presentation/my_positioned.dart';

class ImagePositioned extends StatelessWidget {
  final double? width;
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  final String imagePath;

  const ImagePositioned({
    super.key,
    required this.imagePath,
    this.width,
    this.left,
    this.top,
    this.right,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    MyImage child = MyImage(imagePath: imagePath, width: width);
    return MyPositioned(left: left, top: top, right: right, bottom: bottom, child: child);
  }
}
