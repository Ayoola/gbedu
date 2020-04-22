import 'package:audioplayers/audioplayers.dart';
import 'package:gapless_audio_loop/gapless_audio_loop.dart';
import 'package:audioplayers/audio_cache.dart';

class GbeduPlayer {
  String _sound;
  GaplessAudioLoop _soundLooper;
  AudioCache _soundPlayer = AudioCache();
  AudioPlayer _soundPlayerController;

  void loadGbeduPlayerSound(String sound) => this._sound = sound;

  Future<void> playSound() async {
    this._soundPlayerController = await _soundPlayer.play(this._sound, mode: PlayerMode.LOW_LATENCY);
  }

  Future<void> stopSound() async {
    await this._soundPlayerController.stop();
  }

  Future<void> loadSoundLooper() async {
    this._soundLooper = GaplessAudioLoop();
    await this._soundLooper.loadAsset(this._sound);
  }

  Future<void> loopSound() async {
    await _soundLooper.play();
  }

  Future<void> stopSoundLoop() async {
    await _soundLooper.stop();
  }
}
