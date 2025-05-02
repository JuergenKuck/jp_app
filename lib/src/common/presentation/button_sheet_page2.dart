import 'package:flutter/material.dart';
import 'package:jp_app/src/common/domain/cup.dart';
import 'package:jp_app/src/common/global.dart';
import 'package:jp_app/src/common/presentation/image_positioned.dart';
import 'package:jp_app/src/common/presentation/my_container.dart';
import 'package:jp_app/src/common/presentation/my_glas_rect.dart';
import 'package:jp_app/src/common/presentation/my_image.dart';
import 'package:jp_app/src/common/presentation/my_line_container.dart';
import 'package:jp_app/src/common/presentation/my_line_painter.dart';
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
      return SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Container(
          color: Colors.black.withValues(alpha: 0.05),
          child: Stack(
            children: [
              ImagePositioned(imagePath: 'assets/svgs/background_button_sheet.svg', bottom: 0),
              ImagePositioned(imagePath: cup.imagePath, width: 380, left: 0, top: 16),
              Positioned(
                top: 140,
                right: 30,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: MyLineContainer(linetype: LineType.Cross),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 320),
                  Center(
                    child: MyGlasRect(
                      width: screenWidth - 44,
                      height: 330,
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
                                    MyImage(imagePath: 'assets/images/ingredients.png', width: 100),
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
                                        Text12('􀋃􀋃􀋃􀋃􀋂', color: Color(0xFFf0f0f0)),
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
                            MyLineContainer(linetype: LineType.Minus),
                            Text18('1'),
                            MyLineContainer(linetype: LineType.Plus),
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
                      width: screenWidth - 44,
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
