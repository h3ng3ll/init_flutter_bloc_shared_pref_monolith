part of 'profile_bloc.dart';


enum ProfileStatus {
  initial,
  loading,
  loaded,
  updated,
}
@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    required Profile profile,
    @Default(ProfileStatus.loading) ProfileStatus status,
  }) = _ProfileState;
}
