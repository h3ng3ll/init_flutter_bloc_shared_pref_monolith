part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.load() = _Load;

  const factory ProfileEvent.save({
    Uint8List? avatar,
    required String username,
  }) = _Save;
}
