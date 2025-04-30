import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path/path.dart' as p;

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
    Widget child;
    String extension = p.extension(imagePath);
    if (extension == '.svg') {
      child = SvgPicture.asset(imagePath, width: width, fit: BoxFit.cover);
    } else {
      child = Image.asset(imagePath, width: width, fit: BoxFit.cover);
    }
    return Positioned(left: left, top: top, right: right, bottom: bottom, child: child);
  }
}
