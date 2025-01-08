import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        scaffoldBackgroundColor: Colors.black,
        fontFamily: GoogleFonts.nunito().fontFamily,
        colorScheme: const ColorScheme.dark(
            primary: Color(0xFF545454),
            secondary: Color(0xFF525252),
            onSurface: Colors.white,
            error: Color.fromARGB(255, 255, 97, 86)),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            foregroundColor: const Color(0xFF545454),
          ),
        ),
      );
}
