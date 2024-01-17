import 'package:flutter/material.dart';

import 'colors.dart';

lightTheme(context) {
  return ThemeData(
    scaffoldBackgroundColor: backGroundColor,
    primaryColor: primaryColor,
    fontFamily: "Poppins",
    appBarTheme: const AppBarTheme(
      // iconTheme: IconThemeData(
      //   color: Color(0xff292D32),
      // ),
      titleTextStyle: TextStyle(
        color: mainFontColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: backGroundColor,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 32,
      ),
    ),
  );
}
