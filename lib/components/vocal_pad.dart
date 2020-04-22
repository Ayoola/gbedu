import 'package:flutter/material.dart';
import 'sound_pad.dart';

class VocalPad extends SoundPad {
  final Color color = Colors.purpleAccent;
  final String label = 'Vocal';
  final String sound;
  final int bpm;

  VocalPad({this.sound, this.bpm});
}
