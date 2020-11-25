import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class UserState with _$UserState {
  factory UserState({
    data,
  }) = _UserState;
}
