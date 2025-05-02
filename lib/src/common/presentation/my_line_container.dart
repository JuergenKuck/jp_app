import 'package:flutter/material.dart';
import 'package:jp_app/src/common/presentation/my_line_painter.dart';

class MyLineContainer extends StatelessWidget {
  final LineType linetype;
  const MyLineContainer({
    super.key,
    required this.linetype,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Color(0xFF414544),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.5),
          width: 1, // Stroke-Breite
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
          child: CustomPaint(
        size: Size(12, 12),
        painter: MyLinePainter(linetype: linetype, color: Color(0x99EBEBF5)),
      )),
    );
  }
}
