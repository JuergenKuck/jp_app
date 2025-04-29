import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jp_app/src/common/presentation/my_cup.dart';
import 'package:jp_app/src/common/presentation/my_glas_rect.dart';
import 'package:jp_app/src/common/presentation/my_container.dart';
import 'package:jp_app/src/home.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // SVG als Hintergrund
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/svgs/background2.svg',
              fit: BoxFit.cover,
            ),
          ),
          // Vordergrund-Content
          Positioned(
            right: 0,
            top: -30,
            child: Opacity(
              opacity: 0.08,
              child: SvgPicture.asset(
                'assets/svgs/t1_screens.svg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: -40,
            top: 400,
            child: Opacity(
              opacity: .04,
              child: SvgPicture.asset(
                'assets/svgs/t2_screens.svg',
                width: 425,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),

          Positioned(
            left: 22,
            top: 250,
            child: // Blur Rechteck
                Center(
              child: ClipPath(
                clipper: _CustomShapeClipper(),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                  child: CustomPaint(
                    painter: _BorderPainter(
                      Color(0x40FFFFFF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20, right: 40),
                      child: Container(
                        width: 300,
                        height: 240,
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Angi’s Yummy Burger ',
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontFamily: 'SFProDisplay',
                                    fontSize: 16.5,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.38,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '􀋃',
                                      style: TextStyle(
                                        color: Color(0xFFef82b5),
                                        fontFamily: 'SFProDisplay',
                                        fontSize: 12.07,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      '4.8',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontFamily: 'SFProDisplay',
                                        fontSize: 12.07,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Delish vegan burger',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'SFProDisplay',
                                fontSize: 13.17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'that tastes like heaven',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'SFProDisplay',
                                fontSize: 13.17,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.38,
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              '₳ 13.99',
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'SFProDisplay',
                                fontSize: 16.5,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.38,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            left: 40,
            top: 430,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: MyContainer(
                text: 'Add to order',
                width: 102,
                height: 44,
                fontSize: 13.2,
                strokeColorStart: Color(0xFFcb68e9),
                strokeColorEnd: Color(0xFFd8bdfb),
                containerColorStart: Color(0xFF908CF5), // starting color (center)
                containerColorEnd: Color(0xFFBB8DE1), // ending color (edges)
              ),
            ),
          ),

          Positioned(
            left: 145,
            top: 290,
            child: Image.asset(
              'assets/images/burger_3d.png',
              width: 238,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            left: 22,
            top: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 0,
              children: [
                Text(
                  'Choose Your Favorite ',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Inter',
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.38,
                  ),
                ),
                Text(
                  'Snack',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Inter',
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.38,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  spacing: 8,
                  children: [
                    MyGlasRect(
                      width: 155,
                      height: 44,
                      text: '􀻐 All categories 􀆈',
                    ),
                    MyGlasRect(
                      width: 93,
                      height: 44,
                      text: 'Salty',
                    ),
                    MyGlasRect(
                      width: 93,
                      height: 44,
                      text: 'Sweet',
                    ),
                    MyGlasRect(
                      width: 93,
                      height: 44,
                      text: 'Drinks',
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            left: 22,
            top: 520,
            child: Text(
              'We Recommend',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'Inter',
                fontSize: 18,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.38,
              ),
            ),
          ),
          Positioned(
            left: 22,
            top: 550,
            child: MyCup(width: 208, height: 288),
          ),
        ],
      ),
    );
  }
}

Path _generatePath(Size size, {double r = 33, double dh = 45}) {
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

class _CustomShapeClipper extends CustomClipper<Path> {
  final double r;
  final double dh;

  _CustomShapeClipper({this.r = 33, this.dh = 45});

  @override
  Path getClip(Size size) {
    return _generatePath(size, r: r, dh: dh);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class _BorderPainter extends CustomPainter {
  final Color borderColor;

  _BorderPainter(this.borderColor);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    final Path path = _generatePath(size);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
