import 'package:flutter/material.dart';
import 'package:gapless_audio_loop/gapless_audio_loop.dart';
import 'package:gbedu/metronome.dart';

class GaplessDrumPad extends StatefulWidget {
  final Color drumPadColor;
  final String drumPadLabel;
  final String drumPadSound;

  GaplessDrumPad({this.drumPadColor, this.drumPadLabel, this.drumPadSound});

  @override
  _GaplessDrumPadState createState() => _GaplessDrumPadState();
}

class _GaplessDrumPadState extends State<GaplessDrumPad> {
  Metronome metronome = Metronome();
  GaplessAudioLoop player;
  bool isActive = false;

  Future<void> loadDrumPadSound() async {
    this.player = GaplessAudioLoop();
    await player.loadAsset(widget.drumPadSound);
  }

  Future<void> loopSound() async {
    await loadDrumPadSound();
    metronome.isOnBeat() ? await player.play() : loopSound();
  }

  Future<void> stopSound() async {
    await player.stop();
  }

  void toggleDrumPad() {
    isActive ? isActive = false : isActive = true;
  }

  @override
  void initState() {
    super.initState();
    metronome.setBeatsPerMinute(100); //TODO pass in dynamic BPM from widget builder
    metronome.loopBeatTime();
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
