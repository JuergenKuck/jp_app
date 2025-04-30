import 'package:flutter/material.dart';
import 'package:jp_app/src/common/domain/cup.dart';
import 'package:jp_app/src/common/presentation/text14.dart';

class CupContainer extends StatelessWidget {
  final double width;
  final double height;
  final Cup cup;

  const CupContainer({
    super.key,
    this.width = 185,
    this.height = 260,
    required this.cup,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color(0xFF8c5bea),
            Color(0xFF908cf5),
            Color(0x00FFFFFF),
          ],
          stops: [0.07, 0.61, 1.0],
        ),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.5),
          width: 1, // Stroke-Breite
        ),
        borderRadius: BorderRadius.circular(33), // Gemeinsamer Radius
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(cup.imagePath, fit: BoxFit.fitWidth),
            SizedBox(height: 8),
            Text14(
              cup.name,
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w800,
              letterSpacing: -0.55,
              height: 21.9 / 14.3,
            ),
            Text14(cup.description, height: 17.6 / 13.2),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text14('􁑐${cup.price}', color: Color(0xFFFFFFFF), letterSpacing: -0.55),
                Text14('􀊴 ${cup.numberLikes}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
