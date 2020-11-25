// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'button_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ButtonModelTearOff {
  const _$ButtonModelTearOff();

// ignore: unused_element
  _ButtonModel call(
      {Color buttonColor = const Color(0xFFCDDC39),
      String buttonTitle = 'start'}) {
    return _ButtonModel(
      buttonColor: buttonColor,
      buttonTitle: buttonTitle,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ButtonModel = _$ButtonModelTearOff();

/// @nodoc
mixin _$ButtonModel {
  Color get buttonColor;
  String get buttonTitle;

  $ButtonModelCopyWith<ButtonModel> get copyWith;
}

/// @nodoc
abstract class $ButtonModelCopyWith<$Res> {
  factory $ButtonModelCopyWith(
          ButtonModel value, $Res Function(ButtonModel) then) =
      _$ButtonModelCopyWithImpl<$Res>;
  $Res call({Color buttonColor, String buttonTitle});
}

/// @nodoc
class _$ButtonModelCopyWithImpl<$Res> implements $ButtonModelCopyWith<$Res> {
  _$ButtonModelCopyWithImpl(this._value, this._then);

  final ButtonModel _value;
  // ignore: unused_field
  final $Res Function(ButtonModel) _then;

  @override
  $Res call({
    Object buttonColor = freezed,
    Object buttonTitle = freezed,
  }) {
    return _then(_value.copyWith(
      buttonColor:
          buttonColor == freezed ? _value.buttonColor : buttonColor as Color,
      buttonTitle:
          buttonTitle == freezed ? _value.buttonTitle : buttonTitle as String,
    ));
  }
}

/// @nodoc
abstract class _$ButtonModelCopyWith<$Res>
    implements $ButtonModelCopyWith<$Res> {
  factory _$ButtonModelCopyWith(
          _ButtonModel value, $Res Function(_ButtonModel) then) =
      __$ButtonModelCopyWithImpl<$Res>;
  @override
  $Res call({Color buttonColor, String buttonTitle});
}

/// @nodoc
class __$ButtonModelCopyWithImpl<$Res> extends _$ButtonModelCopyWithImpl<$Res>
    implements _$ButtonModelCopyWith<$Res> {
  __$ButtonModelCopyWithImpl(
      _ButtonModel _value, $Res Function(_ButtonModel) _then)
      : super(_value, (v) => _then(v as _ButtonModel));

  @override
  _ButtonModel get _value => super._value as _ButtonModel;

  @override
  $Res call({
    Object buttonColor = freezed,
    Object buttonTitle = freezed,
  }) {
    return _then(_ButtonModel(
      buttonColor:
          buttonColor == freezed ? _value.buttonColor : buttonColor as Color,
      buttonTitle:
          buttonTitle == freezed ? _value.buttonTitle : buttonTitle as String,
    ));
  }
}

/// @nodoc
class _$_ButtonModel implements _ButtonModel {
  _$_ButtonModel(
      {this.buttonColor = const Color(0xFFCDDC39), this.buttonTitle = 'start'})
      : assert(buttonColor != null),
        assert(buttonTitle != null);

  @JsonKey(defaultValue: const Color(0xFFCDDC39))
  @override
  final Color buttonColor;
  @JsonKey(defaultValue: 'start')
  @override
  final String buttonTitle;

  @override
  String toString() {
    return 'ButtonModel(buttonColor: $buttonColor, buttonTitle: $buttonTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ButtonModel &&
            (identical(other.buttonColor, buttonColor) ||
                const DeepCollectionEquality()
                    .equals(other.buttonColor, buttonColor)) &&
            (identical(other.buttonTitle, buttonTitle) ||
                const DeepCollectionEquality()
                    .equals(other.buttonTitle, buttonTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(buttonColor) ^
      const DeepCollectionEquality().hash(buttonTitle);

  @override
  _$ButtonModelCopyWith<_ButtonModel> get copyWith =>
      __$ButtonModelCopyWithImpl<_ButtonModel>(this, _$identity);
}

abstract class _ButtonModel implements ButtonModel {
  factory _ButtonModel({Color buttonColor, String buttonTitle}) =
      _$_ButtonModel;

  @override
  Color get buttonColor;
  @override
  String get buttonTitle;
  @override
  _$ButtonModelCopyWith<_ButtonModel> get copyWith;
}
