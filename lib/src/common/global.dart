import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jp_app/src/common/domain/cup.dart';

bool isSetLateFinals = false;
late final double screenWidth;
late final double screenHeight;
late final double facWidth;
late final double facHeight;

void stLateFinals(BuildContext context) {
  if (!isSetLateFinals) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    facWidth = screenWidth / 402;
    facHeight = screenHeight / 874;
    isSetLateFinals = true;
  }
}

List<Cup> cups = [
  Cup(
    name: 'Mogli’s Cup',
    description: 'Strawberry ice cream',
    comment:
        'Mogli’s Cup is a delightful creamy strawberry ice cream made with real fruit for a naturally sweet flavor. Its smooth texture and vibrant taste make it a refreshing indulgence perfect for any time of day.',
    price: 8.99,
    numberLikes: 200,
    imagePath: 'assets/images/moglis_cup.png',
  ),
  Cup(
    name: "Balu's Cup",
    description: "Pistachio ice cream",
    comment:
        'Balu’s Cup offers a smooth and nutty pistachio ice cream crafted with premium roasted pistachios. Its rich, velvety texture makes it a luxurious choice for nut lovers seeking something indulgent and satisfying.',
    price: 8.99,
    numberLikes: 165,
    imagePath: "assets/images/balus_cup.png",
  ),
  Cup(
    name: "Smiling David",
    description: "Coffee ice cream",
    comment:
        'Smiling David is a bold and creamy coffee ice cream, infused with real espresso for a deep, aromatic kick. It’s the perfect pick-me-up dessert, balancing rich coffee flavor with a smooth, satisfying finish.',
    price: 3.99,
    numberLikes: 310,
    imagePath: "assets/images/smiling_david.png",
  ),
  Cup(
    name: "Kai in a Cone",
    description: "Vanilla ice cream",
    comment:
        'Kai in a Cone is a classic vanilla ice cream, crafted with real vanilla beans for a pure, smooth flavor that never goes out of style. Its creamy texture and timeless taste make it a favorite for all ages.',
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
