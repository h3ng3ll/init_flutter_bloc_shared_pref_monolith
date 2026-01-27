import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'colors/tailor_color_mixin/app_color_scheme.dart';
import 'text/app_text_theme.dart';
import 'text/app_typography_theme.dart';

/// Theme config
abstract class AppThemeData {
  static final _lightColorScheme = AppColorScheme.light();
  static final _darkColorScheme = AppColorScheme.dark();
  static final _textTheme = AppTextTheme.base();

  static final light = ThemeData(
    // textTheme: GoogleFonts.mochiyPopPOneTextTheme(),
    useMaterial3: false,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Color(0xff1C1C1C),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      // selectionColor: AppColors.raspberry.value.withValues(
      //   alpha: 0.3,
      // ),
      // selectionHandleColor: AppColors.white.value,
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: _lightColorScheme.primary,
      onPrimary: _lightColorScheme.onPrimary,
      secondary: _lightColorScheme.secondary,
      onSecondary: _lightColorScheme.onSecondary,
      error: _lightColorScheme.error,
      onError: _lightColorScheme.onError,
      surface: _lightColorScheme.surface,
      onSurface: _lightColorScheme.onSurface,
    ),
    brightness: Brightness.light,
    primaryColor: Colors.black,
    extensions: [
      _textTheme,
      _lightColorScheme,
      AppTypographyTheme(
        color: _lightColorScheme.secondary,
      ),
    ],
  );

  static ThemeData dark = ThemeData(
    useMaterial3: false,


    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff1C1C1C),
      iconTheme: IconThemeData(color: Color(0xffFDFDFD)),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      // cursorColor: Constants.cursorColor,
      // selectionHandleColor: Constants.bubbleUnderCursorColor,
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: _darkColorScheme.primary,
      onPrimary: _darkColorScheme.onPrimary,
      secondary: _darkColorScheme.secondary,
      onSecondary: _darkColorScheme.onSecondary,
      error: _darkColorScheme.error,
      onError: _darkColorScheme.onError,
      surface: _darkColorScheme.surface,
      onSurface: _darkColorScheme.onSurface,
    ),
    brightness: Brightness.dark,
    primaryColor: const Color(0xffFDFDFD),
    extensions: [
      _textTheme,
      _darkColorScheme,
      AppTypographyTheme(
        color: _darkColorScheme.secondary,
      ),
    ],
  );
}
