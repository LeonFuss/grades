import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/core/value_objects.dart';
import 'package:grades/domain/grade/grades/grade.dart';
import 'package:grades/domain/grade/grades/value_objects.dart';
import 'package:grades/infrastructure/sql_database/app_database.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:moor/moor.dart';

part 'grades_dto.freezed.dart';
part 'grades_dto.g.dart';

///[GradesDTO] ist das Datentransferobjekt der Entität [Grade].
@freezed
abstract class GradesDTO implements _$GradesDTO {
  const factory GradesDTO(
      {@json.JsonKey(ignore: true) String id,
      @required DateTime creationTime,
      @required int value,
      @required String type,
      @required String description,
      @required String subjectId,
      @required int term}) = _GradesDTO;

  factory GradesDTO.fromDomain(Grade grade) {
    return GradesDTO(
      creationTime: grade.creationTime,
      id: grade.id.getOrCrash(),
      value: grade.value.getOrCrash(),
      type: grade.type.getOrCrash(),
      description: grade.description.getOrCrash(),
      subjectId: grade.subjectId.getOrCrash(),
      term: grade.term.getOrCrash(),
    );
  }

  const GradesDTO._();

  Grade toDomain() {
    return Grade(
        creationTime: creationTime,
        id: UniqueId.fromUniqueString(id),
        value: GradeValue(value),
        type: GradeType(type),
        description: GradeDescription(description),
        subjectId: UniqueId.fromUniqueString(subjectId),
        term: Term(term));
  }

  GradesCompanion toDBO() {
    return GradesCompanion(
      id: Value(id),
      term: Value(term),
      creationTime: Value(creationTime),
      type: Value(type),
      description: Value(description),
      subjectId: Value(subjectId),
      value: Value(value),
    );
  }

  factory GradesDTO.fromFirestore(DocumentSnapshot snapshot) {
    return GradesDTO.fromJson(snapshot.data).copyWith(id: snapshot.documentID);
  }

  factory GradesDTO.fromDBO(GradeDBO dbo) {
    return GradesDTO(
        value: dbo.value,
        term: dbo.term,
        subjectId: dbo.subjectId,
        description: dbo.description,
        type: dbo.type,
        creationTime: dbo.creationTime,
        id: dbo.id);
  }

  factory GradesDTO.fromJson(Map<String, dynamic> json) =>
      _$GradesDTOFromJson(json);
}
