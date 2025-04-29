import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/src/common/domain/cup.dart';

List<Cup> cups = [
  Cup(
    name: 'Mogli’s Cup',
    description: 'Strawberry ice cream',
    price: 8.99,
    numberLikes: 200,
    imagePath: 'assets/images/cat cupcakes_3d.png',
  ),
  Cup(
    name: "Balu's Cup",
    description: "Pistachio ice cream",
    price: 8.99,
    numberLikes: 165,
    imagePath: "assets/images/balus_cup.png",
  ),
  Cup(
    name: "Smiling David",
    description: "Coffee ice cream",
    price: 3.99,
    numberLikes: 310,
    imagePath: "assets/images/smiling_david.png",
  ),
  Cup(
    name: "Kai in a Cone",
    description: "Vanilla ice cream",
    price: 3.99,
    numberLikes: 290,
    imagePath: "assets/images/kai_in_a_cone.png",
  ),
];

Path _generatePath(Size size, {double r = 33, double dh = 0 * 45}) {
  double w = size.width;
  double h = size.height;
  double al = atan2(dh, w);
  double dy = sin(al) * r;
  double dx = cos(al) * r;

  Path path = Path();

  // Startpunkt oben links
  path.moveTo(r, 0);
  path.lineTo(w - r, 0);

  path.arcToPoint(
    Offset(w, r),
    radius: Radius.circular(r),
    clockwise: true,
  );

  path.lineTo(w, h - dh - r);
  path.arcToPoint(
    Offset(w - dx, h - dh + dy),
    radius: Radius.circular(r),
    clockwise: true,
  );

  path.lineTo(dx, h - dy);
  path.arcToPoint(
    Offset(0, h - r),
    radius: Radius.circular(r),
    clockwise: true,
  );

  path.lineTo(0, r);
  path.arcToPoint(
    Offset(r, 0),
    radius: Radius.circular(r),
    clockwise: true,
  );

  path.close();

  return path;
}

class CustomShapeClipper extends CustomClipper<Path> {
  final double r;
  final double dh;

  CustomShapeClipper({this.r = 33, this.dh = 0});

  @override
  Path getClip(Size size) {
    return _generatePath(size, r: r, dh: dh);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class BorderPainter extends CustomPainter {
  final Color borderColor;
  final double r;
  final double dh;

  BorderPainter(this.borderColor, {this.r = 33, this.dh = 0});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    final Path path = _generatePath(size, r: r, dh: dh);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
