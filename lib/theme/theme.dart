import 'package:flutter/material.dart';

class Constants {
  //App related strings
  static String appName = "Flutter Trips";

  //Colors for theme
  static Color lightPrimary = Color(0xfff3f4f9);
  static Color darkPrimary = Color(0xff2B2B2B);

  static Color lightAccent = Colors.blue;

  static Color darkAccent = Colors.blue;

  static Color lightBG = Color(0xfff3f4f9);
  static Color darkBG = Color(0xff2B2B2B);

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: lightAccent,
    ),
    accentColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    bottomAppBarTheme: BottomAppBarTheme(
      elevation: 0.0,
      color: lightBG,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    scaffoldBackgroundColor: darkBG,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: darkAccent,
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      elevation: 0.0,
      color: darkBG,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );
}
