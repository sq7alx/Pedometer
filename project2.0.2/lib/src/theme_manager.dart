import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final _fontFamily =
      GoogleFonts.montserrat(fontWeight: FontWeight.w300).fontFamily;

  static ThemeData get lightTheme {
    final theme = FlexColorScheme.light(
      scheme: FlexScheme.blue,
      fontFamily: _fontFamily,
      useMaterial3: true,
    ).toTheme;

    return theme.copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: theme.colorScheme.onPrimary,
      ),
    );
  }

  static ThemeData get darkTheme {
    final theme = FlexColorScheme.dark(
      colorScheme: const ColorScheme.dark(
        secondary: Colors.grey,
        primary: Colors.white,
        background: Colors.black12,
      ),
      fontFamily: _fontFamily,
      useMaterial3: true,
    ).toTheme;

    return theme.copyWith(
      appBarTheme: AppBarTheme(
        foregroundColor: theme.colorScheme.primary,
      ),
    );
  }
}
