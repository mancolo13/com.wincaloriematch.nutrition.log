import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFFFB7185);
  static const Color secondaryColor = Color(0xFFFDA4AF);
  static const Color backgroundColor = Color(0xFF170A0C);
  static const Color surfaceColor = Color(0xFF291418);

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: surfaceColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: surfaceColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}
