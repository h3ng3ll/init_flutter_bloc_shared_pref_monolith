part of 'settings_bloc.dart';

@freezed
sealed class SettingsEvent with _$SettingsEvent {

  const factory SettingsEvent.update({
    required bool soundStatus,
  }) = _Update;

  const factory SettingsEvent.fetch() = _Fetch;
}
