import 'package:flutter/material.dart';

// ignore: prefer_typing_uninitialized_variables, constant_identifier_names
enum LineType { Cross, Minus, Plus }

class MyLinePainter extends CustomPainter {
  final LineType linetype;
  final Color color;

  MyLinePainter({super.repaint, required this.linetype, required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    double w = size.width;
    double h = size.height;

    final paint = Paint()
      ..color = color
      ..strokeWidth = 2;

    if (linetype == LineType.Cross) {
      canvas.drawLine(Offset(0, 0), Offset(w, h), paint);
      canvas.drawLine(Offset(w, 0), Offset(0, h), paint);
    } else if (linetype == LineType.Minus) {
      canvas.drawLine(Offset(0, h / 2), Offset(w, h / 2), paint);
    } else {
      canvas.drawLine(Offset(0, h / 2), Offset(w, h / 2), paint);
      canvas.drawLine(Offset(w / 2, 0), Offset(w / 2, h), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
