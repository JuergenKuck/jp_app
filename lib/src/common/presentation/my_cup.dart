import 'package:flutter/material.dart';

class MyCup extends StatelessWidget {
  final double width;
  final double height;

  const MyCup({
    super.key,
    required this.width,
    required this.height,
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
    );
  }
}
