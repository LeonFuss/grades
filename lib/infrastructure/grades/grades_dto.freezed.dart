// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'grades_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GradesDTO _$GradesDTOFromJson(Map<String, dynamic> json) {
  return _GradesDTO.fromJson(json);
}

class _$GradesDTOTearOff {
  const _$GradesDTOTearOff();

  _GradesDTO call(
      {@json.JsonKey(ignore: true) String id,
      @required DateTime creationTime,
      @required int value,
      @required String type,
      @required String description,
      @required String subjectId,
      @required int term}) {
    return _GradesDTO(
      id: id,
      creationTime: creationTime,
      value: value,
      type: type,
      description: description,
      subjectId: subjectId,
      term: term,
    );
  }
}

// ignore: unused_element
const $GradesDTO = _$GradesDTOTearOff();

mixin _$GradesDTO {
  @json.JsonKey(ignore: true)
  String get id;
  DateTime get creationTime;
  int get value;
  String get type;
  String get description;
  String get subjectId;
  int get term;

  Map<String, dynamic> toJson();
  $GradesDTOCopyWith<GradesDTO> get copyWith;
}

abstract class $GradesDTOCopyWith<$Res> {
  factory $GradesDTOCopyWith(GradesDTO value, $Res Function(GradesDTO) then) =
      _$GradesDTOCopyWithImpl<$Res>;
  $Res call(
      {@json.JsonKey(ignore: true) String id,
      DateTime creationTime,
      int value,
      String type,
      String description,
      String subjectId,
      int term});
}

class _$GradesDTOCopyWithImpl<$Res> implements $GradesDTOCopyWith<$Res> {
  _$GradesDTOCopyWithImpl(this._value, this._then);

  final GradesDTO _value;
  // ignore: unused_field
  final $Res Function(GradesDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object creationTime = freezed,
    Object value = freezed,
    Object type = freezed,
    Object description = freezed,
    Object subjectId = freezed,
    Object term = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      creationTime: creationTime == freezed
          ? _value.creationTime
          : creationTime as DateTime,
      value: value == freezed ? _value.value : value as int,
      type: type == freezed ? _value.type : type as String,
      description:
          description == freezed ? _value.description : description as String,
      subjectId: subjectId == freezed ? _value.subjectId : subjectId as String,
      term: term == freezed ? _value.term : term as int,
    ));
  }
}

abstract class _$GradesDTOCopyWith<$Res> implements $GradesDTOCopyWith<$Res> {
  factory _$GradesDTOCopyWith(
          _GradesDTO value, $Res Function(_GradesDTO) then) =
      __$GradesDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@json.JsonKey(ignore: true) String id,
      DateTime creationTime,
      int value,
      String type,
      String description,
      String subjectId,
      int term});
}

class __$GradesDTOCopyWithImpl<$Res> extends _$GradesDTOCopyWithImpl<$Res>
    implements _$GradesDTOCopyWith<$Res> {
  __$GradesDTOCopyWithImpl(_GradesDTO _value, $Res Function(_GradesDTO) _then)
      : super(_value, (v) => _then(v as _GradesDTO));

  @override
  _GradesDTO get _value => super._value as _GradesDTO;

  @override
  $Res call({
    Object id = freezed,
    Object creationTime = freezed,
    Object value = freezed,
    Object type = freezed,
    Object description = freezed,
    Object subjectId = freezed,
    Object term = freezed,
  }) {
    return _then(_GradesDTO(
      id: id == freezed ? _value.id : id as String,
      creationTime: creationTime == freezed
          ? _value.creationTime
          : creationTime as DateTime,
      value: value == freezed ? _value.value : value as int,
      type: type == freezed ? _value.type : type as String,
      description:
          description == freezed ? _value.description : description as String,
      subjectId: subjectId == freezed ? _value.subjectId : subjectId as String,
      term: term == freezed ? _value.term : term as int,
    ));
  }
}

@JsonSerializable()
class _$_GradesDTO extends _GradesDTO {
  const _$_GradesDTO(
      {@json.JsonKey(ignore: true) this.id,
      @required this.creationTime,
      @required this.value,
      @required this.type,
      @required this.description,
      @required this.subjectId,
      @required this.term})
      : assert(creationTime != null),
        assert(value != null),
        assert(type != null),
        assert(description != null),
        assert(subjectId != null),
        assert(term != null),
        super._();

  factory _$_GradesDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_GradesDTOFromJson(json);

  @override
  @json.JsonKey(ignore: true)
  final String id;
  @override
  final DateTime creationTime;
  @override
  final int value;
  @override
  final String type;
  @override
  final String description;
  @override
  final String subjectId;
  @override
  final int term;

  @override
  String toString() {
    return 'GradesDTO(id: $id, creationTime: $creationTime, value: $value, type: $type, description: $description, subjectId: $subjectId, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GradesDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.creationTime, creationTime) ||
                const DeepCollectionEquality()
                    .equals(other.creationTime, creationTime)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(creationTime) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(subjectId) ^
      const DeepCollectionEquality().hash(term);

  @override
  _$GradesDTOCopyWith<_GradesDTO> get copyWith =>
      __$GradesDTOCopyWithImpl<_GradesDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GradesDTOToJson(this);
  }
}

abstract class _GradesDTO extends GradesDTO {
  const _GradesDTO._() : super._();
  const factory _GradesDTO(
      {@json.JsonKey(ignore: true) String id,
      @required DateTime creationTime,
      @required int value,
      @required String type,
      @required String description,
      @required String subjectId,
      @required int term}) = _$_GradesDTO;

  factory _GradesDTO.fromJson(Map<String, dynamic> json) =
      _$_GradesDTO.fromJson;

  @override
  @json.JsonKey(ignore: true)
  String get id;
  @override
  DateTime get creationTime;
  @override
  int get value;
  @override
  String get type;
  @override
  String get description;
  @override
  String get subjectId;
  @override
  int get term;
  @override
  _$GradesDTOCopyWith<_GradesDTO> get copyWith;
}
