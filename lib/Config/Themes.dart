import 'package:chatgpt/Config/Colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: lprimaryColor,
    onPrimary: lFontColor,
    secondary: whiteColor,
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
    bodyLarge: TextStyle(
      fontFamily: "Rubik",
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: lFontColor,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Rubik",
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: lFontColor,
    ),
    bodySmall: TextStyle(
      fontSize: 15,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w400,
      color: lFontColor,
    ),
    labelLarge: TextStyle(
      fontFamily: "Rubik",
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: lLableColor,
    ),
    labelMedium: TextStyle(
      fontFamily: "Rubik",
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: lLableColor,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w400,
      color: lLableColor,
    ),
    headlineLarge: TextStyle(
      fontSize: 20,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w600,
      color: lFontColor,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w500,
      color: lFontColor,
    ),
    headlineSmall: TextStyle(
      fontSize: 20,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w400,
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
    secondary: whiteColor,
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
    headlineSmall: TextStyle(
      fontSize: 20,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w400,
      color: dFontColor,
    ),
  ),
);
