import 'package:flutter/material.dart';
import 'package:flutter_trips/splash/splash.dart';
import 'package:flutter_trips/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Trips',
      debugShowCheckedModeBanner: false,
      theme: themeData(Constants.lightTheme),
      home: Splash(),
    );
  }
}

// Apply font to our app's theme
ThemeData themeData(ThemeData theme) {
  return theme.copyWith(
    textTheme: GoogleFonts.robotoMonoTextTheme(
      theme.textTheme,
    ),
  );
}
