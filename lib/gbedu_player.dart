import 'package:audioplayers/audioplayers.dart';
import 'package:gapless_audio_loop/gapless_audio_loop.dart';
import 'package:audioplayers/audio_cache.dart';

class GbeduPlayer {
  String drumPadSound;
  GaplessAudioLoop soundLooper;
  AudioCache soundPlayer = AudioCache();
  AudioPlayer soundPlayerController;

  GbeduPlayer(this.drumPadSound);

  Future<void> playSound() async {
    this.soundPlayerController = await soundPlayer.play(this.drumPadSound, mode: PlayerMode.LOW_LATENCY);
  }

  Future<void> stopSound() async {
    await this.soundPlayerController.stop();
  }

  Future<void> loadSoundLooper() async {
    this.soundLooper = GaplessAudioLoop();
    await this.soundLooper.loadAsset(this.drumPadSound);
  }

  Future<void> loopSound() async {
    await soundLooper.play();
  }

  Future<void> stopSoundLoop() async {
    await soundLooper.stop();
  }
}
