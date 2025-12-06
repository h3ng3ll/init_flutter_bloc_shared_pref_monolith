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
    primary: AppColors.black.value,
    onPrimary: AppColors.white.value,
    secondary: AppColors.black.value,
    onSecondary: AppColors.black.value,
    inactiveSecondary: AppColors.black.value,
    surface: AppColors.black.value,
    onSurface: AppColors.black.value,
    background: AppColors.white.value,

    onBackground: AppColors.white.value,

    error: AppColors.white.value,

    onError: AppColors.white.value,
    unselectedItem: AppColors.black.value,

    selectedItem: AppColors.black.value,
  );

  ///  not used
  factory AppColorScheme.dark() => AppColorScheme(
    primary: AppColors.black.value,

    ///  not used
    onPrimary: AppColors.black.value,

    ///  not used
    secondary: AppColors.white.value,

    ///  not used
    onSecondary: AppColors.black.value,

    ///  not used
    inactiveSecondary: AppColors.white.value,

    ///  not used
    surface: AppColors.white.value,

    ///  not used
    onSurface: AppColors.black.value,

    ///  not used
    background: AppColors.white.value,

    ///  not used
    onBackground: AppColors.white.value,

    ///  not used
    error: AppColors.white.value,

    ///  not used
    onError: AppColors.white.value,

    ///  not used
    unselectedItem: AppColors.black.value,

    ///  not used
    selectedItem: AppColors.black.value,
  );

  /// Return color scheme for app from context
  static AppColorScheme of(BuildContext context) =>
      Theme.of(context).extension<AppColorScheme>() ??
      _throwThemeExceptionFromFunc(context);
}

Never _throwThemeExceptionFromFunc(BuildContext context) =>
    throw Exception('$AppColorScheme не найдена в $context');
