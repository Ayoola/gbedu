import 'package:flutter/material.dart';
import 'sound_pad.dart';

class BeatPad extends SoundPad {
  final Color color = Colors.redAccent;
  final String label = 'Beat';
  final String sound;
  final int bpm;

  BeatPad({this.sound, this.bpm});
}
