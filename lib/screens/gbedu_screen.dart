import 'package:flutter/material.dart';
import 'package:gbedu/components/bass_pad.dart';
import 'package:gbedu/components/vocal_pad.dart';
import 'package:gbedu/components/beat_pad.dart';
import 'package:gbedu/components/perc_pad.dart';
import 'package:gbedu/components/synth_pad.dart';
import 'package:gbedu/components/fx_pad.dart';

class GbeduScreen extends StatefulWidget {
  @override
  _GbeduScreenState createState() => _GbeduScreenState();
}

class _GbeduScreenState extends State<GbeduScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gbedu')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  BeatPad(sound: 'beat/beat1.wav', bpm: 100),
                  BeatPad(sound: 'beat/beat2.wav', bpm: 100),
                  BeatPad(sound: 'beat/beat3.wav', bpm: 100),
                  BeatPad(sound: 'beat/beat4.wav', bpm: 100),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  BassPad(sound: 'bass/bass1.wav', bpm: 100),
                  BassPad(sound: 'bass/bass2.wav', bpm: 100),
                  BassPad(sound: 'bass/bass3.wav', bpm: 100),
                  BassPad(sound: 'bass/bass4.wav', bpm: 100),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  PercPad(sound: 'perc/perc1.wav', bpm: 100),
                  PercPad(sound: 'perc/perc2.wav', bpm: 100),
                  PercPad(sound: 'perc/perc3.wav', bpm: 100),
                  PercPad(sound: 'perc/perc4.wav', bpm: 100),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  SynthPad(sound: 'synth/synth1.wav', bpm: 100),
                  SynthPad(sound: 'synth/synth2.wav', bpm: 100),
                  SynthPad(sound: 'synth/synth3.wav', bpm: 100),
                  SynthPad(sound: 'synth/synth4.wav', bpm: 100),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  FXPad(sound: 'fx/fx1.wav', bpm: 100),
                  FXPad(sound: 'fx/fx2.wav', bpm: 100),
                  FXPad(sound: 'fx/fx3.wav', bpm: 100),
                  FXPad(sound: 'fx/fx4.wav', bpm: 100),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  VocalPad(sound: 'vox/vox1.wav', bpm: 100),
                  VocalPad(sound: 'vox/vox2.wav', bpm: 100),
                  VocalPad(sound: 'vox/vox3.wav', bpm: 100),
                  VocalPad(sound: 'vox/vox4.wav', bpm: 100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
