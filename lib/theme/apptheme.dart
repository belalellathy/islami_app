import 'package:flutter/material.dart';

class Apptheme {
  static const Color primary=Color(0xffE2BE7F);
  static const Color black=Colors.black;
  static const Color white=Colors.white;
  static ThemeData lightTheme =ThemeData();
  static ThemeData darkTheme =ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primary,
      showSelectedLabels: true,
      showUnselectedLabels: false,
     selectedItemColor: white,
    )
  );
  
}