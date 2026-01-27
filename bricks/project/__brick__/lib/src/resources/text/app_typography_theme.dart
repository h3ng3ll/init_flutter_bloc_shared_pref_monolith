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
    color: color,
  );

  TextStyle get r18 => TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 18,
    color: color,
  );

  TextStyle get r19 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 19,
    color: color,
  );

  TextStyle get r20 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: color,
  );

  TextStyle get r24 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: color,
  );

  TextStyle get r32 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 32,
    color: color,
  );

  TextStyle get r40 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 40,
    color: color,
  );

  //Medium
  TextStyle get m8 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 8,
    color: color,
  );

  TextStyle get m10 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10,
    color: color,
  );

  TextStyle get m12 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12,
    color: color,
  );

  TextStyle get m13 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 13,
    color: color,
  );

  TextStyle get m14 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: color,
  );

  TextStyle get m15 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: color,
  );

  TextStyle get m16 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: color,
  );

  TextStyle get m18 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    color: color,
  );

  TextStyle get m20 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: color,
  );

  TextStyle get m24 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: color,
  );

  TextStyle get m32 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 32,
    color: color,
  );

  TextStyle get m36 => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 36,
    color: color,
  );

  //SemiBold
  TextStyle get sb12 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: color,
  );

  TextStyle get sb14 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: color,
  );

  TextStyle get sb15 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 15,
    color: color,
  );

  TextStyle get sb16 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: color,
  );

  TextStyle get sb20 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: color,
  );

  TextStyle get sb24 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: color,
  );

  TextStyle get sb36 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 36,
    color: color,
  );

  TextStyle get sb48 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 48,
    color: color,
  );

  TextStyle get sb54 => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 54,
    color: color,
  );

  TextStyle get b10 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 10,
    color: color,
  );

  TextStyle get b12 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 12,
    color: color,
  );

  TextStyle get b14 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: color,
  );

  TextStyle get b16 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: color,
  );

  TextStyle get b17 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 17,
    color: color,
  );

  TextStyle get b18 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: color,
  );

  TextStyle get b20 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: color,
  );

  TextStyle get b24 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: color,
  );

  TextStyle get b32 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 32,
    color: color,
  );

  TextStyle get b38 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 38,
    color: color,
  );

  TextStyle get b110 => TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 110,
    color: color,
  );

  TextStyle get bl16 => TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 16,
    color: color,
  );

  TextStyle get bl17 => TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 17,
    color: color,
  );

  TextStyle get bl18 => TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 18,
    color: color,
  );

  TextStyle get bl20 => TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 20,
    color: color,
  );

  TextStyle get bl24 => TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 24,
    color: color,
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
