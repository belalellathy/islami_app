import 'package:flutter/material.dart';

class Apptheme {
  
  static const Color primary=Color(0xffE2BE7F);
  static const Color black=Colors.black;
  static const Color white=Colors.white;
  static ThemeData lightTheme =ThemeData();
  static ThemeData darkTheme =ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor:black,
      foregroundColor:primary,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: primary
      )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primary,
      showSelectedLabels: true,
      showUnselectedLabels: false,
     selectedItemColor: white,
    )
  );
  
}