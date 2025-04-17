import 'package:flutter/material.dart';
import 'package:jp_app/src/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(fontFamily: 'Inter'), home: const Home());
  }
}
