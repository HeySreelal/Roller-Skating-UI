import 'package:flutter/material.dart';
import 'package:roller_skating/screens/welcome.dart';
import 'package:roller_skating/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roller Skating',
      theme: SkatingTheme.theme,
      home: const GetStarted(),
    );
  }
}
