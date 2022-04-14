import 'package:flutter/material.dart';

class SkatingTheme {
  static const Color primaryColor = Color(0xFF2845FB);
  static const Color purple = Color(0xFF5D64B2);
  static const Color orange = Color(0xFFD17D5B);
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  static ThemeData get theme => ThemeData(
        primaryColor: primaryColor,
        colorScheme: const ColorScheme.light(
          primary: primaryColor,
          onPrimary: black,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        iconTheme: const IconThemeData(
          color: black,
        ),
      );
}
