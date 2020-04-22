import 'package:flutter/material.dart';
import 'sound_pad.dart';

class SynthPad extends SoundPad {
  final Color color = Colors.teal;
  final String label = 'Synth';
  final String sound;
  final int bpm;

  SynthPad({this.sound, this.bpm});
}
