import 'package:chatgpt/Config/Colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: lprimaryColor,
      onPrimary: lFontColor,
      secondary: lDivColor,
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
    ));

var darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: dprimaryColor,
    onPrimary: dFontColor,
    secondary: dDivColor,
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
    bodyMedium: TextStyle(
      fontSize: 15,
      color: dFontColor,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: dFontColor,
    ),
    labelMedium: TextStyle(
      fontSize: 15,
      color: dLableColor,
    ),
  ),
);
