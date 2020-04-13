import 'package:flutter/material.dart';
import '../components/drum_pad.dart';

class GbeduScreen extends StatefulWidget {
  @override
  _GbeduScreenState createState() => _GbeduScreenState();
}

class _GbeduScreenState extends State<GbeduScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gbedu')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                DrumPad(drumPadColor: Colors.red, drumPadLabel: 'Drum', drumPadSound: 'drum.wav'),
                DrumPad(drumPadColor: Colors.blue, drumPadLabel: 'Bass', drumPadSound: 'bass.wav'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                DrumPad(drumPadColor: Colors.orange, drumPadLabel: 'Synth', drumPadSound: 'synth.wav'),
                DrumPad(drumPadColor: Colors.green, drumPadLabel: 'Vox', drumPadSound: 'vox.wav'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
