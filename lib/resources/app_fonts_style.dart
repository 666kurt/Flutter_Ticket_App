import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFFF6F6F9),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
  ),
  textTheme: TextTheme(
    titleLarge: const TextStyle(
      color: Colors.black,
      fontSize: 22,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      color: Colors.black.withOpacity(0.35),
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: const TextStyle(
      color: Color(0xFF3364E0),
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
  ),
);
