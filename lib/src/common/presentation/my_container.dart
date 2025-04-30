import 'package:flutter/widgets.dart';

class MyContainer extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final double fontSize;
  final Color strokeColorStart;
  final Color strokeColorEnd;
  final Color containerColorStart;
  final Color containerColorEnd;

  const MyContainer({
    super.key,
    required this.text,
    required this.width,
    this.height = 53,
    required this.fontSize,
    required this.strokeColorStart,
    required this.strokeColorEnd,
    required this.containerColorStart,
    required this.containerColorEnd,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.5, 1),
            end: Alignment(0.55, 0),
            colors: [
              strokeColorStart,
              strokeColorEnd,
            ],
          ),
          borderRadius: BorderRadius.circular(11), // Gemeinsamer Radius
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: width - 4,
          height: height - 4,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(0.75, 0.0), // center of the container
              radius: 5, // how far the gradient expands
              colors: [
                containerColorStart,
                containerColorEnd,
              ],
              stops: [0, 1.0], // color stop points
            ),
            borderRadius: BorderRadius.circular(10), // Gemeinsamer Radius
            boxShadow: [
              // Außenschatten (Drop Shadow)
              BoxShadow(
                color: Color(0xA0EA71C5), // 50% Opazität der Farbe EA71C5
                offset: Offset(0, 10.97), // Schattenposition
                blurRadius: 32.92, // Unschärfe des Schattens
                spreadRadius: 0, // Keine Ausdehnung
              ),
              // Innenschatten (Inner Shadow Simulation)
              BoxShadow(
                color: Color(0xA09375B6), // Figma Shadow-Farbe (mit Opazität)
                offset: Offset(0, -1.1), // Schattenposition (nach oben)
                blurRadius: 8.87, // Unschärfe des Innenschattens
                spreadRadius: 0, // Keine Ausdehnung
                //inset: true, // Simuliert Innenschatten
              ),
            ],
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontFamily: 'SFProDisplay',
                fontSize: fontSize,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
