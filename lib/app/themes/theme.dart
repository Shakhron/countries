import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: const Color.fromARGB(255, 237, 235, 235),
        textTheme: const TextTheme(
            headlineLarge: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
            bodySmall: TextStyle(fontSize: 12, color: Colors.grey),
            labelMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            headlineMedium: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
            headlineSmall: TextStyle(fontSize: 12)));
  }

  static ThemeData get darkTheme {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        fontFamily: 'Georgia',
        cardColor: Color.fromARGB(255, 62, 60, 60),
        textTheme: const TextTheme(
            headlineLarge: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            bodySmall: TextStyle(fontSize: 12, color: Colors.grey),
            labelMedium: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
            headlineMedium:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            headlineSmall: TextStyle(fontSize: 12)));
  }
}
