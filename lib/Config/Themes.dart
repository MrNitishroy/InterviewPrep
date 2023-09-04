import 'package:chatgpt/Config/Colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: lprimaryColor,
    onPrimary: lFontColor,
    secondary: lsecondryColor,
    onSecondary: lLableColor,
    error: Colors.red,
    onError: lFontColor,
    background: lBgColor,
    onBackground: lFontColor,
    surface: lDivColor,
    onSurface: lFontColor,
    primaryContainer: lDivColor,
    onPrimaryContainer: lLableColor,
    outline: lBorderColor,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 15,
      color: lFontColor,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: lFontColor,
    ),
    labelMedium: TextStyle(
      fontSize: 15,
      color: lLableColor,
    ),
    headlineLarge: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: lFontColor,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: lLableColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: lFontColor,
    ),
  ),
);

var darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: dprimaryColor,
    onPrimary: dFontColor,
    secondary: dsecondryColor,
    onSecondary: dLableColor,
    error: Colors.red,
    onError: dFontColor,
    background: dBgColor,
    onBackground: dFontColor,
    surface: dDivColor,
    onSurface: dFontColor,
    primaryContainer: dDivColor,
    onPrimaryContainer: dLableColor,
    outline: dBorderColor,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontFamily: "Rubik",
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: dFontColor,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Rubik",
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: dFontColor,
    ),
    bodySmall: TextStyle(
      fontSize: 15,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w400,
      color: dFontColor,
    ),
    labelLarge: TextStyle(
      fontFamily: "Rubik",
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: dLableColor,
    ),
    labelMedium: TextStyle(
      fontFamily: "Rubik",
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: dLableColor,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w400,
      color: dLableColor,
    ),
    headlineLarge: TextStyle(
      fontSize: 20,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w600,
      color: dFontColor,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w500,
      color: dFontColor,
    ),
  ),
);
