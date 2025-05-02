import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/src/common/global.dart';
import 'package:jp_app/src/common/presentation/button_sheet_page2.dart';
import 'package:jp_app/src/common/presentation/cup_container.dart';
import 'package:jp_app/src/common/presentation/my_glas_rect.dart';
import 'package:jp_app/src/common/presentation/my_container.dart';
import 'package:jp_app/src/common/presentation/my_image.dart';
import 'package:jp_app/src/common/presentation/my_positioned.dart';
import 'package:jp_app/src/common/presentation/outlined_soft_light_text.dart';
import 'package:jp_app/src/common/presentation/image_positioned.dart';
import 'package:jp_app/src/common/presentation/text18.dart';
import 'package:jp_app/src/common/presentation/text24.dart';
import 'package:jp_app/src/page1.dart';
import 'package:jp_app/src/common/presentation/text12.dart';

class Page2 extends StatelessWidget {
  Page2({super.key});

  final double dh = 45 * facHeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: MyImage(imagePath: 'assets/images/background2.png')),
          MyPositioned(
              left: -12,
              top: 10,
              child: OutlinedSoftLightText(text: 'SNACK', fontSize: 130, strokeWidth: 2.8, isOpacity: true)),
          MyPositioned(
              left: -180,
              bottom: 250,
              child: OutlinedSoftLightText(text: 'SNACK SNACK', fontSize: 100, strokeWidth: 2.0, isOpacity: true)),
          MyPositioned(
            left: 22,
            top: 247,
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
                      padding: EdgeInsets.only(top: 20 * facHeight, left: 20 * facWidth, right: 40 * facWidth),
                      child: Container(
                        width: 300 * facWidth,
                        height: 240 * facHeight,
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text18('Angi’s Yummy Burger'),
                                Row(
                                  children: [
                                    Text12('􀋃', color: Color(0xFFef82b5)),
                                    Text12('4.8'),
                                  ],
                                ),
                              ],
                            ),
                            MySizedBox(height: 10),
                            Text12('Delish vegan burger'),
                            Text12('that tastes like heaven'),
                            MySizedBox(height: 16),
                            Text18('₳ 13.99'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          MyPositioned(
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
                text: Text12(
                  'Add to order',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.35,
                ),
                width: 102 * facWidth,
                height: 44 * facHeight,
                strokeColorStart: Color(0xFFcb68e9),
                strokeColorEnd: Color(0xFFd8bdfb),
                containerColorStart: Color(0xFF908CF5), // starting color (center)
                containerColorEnd: Color(0xFFBB8DE1), // ending color (edges)
              ),
            ),
          ),
          ImagePositioned(imagePath: 'assets/images/burger_3d.png', left: 145, top: 290, width: 238),
          MyPositioned(
            left: 22,
            top: 78,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 0,
              children: [
                Text24('Choose Your Favorite'),
                Text24('Snack'),
                SizedBox(height: 16),
                Row(
                  spacing: 8,
                  children: [
                    MyGlasRect(width: 155, height: 44, text: '􀻐 All categories 􀆈'),
                    MyGlasRect(width: 93, height: 44, isSelected: true, text: 'Salty'),
                    MyGlasRect(width: 93, height: 44, text: 'Sweet'),
                    MyGlasRect(width: 93, height: 44, text: 'Drinks'),
                  ],
                )
              ],
            ),
          ),
          MyPositioned(
            left: 22,
            bottom: 300,
            child: Text18('We Recommend', fontWeight: FontWeight.w900),
          ),
          MyPositioned(
            left: 22,
            bottom: 16,
            child: SizedBox(
              height: 270 * facHeight,
              width: (screenWidth - 22) * facWidth,
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
