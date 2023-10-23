import 'package:flutter/material.dart';

ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor: Color(0xffCABEB9),
    fontFamily: 'Avenir',
    textTheme: textTheme(),
  );
}
TextTheme textTheme(){
  return TextTheme(
    displayLarge: TextStyle(
      color: Color(0xffCABEB9),
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: Color(0xffCABEB9),
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ),
      displaySmall: TextStyle(
        color: Color(0xffCABEB9),
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: Color(0xffCABEB9),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        color: Color(0xffCABEB9),
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    titleLarge: TextStyle(
      color: Color(0xffCABEB9),
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodyLarge: TextStyle(
      color: Color(0xffCABEB9),
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      color: Color(0xffCABEB9),
      fontSize: 10,
      fontWeight: FontWeight.normal,
    ),
  );
}