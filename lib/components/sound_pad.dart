import 'package:flutter/material.dart';
import 'package:gbedu/gbedu_player.dart';
import 'package:gbedu/metronome.dart';

class SoundPad extends StatefulWidget {
  final Color color = Colors.black;
  final String label = 'Sound';
  final String sound;
  final int bpm;

  SoundPad({this.sound, this.bpm});

  @override
  _SoundPadState createState() => _SoundPadState();
}

class _SoundPadState extends State<SoundPad> {
  Metronome metronome = Metronome();
  GbeduPlayer gbeduPlayer = GbeduPlayer();
  bool isActive = false;

  void initializeSoundPad() {
    gbeduPlayer.loadGbeduPlayerSound(widget.sound);
    metronome.setBeatsPerMinute(widget.bpm);
    metronome.loopBeatTime();
  }

  void playSound() async {
    await gbeduPlayer.playSound();
  }

  void loopSound() async {
    activateSoundPad();
    await gbeduPlayer.loadSoundLooper();
    metronome.isOnBeat() ? await gbeduPlayer.loopSound() : loopSound();
  }

  void stopSoundLoop() async {
    deactivateSoundPad();
    await gbeduPlayer.stopSoundLoop();
  }

  void deactivateSoundPad() {
    setState(() => this.isActive = false);
  }

  void activateSoundPad() {
    setState(() => this.isActive = true);
  }

  @override
  void initState() {
    super.initState();
    initializeSoundPad();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          isActive ? stopSoundLoop() : loopSound();
        },
        padding: EdgeInsets.all(3.0),
        child: Opacity(
          opacity: isActive ? 1.0 : 0.6,
          child: Material(
            borderRadius: BorderRadius.circular(5.0),
            color: widget.color,
            child: Center(
              child: Text(widget.label),
            ),
          ),
        ),
      ),
    );
  }
}
