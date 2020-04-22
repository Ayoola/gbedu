import 'package:flutter/material.dart';
import 'sound_pad.dart';

class BassPad extends SoundPad {
  final Color color = Colors.blue;
  final String label = 'Bass';
  final String sound;
  final int bpm;

  BassPad({this.sound, this.bpm});
}
