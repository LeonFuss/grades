// GENERATED CODE - DO NOT MODIFY BY HAND
//ignore_for_file: non_constant_identifier_names

part of 'grades_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************


_$_GradesDTO _$_$_GradesDTOFromJson(Map<String, dynamic> json) {
  return _$_GradesDTO(
    value: json['value'] as int,
    type: json['type'] as String,
    description: json['description'] as String,
    subjectId: json['subjectId'] as String,
    term: json['term'] as int,
  );
}

Map<String, dynamic> _$_$_GradesDTOToJson(_$_GradesDTO instance) =>
    <String, dynamic>{
      'value': instance.value,
      'type': instance.type,
      'description': instance.description,
      'subjectId': instance.subjectId,
      'term': instance.term,
    };
