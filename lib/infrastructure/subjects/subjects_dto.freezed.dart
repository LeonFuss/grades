// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'subjects_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SubjectsDTO _$SubjectsDTOFromJson(Map<String, dynamic> json) {
  return _SubjectsDTO.fromJson(json);
}

class _$SubjectsDTOTearOff {
  const _$SubjectsDTOTearOff();

  _SubjectsDTO call(
      {@json.JsonKey(ignore: true) String id,
      @required String name,
      @required double average,
      @required double oralAverage,
      @required double writtenAverage,
      @required int position,
      @required int term}) {
    return _SubjectsDTO(
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
const $SubjectsDTO = _$SubjectsDTOTearOff();

mixin _$SubjectsDTO {
  @json.JsonKey(ignore: true)
  String get id;
  String get name;
  double get average;
  double get oralAverage;
  double get writtenAverage;
  int get position;
  int get term;

  Map<String, dynamic> toJson();
  $SubjectsDTOCopyWith<SubjectsDTO> get copyWith;
}

abstract class $SubjectsDTOCopyWith<$Res> {
  factory $SubjectsDTOCopyWith(
          SubjectsDTO value, $Res Function(SubjectsDTO) then) =
      _$SubjectsDTOCopyWithImpl<$Res>;
  $Res call(
      {@json.JsonKey(ignore: true) String id,
      String name,
      double average,
      double oralAverage,
      double writtenAverage,
      int position,
      int term});
}

class _$SubjectsDTOCopyWithImpl<$Res> implements $SubjectsDTOCopyWith<$Res> {
  _$SubjectsDTOCopyWithImpl(this._value, this._then);

  final SubjectsDTO _value;
  // ignore: unused_field
  final $Res Function(SubjectsDTO) _then;

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
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      average: average == freezed ? _value.average : average as double,
      oralAverage:
          oralAverage == freezed ? _value.oralAverage : oralAverage as double,
      writtenAverage: writtenAverage == freezed
          ? _value.writtenAverage
          : writtenAverage as double,
      position: position == freezed ? _value.position : position as int,
      term: term == freezed ? _value.term : term as int,
    ));
  }
}

abstract class _$SubjectsDTOCopyWith<$Res>
    implements $SubjectsDTOCopyWith<$Res> {
  factory _$SubjectsDTOCopyWith(
          _SubjectsDTO value, $Res Function(_SubjectsDTO) then) =
      __$SubjectsDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@json.JsonKey(ignore: true) String id,
      String name,
      double average,
      double oralAverage,
      double writtenAverage,
      int position,
      int term});
}

class __$SubjectsDTOCopyWithImpl<$Res> extends _$SubjectsDTOCopyWithImpl<$Res>
    implements _$SubjectsDTOCopyWith<$Res> {
  __$SubjectsDTOCopyWithImpl(
      _SubjectsDTO _value, $Res Function(_SubjectsDTO) _then)
      : super(_value, (v) => _then(v as _SubjectsDTO));

  @override
  _SubjectsDTO get _value => super._value as _SubjectsDTO;

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
    return _then(_SubjectsDTO(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      average: average == freezed ? _value.average : average as double,
      oralAverage:
          oralAverage == freezed ? _value.oralAverage : oralAverage as double,
      writtenAverage: writtenAverage == freezed
          ? _value.writtenAverage
          : writtenAverage as double,
      position: position == freezed ? _value.position : position as int,
      term: term == freezed ? _value.term : term as int,
    ));
  }
}

@JsonSerializable()
class _$_SubjectsDTO extends _SubjectsDTO {
  const _$_SubjectsDTO(
      {@json.JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.average,
      @required this.oralAverage,
      @required this.writtenAverage,
      @required this.position,
      @required this.term})
      : assert(name != null),
        assert(average != null),
        assert(oralAverage != null),
        assert(writtenAverage != null),
        assert(position != null),
        assert(term != null),
        super._();

  factory _$_SubjectsDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_SubjectsDTOFromJson(json);

  @override
  @json.JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final double average;
  @override
  final double oralAverage;
  @override
  final double writtenAverage;
  @override
  final int position;
  @override
  final int term;

  @override
  String toString() {
    return 'SubjectsDTO(id: $id, name: $name, average: $average, oralAverage: $oralAverage, writtenAverage: $writtenAverage, position: $position, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubjectsDTO &&
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
  _$SubjectsDTOCopyWith<_SubjectsDTO> get copyWith =>
      __$SubjectsDTOCopyWithImpl<_SubjectsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SubjectsDTOToJson(this);
  }
}

abstract class _SubjectsDTO extends SubjectsDTO {
  const _SubjectsDTO._() : super._();
  const factory _SubjectsDTO(
      {@json.JsonKey(ignore: true) String id,
      @required String name,
      @required double average,
      @required double oralAverage,
      @required double writtenAverage,
      @required int position,
      @required int term}) = _$_SubjectsDTO;

  factory _SubjectsDTO.fromJson(Map<String, dynamic> json) =
      _$_SubjectsDTO.fromJson;

  @override
  @json.JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  double get average;
  @override
  double get oralAverage;
  @override
  double get writtenAverage;
  @override
  int get position;
  @override
  int get term;
  @override
  _$SubjectsDTOCopyWith<_SubjectsDTO> get copyWith;
}
