import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class DrumPadDeprecated extends StatefulWidget {
  final Color drumPadColor;
  final String drumPadLabel;
  final String drumPadSound;

  DrumPadDeprecated({this.drumPadColor, this.drumPadLabel, this.drumPadSound});

  @override
  _DrumPadDeprecatedState createState() => _DrumPadDeprecatedState();
}

class _DrumPadDeprecatedState extends State<DrumPadDeprecated> {
  final player = AudioCache();
  bool isActive = false;
  AudioPlayer audioPlayer;

  Future<void> playSound() async {
    AudioPlayer audioPlayer = await player.play(widget.drumPadSound, mode: PlayerMode.LOW_LATENCY);
    this.audioPlayer = audioPlayer;
  }

  Future<void> loopSound() async {
    AudioPlayer audioPlayer = await player.loop(widget.drumPadSound, mode: PlayerMode.LOW_LATENCY);
    this.audioPlayer = audioPlayer;
  }

  void stopSound() {
    audioPlayer.stop();
  }

  void toggleDrumPad() {
    isActive ? isActive = false : isActive = true;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(3.0),
        onPressed: () {
          setState(() {
            toggleDrumPad();
          });
          isActive ? loopSound() : stopSound();
        },
        child: Opacity(
          opacity: isActive ? 1.0 : 0.5,
          child: Material(
            elevation: isActive ? 0.0 : 5.0,
            borderRadius: BorderRadius.circular(5.0),
            color: widget.drumPadColor,
            child: Center(
              child: Text(widget.drumPadLabel),
            ),
          ),
        ),
      ),
    );
  }
}
