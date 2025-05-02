import 'package:flutter/material.dart';
import 'package:jp_app/src/common/presentation/my_image.dart';

class ImagePositionedOpacy extends StatelessWidget {
  final double? width;
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  final String imagePath;
  final double opacy;

  const ImagePositionedOpacy({
    super.key,
    required this.imagePath,
    this.width,
    this.left,
    this.top,
    this.right,
    this.bottom,
    required this.opacy,
  });

  @override
  Widget build(BuildContext context) {
    MyImage child = MyImage(imagePath: imagePath, width: width);
    Widget childOpacy = Opacity(opacity: 0.08, child: child);
    return Positioned(left: left, top: top, right: right, bottom: bottom, child: childOpacy);
  }
}
