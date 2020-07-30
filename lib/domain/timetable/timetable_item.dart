import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/core/entity.dart';
import 'package:grades/domain/core/value_objects.dart';
import 'package:grades/domain/grade/subjects/subject.dart';
import 'package:grades/domain/grade/subjects/value_objects.dart';

import 'value_objects.dart';

part 'timetable_item.freezed.dart';

@freezed
abstract class TimetableItem implements _$TimetableItem, IEntity {
  const TimetableItem._();

  const factory TimetableItem({
    @required UniqueId id,
    @required UniqueId subjectId,
    @required Room room,
    @required SubjectName subjectName,
    @required Day day,
    @required Period period,
  }) = _TimetableItem;

  factory TimetableItem.empty() {
    return TimetableItem(
        id: UniqueId(),
        day: Day.uninitialized(),
        period: Period.uninitialized(),
        room: Room.uninitialized(),
        subjectId: UniqueId.uninitialized(),
        subjectName: SubjectName.uninitialized());
  }

  TimetableItem copyWithSubject(Subject subject) =>
      copyWith(subjectId: subject.id, subjectName: subject.name);
}
