import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

part 'button_model.freezed.dart';

@freezed
abstract class ButtonModel with _$ButtonModel {
  factory ButtonModel({
    @Default(Color(0xFFCDDC39)) Color buttonColor,
    @Default('start') String buttonTitle,
  }) = _ButtonModel;
}

class ButtonModelController extends StateNotifier<ButtonModel> {
  ButtonModelController() : super(ButtonModel());
  startButton() {
    state = state.copyWith(
      buttonColor: Color(0xFFCDDC39),
      buttonTitle: 'start',
    );
  }

  stopButton() {
    state = state.copyWith(
      buttonColor: Color(0xFFFF5722),
      buttonTitle: 'stop',
    );
  }

  addButton() {
    state = state.copyWith(
      buttonColor: Color(0xFF607D8B),
      buttonTitle: 'add 3',
    );
  }
}
