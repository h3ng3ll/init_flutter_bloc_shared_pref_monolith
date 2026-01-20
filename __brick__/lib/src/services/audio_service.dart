import 'package:audioplayers/audioplayers.dart';

import '../resources/app_sounds.dart';

class AudioService {
  static final AudioService instance = AudioService._();

  AudioService._();

  final AudioPlayer _player = AudioPlayer();

  Future<void> playUIBtn() async {
    await _player.setReleaseMode(
      ReleaseMode.release,
    );
    await _player.play(
      AssetSource(
        AppSounds.selectBtnUi,
      ),
    );
  }

  Future<void> playSuccess() async {
    await _player.setReleaseMode(
      ReleaseMode.release,
    );
    await _player.play(
      AssetSource(
        AppSounds.success,
      ),
    );
  }

  Future<void> stop() async {
    await _player.stop();
  }

  Future<void> pause() async {
    await _player.pause();
  }

  Future<void> resume() async {
    await _player.resume();
  }
}
