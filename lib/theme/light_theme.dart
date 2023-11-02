import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      useMaterial3: true,
      appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          )
      ),
      fontFamily: 'Poppins',
      scaffoldBackgroundColor: const Color(0xFFF7F7F9),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.blue,
          selectedIconTheme: IconThemeData(
            color: Colors.blue,
          ),
          selectedLabelStyle: TextStyle(
            fontSize: 11,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 11,
          ),
          unselectedItemColor: Colors.grey,
          unselectedIconTheme: IconThemeData(
            color: Colors.grey,
          )
      )
  );
}