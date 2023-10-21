import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: const Color(0xFFB7935F),
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFFB7935F),
          onPrimary: Colors.black,
          secondary: Color(0xFFB7935F),
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Color(0xFFB7935F),
          onBackground: Colors.grey,
          surface: Colors.blueGrey,
          onSurface: Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
        //  centerTitle: true,
          elevation: 0,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          color: Color(0xFF027A48),
          size: 32,
        ),
        selectedItemColor: Color(0xFF027A48),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey,
          size: 28,
        ),
        unselectedItemColor: Colors.grey,
      ),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          bodySmall: GoogleFonts.milonga(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black),

      ));

}
