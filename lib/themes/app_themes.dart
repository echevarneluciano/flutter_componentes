import 'package:flutter/material.dart';

class AppThemes {
  static const Color primaryColor = Colors.red;
  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    appBarTheme:
        const AppBarTheme(color: primaryColor, elevation: 0, centerTitle: true),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      foregroundColor: primaryColor,
    )),
  );
}
