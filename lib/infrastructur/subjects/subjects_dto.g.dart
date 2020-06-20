// GENERATED CODE - DO NOT MODIFY BY HAND

//ignore_for_file: non_constant_identifier_names

part of 'subjects_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubjectsDTO _$_$_SubjectsDTOFromJson(Map<String, dynamic> json) {
  return _$_SubjectsDTO(
    name: json['name'] as String,
    average: (json['average'] as num)?.toDouble(),
    oralAverage: (json['oralAverage'] as num)?.toDouble(),
    writtenAverage: (json['writtenAverage'] as num)?.toDouble(),
    position: json['position'] as int,
    term: json['term'] as int,
  );
}

Map<String, dynamic> _$_$_SubjectsDTOToJson(_$_SubjectsDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'average': instance.average,
      'oralAverage': instance.oralAverage,
      'writtenAverage': instance.writtenAverage,
      'position': instance.position,
      'term': instance.term,
    };
