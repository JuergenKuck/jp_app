import 'package:flutter/material.dart';
import 'package:jp_app/src/common/domain/cup.dart';

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
            Image.asset(
              cup.imagePath,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: 8),
            Text(
              cup.name,
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'SFProText',
                fontSize: 14.3,
                fontWeight: FontWeight.w800,
                letterSpacing: -0.55,
                height: 21.9 / 14.3,
              ),
            ),
            Text(
              cup.description,
              style: TextStyle(
                color: Color(0x99EBEBF5),
                fontFamily: 'SFProText',
                fontSize: 13.2,
                fontWeight: FontWeight.w500,
                letterSpacing: 0,
                height: 17.6 / 13.2,
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '􁑐${cup.price}',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'SFProText',
                    fontSize: 14.3,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.55,
                    height: 21.9 / 14.3,
                  ),
                ),
                Text(
                  '􀊴 ${cup.numberLikes}',
                  style: TextStyle(
                    color: Color(0x99EBEBF5),
                    fontFamily: 'SFProText',
                    fontSize: 13.2,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                    height: 17.6 / 13.2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
