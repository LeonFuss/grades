// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'subject.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SubjectTearOff {
  const _$SubjectTearOff();

  _Subject call(
      {@required UniqueId id,
      @required SubjectName name,
      @required Average average,
      @required Average oralAverage,
      @required Average writtenAverage,
      @required int position,
      @required Term term}) {
    return _Subject(
      id: id,
      name: name,
      average: average,
      oralAverage: oralAverage,
      writtenAverage: writtenAverage,
      position: position,
      term: term,
    );
  }
}

// ignore: unused_element
const $Subject = _$SubjectTearOff();

mixin _$Subject {
  UniqueId get id;
  SubjectName get name;
  Average get average;
  Average get oralAverage;
  Average get writtenAverage;
  int get position;
  Term get term;

  $SubjectCopyWith<Subject> get copyWith;
}

abstract class $SubjectCopyWith<$Res> {
  factory $SubjectCopyWith(Subject value, $Res Function(Subject) then) =
      _$SubjectCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      SubjectName name,
      Average average,
      Average oralAverage,
      Average writtenAverage,
      int position,
      Term term});
}

class _$SubjectCopyWithImpl<$Res> implements $SubjectCopyWith<$Res> {
  _$SubjectCopyWithImpl(this._value, this._then);

  final Subject _value;
  // ignore: unused_field
  final $Res Function(Subject) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object average = freezed,
    Object oralAverage = freezed,
    Object writtenAverage = freezed,
    Object position = freezed,
    Object term = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as SubjectName,
      average: average == freezed ? _value.average : average as Average,
      oralAverage:
          oralAverage == freezed ? _value.oralAverage : oralAverage as Average,
      writtenAverage: writtenAverage == freezed
          ? _value.writtenAverage
          : writtenAverage as Average,
      position: position == freezed ? _value.position : position as int,
      term: term == freezed ? _value.term : term as Term,
    ));
  }
}

abstract class _$SubjectCopyWith<$Res> implements $SubjectCopyWith<$Res> {
  factory _$SubjectCopyWith(_Subject value, $Res Function(_Subject) then) =
      __$SubjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      SubjectName name,
      Average average,
      Average oralAverage,
      Average writtenAverage,
      int position,
      Term term});
}

class __$SubjectCopyWithImpl<$Res> extends _$SubjectCopyWithImpl<$Res>
    implements _$SubjectCopyWith<$Res> {
  __$SubjectCopyWithImpl(_Subject _value, $Res Function(_Subject) _then)
      : super(_value, (v) => _then(v as _Subject));

  @override
  _Subject get _value => super._value as _Subject;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object average = freezed,
    Object oralAverage = freezed,
    Object writtenAverage = freezed,
    Object position = freezed,
    Object term = freezed,
  }) {
    return _then(_Subject(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as SubjectName,
      average: average == freezed ? _value.average : average as Average,
      oralAverage:
          oralAverage == freezed ? _value.oralAverage : oralAverage as Average,
      writtenAverage: writtenAverage == freezed
          ? _value.writtenAverage
          : writtenAverage as Average,
      position: position == freezed ? _value.position : position as int,
      term: term == freezed ? _value.term : term as Term,
    ));
  }
}

class _$_Subject extends _Subject {
  const _$_Subject(
      {@required this.id,
      @required this.name,
      @required this.average,
      @required this.oralAverage,
      @required this.writtenAverage,
      @required this.position,
      @required this.term})
      : assert(id != null),
        assert(name != null),
        assert(average != null),
        assert(oralAverage != null),
        assert(writtenAverage != null),
        assert(position != null),
        assert(term != null),
        super._();

  @override
  final UniqueId id;
  @override
  final SubjectName name;
  @override
  final Average average;
  @override
  final Average oralAverage;
  @override
  final Average writtenAverage;
  @override
  final int position;
  @override
  final Term term;

  @override
  String toString() {
    return 'Subject(id: $id, name: $name, average: $average, oralAverage: $oralAverage, writtenAverage: $writtenAverage, position: $position, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Subject &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.average, average) ||
                const DeepCollectionEquality()
                    .equals(other.average, average)) &&
            (identical(other.oralAverage, oralAverage) ||
                const DeepCollectionEquality()
                    .equals(other.oralAverage, oralAverage)) &&
            (identical(other.writtenAverage, writtenAverage) ||
                const DeepCollectionEquality()
                    .equals(other.writtenAverage, writtenAverage)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(average) ^
      const DeepCollectionEquality().hash(oralAverage) ^
      const DeepCollectionEquality().hash(writtenAverage) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(term);

  @override
  _$SubjectCopyWith<_Subject> get copyWith =>
      __$SubjectCopyWithImpl<_Subject>(this, _$identity);
}

abstract class _Subject extends Subject {
  const _Subject._() : super._();
  const factory _Subject(
      {@required UniqueId id,
      @required SubjectName name,
      @required Average average,
      @required Average oralAverage,
      @required Average writtenAverage,
      @required int position,
      @required Term term}) = _$_Subject;

  @override
  UniqueId get id;
  @override
  SubjectName get name;
  @override
  Average get average;
  @override
  Average get oralAverage;
  @override
  Average get writtenAverage;
  @override
  int get position;
  @override
  Term get term;
  @override
  _$SubjectCopyWith<_Subject> get copyWith;
}
