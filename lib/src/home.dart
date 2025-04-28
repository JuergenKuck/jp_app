import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jp_app/src/common/presentation/my_container.dart';
import 'package:jp_app/src/order_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // SVG als Hintergrund
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/svgs/background.svg',
              fit: BoxFit.cover,
            ),
          ),
          // Vordergrund-Content
          Positioned(
            right: 0,
            top: 00,
            child: SvgPicture.asset(
              'assets/svgs/t1_screens.svg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 0,
            top: 106,
            child: Image.asset(
              'assets/images/chick cupcakes_3D.png',
              width: 420,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            right: 0,
            top: 468,
            child: SvgPicture.asset(
              'assets/svgs/t2_screens.svg',
              width: 425,
              fit: BoxFit.fitWidth,
            ),
          ),

          Positioned(
            left: 16,
            top: 597,
            child: // Blur Rechteck
                Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(33),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Container(
                    width: 370,
                    height: 230,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.05), // halbtransparent
                      borderRadius: BorderRadius.circular(33),
                      border: Border.all(color: Colors.white.withValues(alpha: 0.15)),
                    ),
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        SizedBox(height: 68),
                        Text(
                          'Explore Angi’s most popular snack selection',
                          style: TextStyle(
                            color: Color(0x99EBEBF5),
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'and get instantly happy.',
                          style: TextStyle(
                            color: Color(0x99EBEBF5),
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.09 * 4,
                          ),
                        ),
                        SizedBox(height: 16),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => OrderScreen()),
                            );
                          },
                          child: MyContainer(
                            text: 'Order Now',
                            width: 222,
                            fontSize: 18.7,
                            strokeColorStart: Color(0xFFef3ed6),
                            strokeColorEnd: Color(0xFFf0c7eb),
                            containerColorStart: Color(0xFFF69EA3), // starting color (center)
                            containerColorEnd: Color(0xFFE970C4), // ending color (edges)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 580,
            child: SvgPicture.asset(
              'assets/svgs/Feeling Snackish Today_.svg',
              width: 425,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
