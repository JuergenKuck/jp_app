import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jp_app/src/common/global.dart';
import 'package:path/path.dart' as p;

class MyImage extends StatelessWidget {
  final double? width;
  final String imagePath;

  const MyImage({
    super.key,
    required this.imagePath,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    double? widthImage = width != null ? width! * facWidth : null;
    Widget child;
    String extension = p.extension(imagePath);
    if (extension == '.svg') {
      child = SvgPicture.asset(imagePath, width: widthImage, fit: BoxFit.cover);
    } else {
      child = Image.asset(imagePath, width: widthImage, fit: BoxFit.cover);
    }
    return child;
  }
}
