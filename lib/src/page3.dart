import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jp_app/src/common/domain/cup.dart';

class Page3 extends StatelessWidget {
  final Cup cup;

  const Page3({super.key, required this.cup});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // SVG als Hintergrund
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/svgs/background3.svg',
              fit: BoxFit.cover,
            ),
          ),
          // Vordergrund-Content
        ],
      ),
    );
  }
}
