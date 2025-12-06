import 'package:flutter/material.dart';

@immutable
class AppTypographyTheme extends ThemeExtension<AppTypographyTheme> {
  final Color color;

  const AppTypographyTheme({
    required this.color,
  });

  //Regular
  TextStyle get r8 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 8,
    color: color,
  );

  TextStyle get r10 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 10,
    color: color,
  );

  TextStyle get r11 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: color,
  );

  TextStyle get r12 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: color,
  );

  TextStyle get r13 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: color,
  );

  TextStyle get r14 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: color,
  );

  TextStyle get r15 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: color,
  );

  TextStyle get r16 => TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 16,
  );

  TextStyle get r18 => TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 18,
  );

  TextStyle get r19 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 19,
  );

  TextStyle get r20 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 20,
  );

  TextStyle get r24 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 24,
  );

 TextStyle get r32 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 32,
  );

  TextStyle get r40 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 40,
  );

  //Medium
  TextStyle get m8 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 8,
  );

  TextStyle get m10 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10,
  );

  TextStyle get m12 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
  );

  TextStyle get m13 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 13,
  );

  TextStyle get m14 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  TextStyle get m15 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );

  TextStyle get m16 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  TextStyle get m18 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );

  TextStyle get m20 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );

  TextStyle get m24 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 24,
  );

  TextStyle get m32 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 32,
  );

  TextStyle get m36 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 36,
  );

  //SemiBold
  TextStyle get sb12 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  TextStyle get sb14 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );

  TextStyle get sb15 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 15,
  );

  TextStyle get sb16 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  TextStyle get sb20 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  TextStyle get sb24 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );

  TextStyle get sb36 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 36,
  );

  TextStyle get sb48 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 48,
  );

  TextStyle get sb54 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 54,
  );

  TextStyle get b10 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 10,
  );

  TextStyle get b12 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 12,
  );

  TextStyle get b14 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 14,
  );

  TextStyle get b16 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 16,
  );

  TextStyle get b17 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 17,
  );

  TextStyle get b18 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18,
  );

  TextStyle get b20 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
  );

  TextStyle get b24 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );

  TextStyle get b32 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 32,
  );

  TextStyle get b38 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 38,
  );

  TextStyle get b110 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 110,
  );

  TextStyle get bl16 => TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 16,
  );

  TextStyle get bl17 => TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 17,
  );

  TextStyle get bl18 => TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 18,
  );

  TextStyle get bl20 => TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 20,
  );

  TextStyle get bl24 => TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 24,
  );

  @override
  AppTypographyTheme copyWith({Color? color}) {
    return AppTypographyTheme(color: color ?? this.color);
  }

  /// Return text theme for app from context
  static AppTypographyTheme of(BuildContext context) {
    return Theme.of(context).extension<AppTypographyTheme>() ??
        _throwThemeExceptionFromFunc(context);
  }

  @override
  AppTypographyTheme lerp(AppTypographyTheme? other, double t) {
    if (other == null) return this;
    return AppTypographyTheme(color: Color.lerp(color, other.color, t)!);
  }
}

Never _throwThemeExceptionFromFunc(BuildContext context) =>
    throw Exception('$AppTypographyTheme не найдена в $context');
