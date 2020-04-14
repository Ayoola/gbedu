import 'dart:async';

class BeatTimeKeeper {
  final oneSec = const Duration(seconds: 1);
  int _currentBeatTime = 0;

  int getCurrentBeatTime() => this._currentBeatTime;

  void loopBeatTime() {
    Timer.periodic(oneSec, (Timer t) {
      this._currentBeatTime < 10 ? print(this._currentBeatTime++) : this._currentBeatTime = 1;
    });
  }
}
