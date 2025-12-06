// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_color_scheme.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppColorSchemeTailorMixin on ThemeExtension<AppColorScheme> {
  Color get primary;
  Color get onPrimary;
  Color get secondary;
  Color get onSecondary;
  Color get inactiveSecondary;
  Color get surface;
  Color get onSurface;
  Color get background;
  Color get onBackground;
  Color get error;
  Color get onError;
  Color get selectedItem;
  Color get unselectedItem;

  @override
  AppColorScheme copyWith({
    Color? primary,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? inactiveSecondary,
    Color? surface,
    Color? onSurface,
    Color? background,
    Color? onBackground,
    Color? error,
    Color? onError,
    Color? selectedItem,
    Color? unselectedItem,
  }) {
    return AppColorScheme(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      inactiveSecondary: inactiveSecondary ?? this.inactiveSecondary,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
      background: background ?? this.background,
      onBackground: onBackground ?? this.onBackground,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      selectedItem: selectedItem ?? this.selectedItem,
      unselectedItem: unselectedItem ?? this.unselectedItem,
    );
  }

  @override
  AppColorScheme lerp(
    covariant ThemeExtension<AppColorScheme>? other,
    double t,
  ) {
    if (other is! AppColorScheme) return this as AppColorScheme;
    return AppColorScheme(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      inactiveSecondary: Color.lerp(
        inactiveSecondary,
        other.inactiveSecondary,
        t,
      )!,
      surface: Color.lerp(surface, other.surface, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      background: Color.lerp(background, other.background, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      error: Color.lerp(error, other.error, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      selectedItem: Color.lerp(selectedItem, other.selectedItem, t)!,
      unselectedItem: Color.lerp(unselectedItem, other.unselectedItem, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColorScheme &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality().equals(onPrimary, other.onPrimary) &&
            const DeepCollectionEquality().equals(secondary, other.secondary) &&
            const DeepCollectionEquality().equals(
              onSecondary,
              other.onSecondary,
            ) &&
            const DeepCollectionEquality().equals(
              inactiveSecondary,
              other.inactiveSecondary,
            ) &&
            const DeepCollectionEquality().equals(surface, other.surface) &&
            const DeepCollectionEquality().equals(onSurface, other.onSurface) &&
            const DeepCollectionEquality().equals(
              background,
              other.background,
            ) &&
            const DeepCollectionEquality().equals(
              onBackground,
              other.onBackground,
            ) &&
            const DeepCollectionEquality().equals(error, other.error) &&
            const DeepCollectionEquality().equals(onError, other.onError) &&
            const DeepCollectionEquality().equals(
              selectedItem,
              other.selectedItem,
            ) &&
            const DeepCollectionEquality().equals(
              unselectedItem,
              other.unselectedItem,
            ));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(onPrimary),
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(onSecondary),
      const DeepCollectionEquality().hash(inactiveSecondary),
      const DeepCollectionEquality().hash(surface),
      const DeepCollectionEquality().hash(onSurface),
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(onBackground),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(onError),
      const DeepCollectionEquality().hash(selectedItem),
      const DeepCollectionEquality().hash(unselectedItem),
    );
  }
}

extension AppColorSchemeBuildContextProps on BuildContext {
  AppColorScheme get appColorScheme =>
      Theme.of(this).extension<AppColorScheme>()!;

  /// The base color for app.
  Color get primary => appColorScheme.primary;

  /// The color of the elements that appears on top of a [primary].
  Color get onPrimary => appColorScheme.onPrimary;

  /// A secondary color for the app.
  ///
  /// Can be used as an accent color for buttons, switches, labels, icons, etc.
  Color get secondary => appColorScheme.secondary;

  /// The color of the elements that appears on top of a [secondary].
  Color get onSecondary => appColorScheme.onSecondary;

  /// The color of inactive icon (in buttons/switchers... etc)
  Color get inactiveSecondary => appColorScheme.inactiveSecondary;

  /// Surface colors affect surfaces of components, such as cards, sheets, and menus.
  Color get surface => appColorScheme.surface;

  /// The color of the elements that appears on top of a [surface].
  Color get onSurface => appColorScheme.onSurface;

  /// The background color appears behind scrollable content.
  Color get background => appColorScheme.background;

  /// The color of the elements that appears on top of a [background].
  Color get onBackground => appColorScheme.onBackground;

  /// Color for show errors.
  Color get error => appColorScheme.error;

  /// The color of the elements that appears on top of a [error].
  Color get onError => appColorScheme.onError;

  /// Color for show selected items.
  Color get selectedItem => appColorScheme.selectedItem;

  /// Color for show unselected items.
  Color get unselectedItem => appColorScheme.unselectedItem;
}
