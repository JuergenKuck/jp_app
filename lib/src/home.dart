import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              'assets/svgs/t1_screen1.svg',
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
              'assets/svgs/t2_screen1.svg',
              width: 425,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            left: 27,
            top: 606,
            child: // Blur Rechteck
                Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(33),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Container(
                    width: 370,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1), // halbtransparent
                      borderRadius: BorderRadius.circular(33),
                      border: Border.all(color: Colors.white.withOpacity(0.2)),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Blur Box',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
