import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jp_app/src/common/global.dart';
import 'package:jp_app/src/common/presentation/button_sheet_page2.dart';
import 'package:jp_app/src/common/presentation/cup_container.dart';
import 'package:jp_app/src/common/presentation/image_positioned_opacy.dart';
import 'package:jp_app/src/common/presentation/my_glas_rect.dart';
import 'package:jp_app/src/common/presentation/my_container.dart';
import 'package:jp_app/src/common/presentation/svg_background.dart';
import 'package:jp_app/src/common/presentation/image_positioned.dart';
import 'package:jp_app/src/common/presentation/text18.dart';
import 'package:jp_app/src/common/presentation/text24.dart';
import 'package:jp_app/src/page1.dart';
import 'package:jp_app/src/common/presentation/text12.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  final double dh = 45;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgBackground(imagePath: 'assets/svgs/background2.svg'),
          ImagePositionedOpacy(imagePath: 'assets/svgs/t1_screens.svg', opacy: 0.08, left: 0, top: -30),
          ImagePositionedOpacy(imagePath: 'assets/svgs/t2_screens.svg', opacy: 0.04, left: -40, top: 420, width: 420),
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
                                Text18('Angi’s Yummy Burger'),
                                Row(
                                  children: [
                                    Text12('􀋃', color: Color(0xFFef82b5)),
                                    Text12('4.8'),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text12('Delish vegan burger'),
                            Text12('that tastes like heaven'),
                            SizedBox(height: 16),
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
                text: Text12(
                  'Add to order',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.35,
                ),
                width: 102,
                height: 44,
                strokeColorStart: Color(0xFFcb68e9),
                strokeColorEnd: Color(0xFFd8bdfb),
                containerColorStart: Color(0xFF908CF5), // starting color (center)
                containerColorEnd: Color(0xFFBB8DE1), // ending color (edges)
              ),
            ),
          ),
          ImagePositioned(imagePath: 'assets/images/burger_3d.png', left: 145, top: 290, width: 238),
          Positioned(
            left: 22,
            top: 90,
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
          Positioned(
            left: 22,
            top: 540,
            child: Text18('We Recommend', fontWeight: FontWeight.w900),
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
