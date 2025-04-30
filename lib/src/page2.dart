import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jp_app/src/common/global.dart';
import 'package:jp_app/src/common/presentation/button_sheet_page2.dart';
import 'package:jp_app/src/common/presentation/cup_container.dart';
import 'package:jp_app/src/common/presentation/my_glas_rect.dart';
import 'package:jp_app/src/common/presentation/my_container.dart';
import 'package:jp_app/src/page1.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  final double dh = 45;

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
            top: 420,
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
                clipper: CustomShapeClipper(dh: dh),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                  child: CustomPaint(
                    painter: BorderPainter(
                      dh: dh,
                      Color(0x99EBEBF5),
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
                  MaterialPageRoute(builder: (context) => Page1()),
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
            top: 540,
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
            top: 570,
            child: SizedBox(
              height: 260,
              width: 360,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cups.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      buttonSheetPage2(context, cups[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: CupContainer(cup: cups[index]),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
