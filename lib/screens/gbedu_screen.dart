import 'package:flutter/material.dart';
import 'package:gbedu/components/sound_pad.dart';
import 'package:gbedu/components/vocal_pad.dart';

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
                  SoundPad(sound: 'beat/beat1.wav', bpm: 100),
                  SoundPad(sound: 'beat/beat2.wav', bpm: 100),
                  SoundPad(sound: 'beat/beat3.wav', bpm: 100),
                  SoundPad(sound: 'beat/beat4.wav', bpm: 100),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  SoundPad(sound: 'beat/beat1.wav', bpm: 100),
                  SoundPad(sound: 'beat/beat2.wav', bpm: 100),
                  SoundPad(sound: 'beat/beat3.wav', bpm: 100),
                  SoundPad(sound: 'beat/beat4.wav', bpm: 100),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  SoundPad(sound: 'beat/beat1.wav', bpm: 100),
                  SoundPad(sound: 'beat/beat2.wav', bpm: 100),
                  SoundPad(sound: 'beat/beat3.wav', bpm: 100),
                  SoundPad(sound: 'beat/beat4.wav', bpm: 100),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  SoundPad(sound: 'beat/beat1.wav', bpm: 100),
                  SoundPad(sound: 'beat/beat2.wav', bpm: 100),
                  SoundPad(sound: 'beat/beat3.wav', bpm: 100),
                  SoundPad(sound: 'beat/beat4.wav', bpm: 100),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  SoundPad(sound: 'beat/beat1.wav', bpm: 100),
                  SoundPad(sound: 'beat/beat2.wav', bpm: 100),
                  SoundPad(sound: 'beat/beat3.wav', bpm: 100),
                  SoundPad(sound: 'beat/beat4.wav', bpm: 100),
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
