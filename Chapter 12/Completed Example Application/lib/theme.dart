import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  fontFamily: GoogleFonts.quicksand().fontFamily,
  scaffoldBackgroundColor: const Color.fromRGBO(15, 4, 76, 1),
  appBarTheme: const AppBarTheme(
    elevation: 0,
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    background: Color.fromRGBO(15, 4, 76, 1),
    error: Colors.red,
    onBackground: Color.fromRGBO(20, 30, 97, 1),
    onError: Color.fromRGBO(238, 238, 238, 1),
    onPrimary: Color.fromRGBO(238, 238, 238, 1),
    onSecondary: Color.fromRGBO(238, 238, 238, 1),
    onSurface: Color.fromRGBO(238, 238, 238, 1),
    primary: Color.fromRGBO(15, 4, 76, 1),
    secondary: Color.fromRGBO(20, 30, 97, 1),
    surface: Color.fromRGBO(15, 4, 76, 1),
    primaryContainer: Color.fromRGBO(15, 4, 76, 1),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 96,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 36,
      color: Colors.white,
    ),
    headlineSmall: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 96,
    ),
    labelMedium: TextStyle(
      fontSize: 24,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
    ),
  ),
);
