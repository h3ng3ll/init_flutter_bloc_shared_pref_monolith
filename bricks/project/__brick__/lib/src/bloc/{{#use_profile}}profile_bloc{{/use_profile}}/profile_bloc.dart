import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/profile/profile.dart';
import '../../repositories/profile_local_repository.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileLocalRepository _profileLocalRepository =
      ProfileLocalRepository.instance;

  ProfileBloc()
    : super(
        ProfileState(
          profile: Profile(),
        ),
      ) {
    on<_Load>(_load);
    on<_Save>(_save);
  }

  void _load(_Load event, emit) async {
    emit(
      state.copyWith(
        status: ProfileStatus.loading,
      ),
    );
    final profile = await _profileLocalRepository.get();
    if (profile == null) return;
    emit(
      state.copyWith(
        status: ProfileStatus.loaded,
        profile: profile,
      ),
    );
  }

  Future<void> _save(_Save event, emit) async {
    emit(
      state.copyWith(
        status: ProfileStatus.loading,
      ),
    );
    final profile = state.profile.copyWith(
      avatar: event.avatar,
      username: event.username,
    );
    await _profileLocalRepository.update(
      profile,
    );
    emit(
      state.copyWith(
        status: ProfileStatus.updated,
        profile: profile,
      ),
    );
  }
}
