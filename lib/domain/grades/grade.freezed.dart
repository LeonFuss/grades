// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'grade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GradeTearOff {
  const _$GradeTearOff();

  _Grade call(
      {@required DateTime creationTime,
      @required UniqueId id,
      @required GradeValue value,
      @required GradeType type,
      @required GradeDescription description,
      @required UniqueId subjectId,
      @required Term term}) {
    return _Grade(
      creationTime: creationTime,
      id: id,
      value: value,
      type: type,
      description: description,
      subjectId: subjectId,
      term: term,
    );
  }
}

// ignore: unused_element
const $Grade = _$GradeTearOff();

mixin _$Grade {
  DateTime get creationTime;
  UniqueId get id;
  GradeValue get value;
  GradeType get type;
  GradeDescription get description;
  UniqueId get subjectId;
  Term get term;

  $GradeCopyWith<Grade> get copyWith;
}

abstract class $GradeCopyWith<$Res> {
  factory $GradeCopyWith(Grade value, $Res Function(Grade) then) =
      _$GradeCopyWithImpl<$Res>;
  $Res call(
      {DateTime creationTime,
      UniqueId id,
      GradeValue value,
      GradeType type,
      GradeDescription description,
      UniqueId subjectId,
      Term term});
}

class _$GradeCopyWithImpl<$Res> implements $GradeCopyWith<$Res> {
  _$GradeCopyWithImpl(this._value, this._then);

  final Grade _value;
  // ignore: unused_field
  final $Res Function(Grade) _then;

  @override
  $Res call({
    Object creationTime = freezed,
    Object id = freezed,
    Object value = freezed,
    Object type = freezed,
    Object description = freezed,
    Object subjectId = freezed,
    Object term = freezed,
  }) {
    return _then(_value.copyWith(
      creationTime: creationTime == freezed
          ? _value.creationTime
          : creationTime as DateTime,
      id: id == freezed ? _value.id : id as UniqueId,
      value: value == freezed ? _value.value : value as GradeValue,
      type: type == freezed ? _value.type : type as GradeType,
      description: description == freezed
          ? _value.description
          : description as GradeDescription,
      subjectId:
          subjectId == freezed ? _value.subjectId : subjectId as UniqueId,
      term: term == freezed ? _value.term : term as Term,
    ));
  }
}

abstract class _$GradeCopyWith<$Res> implements $GradeCopyWith<$Res> {
  factory _$GradeCopyWith(_Grade value, $Res Function(_Grade) then) =
      __$GradeCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime creationTime,
      UniqueId id,
      GradeValue value,
      GradeType type,
      GradeDescription description,
      UniqueId subjectId,
      Term term});
}

class __$GradeCopyWithImpl<$Res> extends _$GradeCopyWithImpl<$Res>
    implements _$GradeCopyWith<$Res> {
  __$GradeCopyWithImpl(_Grade _value, $Res Function(_Grade) _then)
      : super(_value, (v) => _then(v as _Grade));

  @override
  _Grade get _value => super._value as _Grade;

  @override
  $Res call({
    Object creationTime = freezed,
    Object id = freezed,
    Object value = freezed,
    Object type = freezed,
    Object description = freezed,
    Object subjectId = freezed,
    Object term = freezed,
  }) {
    return _then(_Grade(
      creationTime: creationTime == freezed
          ? _value.creationTime
          : creationTime as DateTime,
      id: id == freezed ? _value.id : id as UniqueId,
      value: value == freezed ? _value.value : value as GradeValue,
      type: type == freezed ? _value.type : type as GradeType,
      description: description == freezed
          ? _value.description
          : description as GradeDescription,
      subjectId:
          subjectId == freezed ? _value.subjectId : subjectId as UniqueId,
      term: term == freezed ? _value.term : term as Term,
    ));
  }
}

class _$_Grade extends _Grade {
  const _$_Grade(
      {@required this.creationTime,
      @required this.id,
      @required this.value,
      @required this.type,
      @required this.description,
      @required this.subjectId,
      @required this.term})
      : assert(creationTime != null),
        assert(id != null),
        assert(value != null),
        assert(type != null),
        assert(description != null),
        assert(subjectId != null),
        assert(term != null),
        super._();

  @override
  final DateTime creationTime;
  @override
  final UniqueId id;
  @override
  final GradeValue value;
  @override
  final GradeType type;
  @override
  final GradeDescription description;
  @override
  final UniqueId subjectId;
  @override
  final Term term;

  @override
  String toString() {
    return 'Grade(creationTime: $creationTime, id: $id, value: $value, type: $type, description: $description, subjectId: $subjectId, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Grade &&
            (identical(other.creationTime, creationTime) ||
                const DeepCollectionEquality()
                    .equals(other.creationTime, creationTime)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.subjectId, subjectId) ||
                const DeepCollectionEquality()
                    .equals(other.subjectId, subjectId)) &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(creationTime) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(subjectId) ^
      const DeepCollectionEquality().hash(term);

  @override
  _$GradeCopyWith<_Grade> get copyWith =>
      __$GradeCopyWithImpl<_Grade>(this, _$identity);
}

abstract class _Grade extends Grade {
  const _Grade._() : super._();
  const factory _Grade(
      {@required DateTime creationTime,
      @required UniqueId id,
      @required GradeValue value,
      @required GradeType type,
      @required GradeDescription description,
      @required UniqueId subjectId,
      @required Term term}) = _$_Grade;

  @override
  DateTime get creationTime;
  @override
  UniqueId get id;
  @override
  GradeValue get value;
  @override
  GradeType get type;
  @override
  GradeDescription get description;
  @override
  UniqueId get subjectId;
  @override
  Term get term;
  @override
  _$GradeCopyWith<_Grade> get copyWith;
}
