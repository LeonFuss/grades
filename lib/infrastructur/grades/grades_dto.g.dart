// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grades_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GradesDTO _$_$_GradesDTOFromJson(Map<String, dynamic> json) {
  return _$_GradesDTO(
    creationTime: json['creationTime'] == null
        ? null
        : DateTime.parse(json['creationTime'] as String),
    value: json['value'] as int,
    type: json['type'] as String,
    description: json['description'] as String,
    subjectId: json['subjectId'] as String,
    term: json['term'] as int,
  );
}

Map<String, dynamic> _$_$_GradesDTOToJson(_$_GradesDTO instance) =>
    <String, dynamic>{
      'creationTime': instance.creationTime?.toIso8601String(),
      'value': instance.value,
      'type': instance.type,
      'description': instance.description,
      'subjectId': instance.subjectId,
      'term': instance.term,
    };
