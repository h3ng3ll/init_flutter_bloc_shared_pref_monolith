
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/settings/settings.dart';
import '../../repositories/settings_local_repository.dart';

part 'settings_event.dart';

part 'settings_state.dart';

part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsLocalRepository _settingsLocalRepository =
      SettingsLocalRepository.instance;

  SettingsBloc()
    : super(
        SettingsState(
          settings: Settings(),
        ),
      ) {
    on<_Fetch>(_fetch);
    on<_Update>(_update);
  }

  void _fetch(_Fetch event, emit) async {
    final settings = await _settingsLocalRepository.get();
    if (settings == null) return;

    emit(
      state.copyWith(
        settings: settings,
      ),
    );
  }

  void _update(_Update event, emit) async {
    final settings = state.settings.copyWith(
      soundStatus: event.soundStatus,
    );
    await _settingsLocalRepository.update(
      settings,
    );
    emit(
      state.copyWith(
        settings: settings,
      ),
    );
  }
}
