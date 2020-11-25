import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

part 'timer_model.freezed.dart';

@freezed
abstract class TimerModel with _$TimerModel {
  /*AnimationController controller;
  String get timerString {
    Duration duration = controller.duration * controller.value;
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }
  */
  factory TimerModel({
    @Default(true) bool isStop,
    @Default(false) bool isDone,
    @Default(300) int count,
  }) = _TimerModel;
}
/*
  TimerModel() : super(0);
  
  */

class TimerModelController extends StateNotifier<TimerModel> {
  TimerModelController() : super(TimerModel());
  Timer _timer;
  onTimer() {
    state = state.copyWith(isStop: false);
    _timer = Timer.periodic(
        Duration(seconds: 1),
        (timer) => {
              state = state.copyWith(count: state.count - 1),
              if (state.count == 290)
                {state = state.copyWith(isDone: true), _timer.cancel()}
            });
  }

// TODO: キャンセルはできたが、一時停止から再開ができない
// isDone: trueにすることで解決できた
  stopTime() {
    state = state.copyWith(isStop: true);
    _timer.cancel();
  }

  addTime() {
    state = state.copyWith(count: state.count + 180, isDone: false);
  }
}
