// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'timetable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TimetableTearOff {
  const _$TimetableTearOff();

  _Timetable call(
      {@required UniqueId id,
      @required LessonDuration lessonDuration,
      @required BreakDurations breakDuration,
      @required BreakPositions breakPosition}) {
    return _Timetable(
      id: id,
      lessonDuration: lessonDuration,
      breakDuration: breakDuration,
      breakPosition: breakPosition,
    );
  }
}

// ignore: unused_element
const $Timetable = _$TimetableTearOff();

mixin _$Timetable {
  UniqueId get id;
  LessonDuration get lessonDuration;
  BreakDurations get breakDuration;
  BreakPositions get breakPosition;

  $TimetableCopyWith<Timetable> get copyWith;
}

abstract class $TimetableCopyWith<$Res> {
  factory $TimetableCopyWith(Timetable value, $Res Function(Timetable) then) =
      _$TimetableCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      LessonDuration lessonDuration,
      BreakDurations breakDuration,
      BreakPositions breakPosition});
}

class _$TimetableCopyWithImpl<$Res> implements $TimetableCopyWith<$Res> {
  _$TimetableCopyWithImpl(this._value, this._then);

  final Timetable _value;
  // ignore: unused_field
  final $Res Function(Timetable) _then;

  @override
  $Res call({
    Object id = freezed,
    Object lessonDuration = freezed,
    Object breakDuration = freezed,
    Object breakPosition = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      lessonDuration: lessonDuration == freezed
          ? _value.lessonDuration
          : lessonDuration as LessonDuration,
      breakDuration: breakDuration == freezed
          ? _value.breakDuration
          : breakDuration as BreakDurations,
      breakPosition: breakPosition == freezed
          ? _value.breakPosition
          : breakPosition as BreakPositions,
    ));
  }
}

abstract class _$TimetableCopyWith<$Res> implements $TimetableCopyWith<$Res> {
  factory _$TimetableCopyWith(
          _Timetable value, $Res Function(_Timetable) then) =
      __$TimetableCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      LessonDuration lessonDuration,
      BreakDurations breakDuration,
      BreakPositions breakPosition});
}

class __$TimetableCopyWithImpl<$Res> extends _$TimetableCopyWithImpl<$Res>
    implements _$TimetableCopyWith<$Res> {
  __$TimetableCopyWithImpl(_Timetable _value, $Res Function(_Timetable) _then)
      : super(_value, (v) => _then(v as _Timetable));

  @override
  _Timetable get _value => super._value as _Timetable;

  @override
  $Res call({
    Object id = freezed,
    Object lessonDuration = freezed,
    Object breakDuration = freezed,
    Object breakPosition = freezed,
  }) {
    return _then(_Timetable(
      id: id == freezed ? _value.id : id as UniqueId,
      lessonDuration: lessonDuration == freezed
          ? _value.lessonDuration
          : lessonDuration as LessonDuration,
      breakDuration: breakDuration == freezed
          ? _value.breakDuration
          : breakDuration as BreakDurations,
      breakPosition: breakPosition == freezed
          ? _value.breakPosition
          : breakPosition as BreakPositions,
    ));
  }
}

class _$_Timetable extends _Timetable with DiagnosticableTreeMixin {
  const _$_Timetable(
      {@required this.id,
      @required this.lessonDuration,
      @required this.breakDuration,
      @required this.breakPosition})
      : assert(id != null),
        assert(lessonDuration != null),
        assert(breakDuration != null),
        assert(breakPosition != null),
        super._();

  @override
  final UniqueId id;
  @override
  final LessonDuration lessonDuration;
  @override
  final BreakDurations breakDuration;
  @override
  final BreakPositions breakPosition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Timetable(id: $id, lessonDuration: $lessonDuration, breakDuration: $breakDuration, breakPosition: $breakPosition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Timetable'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('lessonDuration', lessonDuration))
      ..add(DiagnosticsProperty('breakDuration', breakDuration))
      ..add(DiagnosticsProperty('breakPosition', breakPosition));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Timetable &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.lessonDuration, lessonDuration) ||
                const DeepCollectionEquality()
                    .equals(other.lessonDuration, lessonDuration)) &&
            (identical(other.breakDuration, breakDuration) ||
                const DeepCollectionEquality()
                    .equals(other.breakDuration, breakDuration)) &&
            (identical(other.breakPosition, breakPosition) ||
                const DeepCollectionEquality()
                    .equals(other.breakPosition, breakPosition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(lessonDuration) ^
      const DeepCollectionEquality().hash(breakDuration) ^
      const DeepCollectionEquality().hash(breakPosition);

  @override
  _$TimetableCopyWith<_Timetable> get copyWith =>
      __$TimetableCopyWithImpl<_Timetable>(this, _$identity);
}

abstract class _Timetable extends Timetable {
  const _Timetable._() : super._();
  const factory _Timetable(
      {@required UniqueId id,
      @required LessonDuration lessonDuration,
      @required BreakDurations breakDuration,
      @required BreakPositions breakPosition}) = _$_Timetable;

  @override
  UniqueId get id;
  @override
  LessonDuration get lessonDuration;
  @override
  BreakDurations get breakDuration;
  @override
  BreakPositions get breakPosition;
  @override
  _$TimetableCopyWith<_Timetable> get copyWith;
}
