import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/core/entity.dart';
import 'package:grades/domain/core/value_objects.dart';
import 'value_objects.dart';

part 'timetable.freezed.dart';

@freezed
abstract class Timetable implements _$Timetable, IEntity {
  const Timetable._();

  const factory Timetable({
    @required UniqueId id,
    @required LessonDuration lessonDuration,
    @required BreakDurations breakDuration,
    @required BreakPositions breakPosition,
  }) = _Timetable;
}
