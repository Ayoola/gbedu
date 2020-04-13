import 'package:flutter/material.dart';
import '../components/drum_pad.dart';
import 'package:gbedu/components/gapless_drum_pad.dart';

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
                  GaplessDrumPad(drumPadColor: Colors.red, drumPadLabel: 'Beat1', drumPadSound: 'beat/beat1.wav'),
                  GaplessDrumPad(drumPadColor: Colors.red, drumPadLabel: 'Beat2', drumPadSound: 'beat/beat2.wav'),
                  GaplessDrumPad(drumPadColor: Colors.red, drumPadLabel: 'Beat', drumPadSound: 'beat/beat3.wav'),
                  GaplessDrumPad(drumPadColor: Colors.red, drumPadLabel: 'Beat', drumPadSound: 'beat/beat4.wav'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  GaplessDrumPad(drumPadColor: Colors.blue, drumPadLabel: 'Bass', drumPadSound: 'bass/bass1.wav'),
                  GaplessDrumPad(drumPadColor: Colors.blue, drumPadLabel: 'Bass', drumPadSound: 'bass/bass2.wav'),
                  GaplessDrumPad(drumPadColor: Colors.blue, drumPadLabel: 'Bass', drumPadSound: 'bass/bass3.wav'),
                  GaplessDrumPad(drumPadColor: Colors.blue, drumPadLabel: 'Bass', drumPadSound: 'bass/bass4.wav'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  GaplessDrumPad(drumPadColor: Colors.green, drumPadLabel: 'Perc', drumPadSound: 'perc/perc1.wav'),
                  GaplessDrumPad(drumPadColor: Colors.green, drumPadLabel: 'Perc', drumPadSound: 'perc/perc2.wav'),
                  GaplessDrumPad(drumPadColor: Colors.green, drumPadLabel: 'Perc', drumPadSound: 'perc/perc3.wav'),
                  GaplessDrumPad(drumPadColor: Colors.green, drumPadLabel: 'Perc', drumPadSound: 'perc/perc4.wav'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  GaplessDrumPad(drumPadColor: Colors.teal, drumPadLabel: 'Synth', drumPadSound: 'synth/synth1.wav'),
                  GaplessDrumPad(drumPadColor: Colors.teal, drumPadLabel: 'Synth', drumPadSound: 'synth/synth2.wav'),
                  GaplessDrumPad(drumPadColor: Colors.teal, drumPadLabel: 'Synth', drumPadSound: 'synth/synth3.wav'),
                  GaplessDrumPad(drumPadColor: Colors.teal, drumPadLabel: 'Synth', drumPadSound: 'synth/synth4.wav'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  GaplessDrumPad(drumPadColor: Colors.orange, drumPadLabel: 'FX', drumPadSound: 'fx/fx1.wav'),
                  GaplessDrumPad(drumPadColor: Colors.orange, drumPadLabel: 'FX', drumPadSound: 'fx/fx2.wav'),
                  GaplessDrumPad(drumPadColor: Colors.orange, drumPadLabel: 'FX', drumPadSound: 'fx/fx3.wav'),
                  GaplessDrumPad(drumPadColor: Colors.orange, drumPadLabel: 'FX', drumPadSound: 'fx/fx4.wav'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  GaplessDrumPad(drumPadColor: Colors.purple, drumPadLabel: 'Vox', drumPadSound: 'vox/vox1.wav'),
                  GaplessDrumPad(drumPadColor: Colors.purple, drumPadLabel: 'Vox', drumPadSound: 'vox/vox2.wav'),
                  GaplessDrumPad(drumPadColor: Colors.purple, drumPadLabel: 'Vox', drumPadSound: 'vox/vox3.wav'),
                  GaplessDrumPad(drumPadColor: Colors.purple, drumPadLabel: 'Vox', drumPadSound: 'vox/vox4.wav'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
