import 'package:flutter/material.dart';
import 'package:jp_app/src/common/global.dart';
import 'package:jp_app/src/page1.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    stLateFinals(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false, theme: ThemeData(fontFamily: 'SFProText'), home: const Page1());
  }
}
