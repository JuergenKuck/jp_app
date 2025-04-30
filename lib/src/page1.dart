import 'package:flutter/material.dart';
import 'package:jp_app/src/common/presentation/my_container.dart';
import 'package:jp_app/src/common/presentation/my_glas_rect.dart';
import 'package:jp_app/src/common/presentation/svg_background.dart';
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
          SvgBackground(imagePath: 'assets/svgs/background.svg'),
          ImagePositioned(imagePath: 'assets/svgs/t1_screens.svg', left: 0, top: 0),
          ImagePositioned(imagePath: 'assets/images/chick cupcakes_3D.png', left: 0, top: 96, width: 420),
          ImagePositioned(imagePath: 'assets/svgs/t2_screens.svg', right: 0, top: 468, width: 420),
          Positioned(
            left: 16,
            top: 597,
            child: Center(
              child: MyGlasRect(
                width: 370,
                height: 230,
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text24('Feeling Snackish Today?'),
                    SizedBox(height: 10),
                    Text14('Explore Angi’s most popular snack selection'),
                    Text14('and get instantly happy.'),
                    SizedBox(height: 30),
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
