import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import '../app_colors.dart';

part 'app_color_scheme.tailor.dart';

@TailorMixin()
class AppColorScheme extends ThemeExtension<AppColorScheme>
    with _$AppColorSchemeTailorMixin {
  /// The base color for app.
  @override
  final Color primary;

  /// The color of the elements that appears on top of a [primary].
  @override
  final Color onPrimary;

  /// A secondary color for the app.
  ///
  /// Can be used as an accent color for buttons, switches, labels, icons, etc.
  @override
  final Color secondary;

  /// The color of the elements that appears on top of a [secondary].
  @override
  final Color onSecondary;

  /// The color of inactive icon (in buttons/switchers... etc)
  @override
  final Color inactiveSecondary;

  /// Surface colors affect surfaces of components, such as cards, sheets, and menus.
  @override
  final Color surface;

  /// The color of the elements that appears on top of a [surface].
  @override
  final Color onSurface;

  /// The background color appears behind scrollable content.
  @override
  final Color background;

  /// The color of the elements that appears on top of a [background].
  @override
  final Color onBackground;

  /// Color for show errors.
  @override
  final Color error;

  /// The color of the elements that appears on top of a [error].
  @override
  final Color onError;

  /// Color for show selected items.
  @override
  final Color selectedItem;

  /// Color for show unselected items.
  @override
  final Color unselectedItem;

  const AppColorScheme({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.inactiveSecondary,
    required this.surface,
    required this.onSurface,
    required this.background,
    required this.onBackground,
    required this.error,
    required this.onError,
    required this.selectedItem,
    required this.unselectedItem,
  });

  factory AppColorScheme.light() => AppColorScheme(
    primary: AppColors.black,
    onPrimary: AppColors.white,
    secondary: AppColors.black,
    onSecondary: AppColors.black,
    inactiveSecondary: AppColors.black,
    surface: AppColors.black,
    onSurface: AppColors.black,
    background: AppColors.white,

    onBackground: AppColors.white,

    error: AppColors.white,

    onError: AppColors.white,
    unselectedItem: AppColors.black,

    selectedItem: AppColors.black,
  );

  ///  not used
  factory AppColorScheme.dark() => AppColorScheme(
    primary: AppColors.black,

    ///  not used
    onPrimary: AppColors.black,

    ///  not used
    secondary: AppColors.white,

    ///  not used
    onSecondary: AppColors.black,

    ///  not used
    inactiveSecondary: AppColors.white,

    ///  not used
    surface: AppColors.white,

    ///  not used
    onSurface: AppColors.black,

    ///  not used
    background: AppColors.white,

    ///  not used
    onBackground: AppColors.white,

    ///  not used
    error: AppColors.white,

    ///  not used
    onError: AppColors.white,

    ///  not used
    unselectedItem: AppColors.black,

    ///  not used
    selectedItem: AppColors.black,
  );

  /// Return color scheme for app from context
  static AppColorScheme of(BuildContext context) =>
      Theme.of(context).extension<AppColorScheme>() ??
      _throwThemeExceptionFromFunc(context);
}

Never _throwThemeExceptionFromFunc(BuildContext context) =>
    throw Exception('$AppColorScheme не найдена в $context');
