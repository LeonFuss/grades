import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/core/value_objects.dart';
import 'package:grades/domain/grade/grades/value_objects.dart';
import 'package:grades/domain/grade/subjects/subject.dart';
import 'package:grades/domain/grade/subjects/value_objects.dart';
import 'package:grades/infrastructure/sql_database/app_database.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:moor/moor.dart';

part 'subjects_dto.freezed.dart';
part 'subjects_dto.g.dart';

///[SubjectsDTO] ist das Datentransferobjekt der Entität [Subject].

@freezed
abstract class SubjectsDTO implements _$SubjectsDTO {
  const factory SubjectsDTO({
    @json.JsonKey(ignore: true) String id,
    @required String name,
    @required double average,
    @required double oralAverage,
    @required double writtenAverage,
    @required int position,
    @required int term,
  }) = _SubjectsDTO;

  const SubjectsDTO._();

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

  SubjectsCompanion toDBO() {
    return SubjectsCompanion(
      term: Value(term),
      id: Value(id),
      name: Value(name),
      average: Value(average),
      oralAverage: Value(oralAverage),
      writtenAverage: Value(writtenAverage),
      position: Value(position),
    );
  }

  factory SubjectsDTO.fromFirestore(DocumentSnapshot snapshot) {
    return SubjectsDTO.fromJson(snapshot.data)
        .copyWith(id: snapshot.documentID);
  }

  factory SubjectsDTO.fromDBO(SubjectDBO dbo) {
    return SubjectsDTO(
        term: dbo.term,
        position: dbo.position,
        writtenAverage: dbo.writtenAverage,
        oralAverage: dbo.oralAverage,
        average: dbo.average,
        name: dbo.name,
        id: dbo.id);
  }

  factory SubjectsDTO.fromJson(Map<String, dynamic> json) =>
      _$SubjectsDTOFromJson(json);
}
