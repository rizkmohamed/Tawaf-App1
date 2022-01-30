import 'package:flutter/material.dart';
import 'package:twaf/app/Shared/Colors/Colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      dividerColor: Colors.transparent,
      // brightness: Brightness.light,
      primaryColor: kgoldColor,

      scaffoldBackgroundColor: kwhite,
      fontFamily: 'Almarai',
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(0),
        hintStyle: TextStyle(
          color: kgary,
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
        filled: false,
      ),
    );
  }
}
