import 'package:flutter/material.dart';
import 'sound_pad.dart';

class FXPad extends SoundPad {
  final Color color = Colors.orange;
  final String label = 'FX';
  final String sound;
  final int bpm;

  FXPad({this.sound, this.bpm});
}
