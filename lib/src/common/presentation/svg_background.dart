import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgBackground extends StatelessWidget {
  final String imagePath;
  const SvgBackground({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: SvgPicture.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
