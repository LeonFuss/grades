import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grades/domain/core/entity.dart';
import 'package:grades/domain/core/value_objects.dart';

import 'value_objects.dart';

part 'setup.freezed.dart';

@freezed
abstract class Setup with _$Setup implements IEntity {
  const factory Setup({
    @required UniqueId id,
    @required GradeSystem gradeSystem,
  }) = _Setup;
}
