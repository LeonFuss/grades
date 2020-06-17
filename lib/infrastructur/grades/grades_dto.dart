import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/core/value_objects.dart';
import 'package:grades/domain/grades/grade.dart';
import 'package:grades/domain/grades/value_objects.dart';

part 'grades_dto.freezed.dart';
part 'grades_dto.g.dart';

@freezed
abstract class GradesDTO implements _$GradesDTO {
  const GradesDTO._();

  const factory GradesDTO(
      {@JsonKey(ignore: true) String id,
      @required int value,
      @required String type,
      @required String description,
      @required String subjectId,
      @required int term}) = _GradesDTO;

  factory GradesDTO.fromDomain(Grade grade) {
    return GradesDTO(
      id: grade.id.getOrCrash(),
      value: grade.value.getOrCrash(),
      type: grade.type.getOrCrash(),
      description: grade.description.getOrCrash(),
      subjectId: grade.subjectId.getOrCrash(),
      term: grade.term.getOrCrash(),
    );
  }

  Grade toDomain() {
    return Grade(
        id: UniqueId.fromUniqueString(id),
        value: GradeValue(value),
        type: GradeType(type),
        description: GradeDescription(description),
        subjectId: UniqueId.fromUniqueString(subjectId),
        term: Term(term));
  }

  factory GradesDTO.fromFirestore(DocumentSnapshot snapshot) {
    return GradesDTO.fromJson(snapshot.data).copyWith(id: snapshot.documentID);
  }

  factory GradesDTO.fromJson(Map<String, dynamic> json) =>
      _$GradesDTOFromJson(json);
}