import 'package:flutter/material.dart';
import 'package:gapless_audio_loop/gapless_audio_loop.dart';

class GaplessDrumPad extends StatefulWidget {
  final Color drumPadColor;
  final String drumPadLabel;
  final String drumPadSound;

  GaplessDrumPad({this.drumPadColor, this.drumPadLabel, this.drumPadSound});

  @override
  _GaplessDrumPadState createState() => _GaplessDrumPadState();
}

class _GaplessDrumPadState extends State<GaplessDrumPad> {
  GaplessAudioLoop player;
  bool isActive = false;

  Future<void> loadDrumPadSound() async {
    this.player = GaplessAudioLoop();
    await player.loadAsset(widget.drumPadSound);
  }

  Future<void> loopSound() async {
    await loadDrumPadSound();
    await player.play();
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
