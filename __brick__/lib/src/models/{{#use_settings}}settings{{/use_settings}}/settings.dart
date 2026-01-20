import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';

part 'settings.g.dart';

@freezed
sealed class Settings with _$Settings {
  Settings._();

  factory Settings({
    @Default(true) bool soundStatus,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
