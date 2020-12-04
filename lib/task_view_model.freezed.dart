// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TaskViewModelTearOff {
  const _$TaskViewModelTearOff();

// ignore: unused_element
  _TaskViewModel call({List<dynamic> sortedTaskList}) {
    return _TaskViewModel(
      sortedTaskList: sortedTaskList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TaskViewModel = _$TaskViewModelTearOff();

/// @nodoc
mixin _$TaskViewModel {
  List<dynamic> get sortedTaskList;

  $TaskViewModelCopyWith<TaskViewModel> get copyWith;
}

/// @nodoc
abstract class $TaskViewModelCopyWith<$Res> {
  factory $TaskViewModelCopyWith(
          TaskViewModel value, $Res Function(TaskViewModel) then) =
      _$TaskViewModelCopyWithImpl<$Res>;
  $Res call({List<dynamic> sortedTaskList});
}

/// @nodoc
class _$TaskViewModelCopyWithImpl<$Res>
    implements $TaskViewModelCopyWith<$Res> {
  _$TaskViewModelCopyWithImpl(this._value, this._then);

  final TaskViewModel _value;
  // ignore: unused_field
  final $Res Function(TaskViewModel) _then;

  @override
  $Res call({
    Object sortedTaskList = freezed,
  }) {
    return _then(_value.copyWith(
      sortedTaskList: sortedTaskList == freezed
          ? _value.sortedTaskList
          : sortedTaskList as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$TaskViewModelCopyWith<$Res>
    implements $TaskViewModelCopyWith<$Res> {
  factory _$TaskViewModelCopyWith(
          _TaskViewModel value, $Res Function(_TaskViewModel) then) =
      __$TaskViewModelCopyWithImpl<$Res>;
  @override
  $Res call({List<dynamic> sortedTaskList});
}

/// @nodoc
class __$TaskViewModelCopyWithImpl<$Res>
    extends _$TaskViewModelCopyWithImpl<$Res>
    implements _$TaskViewModelCopyWith<$Res> {
  __$TaskViewModelCopyWithImpl(
      _TaskViewModel _value, $Res Function(_TaskViewModel) _then)
      : super(_value, (v) => _then(v as _TaskViewModel));

  @override
  _TaskViewModel get _value => super._value as _TaskViewModel;

  @override
  $Res call({
    Object sortedTaskList = freezed,
  }) {
    return _then(_TaskViewModel(
      sortedTaskList: sortedTaskList == freezed
          ? _value.sortedTaskList
          : sortedTaskList as List<dynamic>,
    ));
  }
}

/// @nodoc
class _$_TaskViewModel implements _TaskViewModel {
  _$_TaskViewModel({this.sortedTaskList});

  @override
  final List<dynamic> sortedTaskList;

  @override
  String toString() {
    return 'TaskViewModel(sortedTaskList: $sortedTaskList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TaskViewModel &&
            (identical(other.sortedTaskList, sortedTaskList) ||
                const DeepCollectionEquality()
                    .equals(other.sortedTaskList, sortedTaskList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sortedTaskList);

  @override
  _$TaskViewModelCopyWith<_TaskViewModel> get copyWith =>
      __$TaskViewModelCopyWithImpl<_TaskViewModel>(this, _$identity);
}

abstract class _TaskViewModel implements TaskViewModel {
  factory _TaskViewModel({List<dynamic> sortedTaskList}) = _$_TaskViewModel;

  @override
  List<dynamic> get sortedTaskList;
  @override
  _$TaskViewModelCopyWith<_TaskViewModel> get copyWith;
}
