import 'package:flutter/material.dart';
import 'sound_pad.dart';

class PercPad extends SoundPad {
  final Color color = Colors.green;
  final String label = 'Perc';
  final String sound;
  final int bpm;

  PercPad({this.sound, this.bpm});
}
