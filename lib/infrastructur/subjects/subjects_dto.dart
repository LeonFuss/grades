import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/core/value_objects.dart';
import 'package:grades/domain/grades/value_objects.dart';
import 'package:grades/domain/subjects/subject.dart';
import 'package:grades/domain/subjects/value_objects.dart';

part 'subjects_dto.freezed.dart';
part 'subjects_dto.g.dart';

@freezed
abstract class SubjectsDTO implements _$SubjectsDTO {
  const SubjectsDTO._();

  const factory SubjectsDTO({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required double average,
    @required double oralAverage,
    @required double writtenAverage,
    @required int position,
    @required int term,
  }) = _SubjectsDTO;

  factory SubjectsDTO.fromDomain(Subject subject) {
    return SubjectsDTO(
      id: subject.id.getOrCrash(),
      name: subject.name.getOrCrash(),
      average: subject.average.getOrCrash(),
      oralAverage: subject.oralAverage.getOrCrash(),
      writtenAverage: subject.writtenAverage.getOrCrash(),
      position: subject.position,
      term: subject.term.getOrCrash(),
    );
  }

  Subject toDomain() {
    return Subject(
      id: UniqueId.fromUniqueString(id),
      name: SubjectName(name),
      average: Average(average),
      oralAverage: Average(oralAverage),
      writtenAverage: Average(writtenAverage),
      position: position,
      term: Term(term),
    );
  }

  factory SubjectsDTO.fromFirestore(DocumentSnapshot snapshot) {
    return SubjectsDTO.fromJson(snapshot.data)
        .copyWith(id: snapshot.documentID);
  }

  factory SubjectsDTO.fromJson(Map<String, dynamic> json) =>
      _$SubjectsDTOFromJson(json);
}
