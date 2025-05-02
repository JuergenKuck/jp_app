import 'package:flutter/material.dart';
import 'package:jp_app/src/common/global.dart';
import 'package:jp_app/src/common/presentation/my_container.dart';
import 'package:jp_app/src/common/presentation/my_glas_rect.dart';
import 'package:jp_app/src/common/presentation/my_image.dart';
import 'package:jp_app/src/common/presentation/my_positioned.dart';
import 'package:jp_app/src/common/presentation/outlined_soft_light_text.dart';
import 'package:jp_app/src/common/presentation/image_positioned.dart';
import 'package:jp_app/src/common/presentation/text18.dart';
import 'package:jp_app/src/page2.dart';
import 'package:jp_app/src/common/presentation/text14.dart';
import 'package:jp_app/src/common/presentation/text24.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: MyImage(imagePath: 'assets/images/background.png')),
          MyPositioned(
              left: -12, top: 40, child: OutlinedSoftLightText(text: 'SNACK', fontSize: 130, strokeWidth: 2.8)),
          ImagePositioned(
              imagePath: 'assets/images/chick cupcakes_3D.png', right: 0, top: 96 * facWidth, width: screenWidth),
          MyPositioned(
              left: -220,
              bottom: 260,
              child: OutlinedSoftLightText(text: 'SNACK SNACK', fontSize: 100, strokeWidth: 2.0)),
          MyPositioned(
            left: 22,
            bottom: 80,
            child: Center(
              child: MyGlasRect(
                width: 358,
                height: 230,
                child: Column(
                  children: [
                    MySizedBox(height: 30),
                    Text24('Feeling Snackish Today?'),
                    MySizedBox(height: 10),
                    Text14('Explore Angi’s most popular snack selection'),
                    Text14('and get instantly happy.'),
                    MySizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page2()),
                        );
                      },
                      child: MyContainer(
                        text: Text18('Order Now'),
                        width: 222,
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
        ],
      ),
    );
  }
}

class MySizedBox extends StatelessWidget {
  final double height;
  const MySizedBox({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height * facHeight);
  }
}
