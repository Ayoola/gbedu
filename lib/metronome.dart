import 'dart:async';

class Metronome {
  int _beatsPerMinute;
  int _currentBeat = 1;

  void setBeatsPerMinute(int bpm) => this._beatsPerMinute = bpm;

  void loopBeatTime() {
    final int timeBetweenBeats =
        ((60 * 1000) / (this._beatsPerMinute)).round(); //milliseconds (60s/min * 1000ms/s * 1min/BPM)
    final Duration durationBetweenBeats = Duration(milliseconds: timeBetweenBeats);
    Timer.periodic(durationBetweenBeats, (Timer t) {
      this._currentBeat < 8 ? print(this._currentBeat++) : this._currentBeat = 1;
    });
  }

  bool isOnBeat() {
    return (this._currentBeat == 1) ? true : false;
  }
}
