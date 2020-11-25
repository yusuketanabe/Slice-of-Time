// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'timer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TimerModelTearOff {
  const _$TimerModelTearOff();

// ignore: unused_element
  _TimerModel call({bool isStop = true, bool isDone = false, int count = 300}) {
    return _TimerModel(
      isStop: isStop,
      isDone: isDone,
      count: count,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TimerModel = _$TimerModelTearOff();

/// @nodoc
mixin _$TimerModel {
  bool get isStop;
  bool get isDone;
  int get count;

  $TimerModelCopyWith<TimerModel> get copyWith;
}

/// @nodoc
abstract class $TimerModelCopyWith<$Res> {
  factory $TimerModelCopyWith(
          TimerModel value, $Res Function(TimerModel) then) =
      _$TimerModelCopyWithImpl<$Res>;
  $Res call({bool isStop, bool isDone, int count});
}

/// @nodoc
class _$TimerModelCopyWithImpl<$Res> implements $TimerModelCopyWith<$Res> {
  _$TimerModelCopyWithImpl(this._value, this._then);

  final TimerModel _value;
  // ignore: unused_field
  final $Res Function(TimerModel) _then;

  @override
  $Res call({
    Object isStop = freezed,
    Object isDone = freezed,
    Object count = freezed,
  }) {
    return _then(_value.copyWith(
      isStop: isStop == freezed ? _value.isStop : isStop as bool,
      isDone: isDone == freezed ? _value.isDone : isDone as bool,
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

/// @nodoc
abstract class _$TimerModelCopyWith<$Res> implements $TimerModelCopyWith<$Res> {
  factory _$TimerModelCopyWith(
          _TimerModel value, $Res Function(_TimerModel) then) =
      __$TimerModelCopyWithImpl<$Res>;
  @override
  $Res call({bool isStop, bool isDone, int count});
}

/// @nodoc
class __$TimerModelCopyWithImpl<$Res> extends _$TimerModelCopyWithImpl<$Res>
    implements _$TimerModelCopyWith<$Res> {
  __$TimerModelCopyWithImpl(
      _TimerModel _value, $Res Function(_TimerModel) _then)
      : super(_value, (v) => _then(v as _TimerModel));

  @override
  _TimerModel get _value => super._value as _TimerModel;

  @override
  $Res call({
    Object isStop = freezed,
    Object isDone = freezed,
    Object count = freezed,
  }) {
    return _then(_TimerModel(
      isStop: isStop == freezed ? _value.isStop : isStop as bool,
      isDone: isDone == freezed ? _value.isDone : isDone as bool,
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

/// @nodoc
class _$_TimerModel implements _TimerModel {
  _$_TimerModel({this.isStop = true, this.isDone = false, this.count = 300})
      : assert(isStop != null),
        assert(isDone != null),
        assert(count != null);

  @JsonKey(defaultValue: true)
  @override
  final bool isStop;
  @JsonKey(defaultValue: false)
  @override
  final bool isDone;
  @JsonKey(defaultValue: 300)
  @override
  final int count;

  @override
  String toString() {
    return 'TimerModel(isStop: $isStop, isDone: $isDone, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimerModel &&
            (identical(other.isStop, isStop) ||
                const DeepCollectionEquality().equals(other.isStop, isStop)) &&
            (identical(other.isDone, isDone) ||
                const DeepCollectionEquality().equals(other.isDone, isDone)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isStop) ^
      const DeepCollectionEquality().hash(isDone) ^
      const DeepCollectionEquality().hash(count);

  @override
  _$TimerModelCopyWith<_TimerModel> get copyWith =>
      __$TimerModelCopyWithImpl<_TimerModel>(this, _$identity);
}

abstract class _TimerModel implements TimerModel {
  factory _TimerModel({bool isStop, bool isDone, int count}) = _$_TimerModel;

  @override
  bool get isStop;
  @override
  bool get isDone;
  @override
  int get count;
  @override
  _$TimerModelCopyWith<_TimerModel> get copyWith;
}
