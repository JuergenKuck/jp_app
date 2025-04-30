import 'package:flutter/material.dart';
import 'package:jp_app/src/common/domain/cup.dart';
import 'package:jp_app/src/common/presentation/image_positioned.dart';
import 'package:jp_app/src/common/presentation/my_container.dart';
import 'package:jp_app/src/common/presentation/my_glas_rect.dart';
import 'package:jp_app/src/common/presentation/text12.dart';
import 'package:jp_app/src/common/presentation/text14.dart';
import 'package:jp_app/src/common/presentation/text18.dart';
import 'package:jp_app/src/common/presentation/text24.dart';

void buttonSheetPage2(BuildContext context, Cup cup) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // für volle Höhe
    backgroundColor: Colors.transparent,
    builder: (context) {
      double width = MediaQuery.of(context).size.width;
      double height = MediaQuery.of(context).size.height;

      return SizedBox(
        width: width,
        height: height,
        child: Container(
          color: Colors.black.withValues(alpha: 0.05),
          child: Stack(
            children: [
              ImagePositioned(imagePath: 'assets/svgs/background_button_sheet.svg', bottom: 0),
              ImagePositioned(imagePath: cup.imagePath, width: 380, left: 0, top: 24),
              Positioned(
                top: 140,
                right: 30,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
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
                      child: Text18('x', color: Color(0x99EBEBF5), fontWeight: FontWeight.w600, letterSpacing: -0.0),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 320),
                  Center(
                    child: MyGlasRect(
                      width: width - 44,
                      height: 350,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16, left: 30, right: 30, bottom: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text14('􀊴 ${cup.numberLikes}', color: Color(0x99EBEBF5), letterSpacing: 0.07),
                            ),
                            Text24(cup.name),
                            SizedBox(height: 8),
                            Text14(cup.comment),
                            SizedBox(height: 24),
                            Text18('􁑐${cup.price}'),
                            SizedBox(height: 12),
                            Divider(
                              thickness: 1,
                              color: Color(0x99EBEBF5),
                            ),
                            SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text12('Ingredients',
                                        color: Color(0x99EBEBF5), fontWeight: FontWeight.w700, letterSpacing: -.08),
                                    SizedBox(height: 12),
                                    Image.asset('assets/images/ingredients.png', fit: BoxFit.fitWidth),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text12('Reviews',
                                        color: Color(0x99EBEBF5), fontWeight: FontWeight.w700, letterSpacing: -.08),
                                    SizedBox(height: 12),
                                    Row(
                                      spacing: 8,
                                      children: [
                                        Image.asset('assets/images/stars.png', fit: BoxFit.fitWidth),
                                        Text12('4.0',
                                            color: Color(0x99EBEBF5), fontWeight: FontWeight.w700, letterSpacing: -.08),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 190,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xFF414544),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                                      child: Text12('Small',
                                          color: Color(0x99EBEBF5), fontWeight: FontWeight.w700, letterSpacing: -0.08),
                                    ),
                                    SizedBox(
                                      height: 13,
                                      width: 4,
                                      child: VerticalDivider(
                                        thickness: 1,
                                        color: Color(0xE0767680),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                                      child: Text12('Medium',
                                          color: Color(0x99EBEBF5), fontWeight: FontWeight.w700, letterSpacing: -0.08),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 2),
                                      child: Container(
                                        height: 26,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF636366),
                                          borderRadius: BorderRadius.circular(7),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                                          child: Text12('Large', fontWeight: FontWeight.w700, letterSpacing: -0.08),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 16,
                          children: [
                            Container(
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
                                child: Text18('-',
                                    color: Color(0x99EBEBF5), fontWeight: FontWeight.w600, letterSpacing: -0.0),
                              ),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                color: Color(0x99EBEBF5),
                                fontSize: 16,
                                fontFamily: 'SFProDisplay',
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.0,
                              ),
                            ),
                            Container(
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
                                child: Text18('+',
                                    color: Color(0x99EBEBF5), fontWeight: FontWeight.w600, letterSpacing: -0.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: MyContainer(
                      text: Text18('Add To Order for 􁑐${cup.price}'),
                      width: width - 44,
                      strokeColorStart: Color(0xFFef3ed6),
                      strokeColorEnd: Color(0xFFf0c7eb),
                      containerColorStart: Color(0xFFF69EA3), // starting color (center)
                      containerColorEnd: Color(0xFFE970C4), // ending color (edges)
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
