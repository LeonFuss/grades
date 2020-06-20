// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'grade_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GradeActorEventTearOff {
  const _$GradeActorEventTearOff();

  _Deleted deleted(Grade grade) {
    return _Deleted(
      grade,
    );
  }

  _Create create(Grade grade) {
    return _Create(
      grade,
    );
  }

  _Update update(Grade grade) {
    return _Update(
      grade,
    );
  }
}

// ignore: unused_element
const $GradeActorEvent = _$GradeActorEventTearOff();

mixin _$GradeActorEvent {
  Grade get grade;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Grade grade),
    @required Result create(Grade grade),
    @required Result update(Grade grade),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Grade grade),
    Result create(Grade grade),
    Result update(Grade grade),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result create(_Create value),
    @required Result update(_Update value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result create(_Create value),
    Result update(_Update value),
    @required Result orElse(),
  });

  $GradeActorEventCopyWith<GradeActorEvent> get copyWith;
}

abstract class $GradeActorEventCopyWith<$Res> {
  factory $GradeActorEventCopyWith(
          GradeActorEvent value, $Res Function(GradeActorEvent) then) =
      _$GradeActorEventCopyWithImpl<$Res>;
  $Res call({Grade grade});

  $GradeCopyWith<$Res> get grade;
}

class _$GradeActorEventCopyWithImpl<$Res>
    implements $GradeActorEventCopyWith<$Res> {
  _$GradeActorEventCopyWithImpl(this._value, this._then);

  final GradeActorEvent _value;
  // ignore: unused_field
  final $Res Function(GradeActorEvent) _then;

  @override
  $Res call({
    Object grade = freezed,
  }) {
    return _then(_value.copyWith(
      grade: grade == freezed ? _value.grade : grade as Grade,
    ));
  }

  @override
  $GradeCopyWith<$Res> get grade {
    if (_value.grade == null) {
      return null;
    }
    return $GradeCopyWith<$Res>(_value.grade, (value) {
      return _then(_value.copyWith(grade: value));
    });
  }
}

abstract class _$DeletedCopyWith<$Res>
    implements $GradeActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Grade grade});

  @override
  $GradeCopyWith<$Res> get grade;
}

class __$DeletedCopyWithImpl<$Res> extends _$GradeActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object grade = freezed,
  }) {
    return _then(_Deleted(
      grade == freezed ? _value.grade : grade as Grade,
    ));
  }
}

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.grade) : assert(grade != null);

  @override
  final Grade grade;

  @override
  String toString() {
    return 'GradeActorEvent.deleted(grade: $grade)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(grade);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Grade grade),
    @required Result create(Grade grade),
    @required Result update(Grade grade),
  }) {
    assert(deleted != null);
    assert(create != null);
    assert(update != null);
    return deleted(grade);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Grade grade),
    Result create(Grade grade),
    Result update(Grade grade),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(grade);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result create(_Create value),
    @required Result update(_Update value),
  }) {
    assert(deleted != null);
    assert(create != null);
    assert(update != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result create(_Create value),
    Result update(_Update value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements GradeActorEvent {
  const factory _Deleted(Grade grade) = _$_Deleted;

  @override
  Grade get grade;
  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

abstract class _$CreateCopyWith<$Res>
    implements $GradeActorEventCopyWith<$Res> {
  factory _$CreateCopyWith(_Create value, $Res Function(_Create) then) =
      __$CreateCopyWithImpl<$Res>;
  @override
  $Res call({Grade grade});

  @override
  $GradeCopyWith<$Res> get grade;
}

class __$CreateCopyWithImpl<$Res> extends _$GradeActorEventCopyWithImpl<$Res>
    implements _$CreateCopyWith<$Res> {
  __$CreateCopyWithImpl(_Create _value, $Res Function(_Create) _then)
      : super(_value, (v) => _then(v as _Create));

  @override
  _Create get _value => super._value as _Create;

  @override
  $Res call({
    Object grade = freezed,
  }) {
    return _then(_Create(
      grade == freezed ? _value.grade : grade as Grade,
    ));
  }
}

class _$_Create implements _Create {
  const _$_Create(this.grade) : assert(grade != null);

  @override
  final Grade grade;

  @override
  String toString() {
    return 'GradeActorEvent.create(grade: $grade)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Create &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(grade);

  @override
  _$CreateCopyWith<_Create> get copyWith =>
      __$CreateCopyWithImpl<_Create>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Grade grade),
    @required Result create(Grade grade),
    @required Result update(Grade grade),
  }) {
    assert(deleted != null);
    assert(create != null);
    assert(update != null);
    return create(grade);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Grade grade),
    Result create(Grade grade),
    Result update(Grade grade),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (create != null) {
      return create(grade);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result create(_Create value),
    @required Result update(_Update value),
  }) {
    assert(deleted != null);
    assert(create != null);
    assert(update != null);
    return create(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result create(_Create value),
    Result update(_Update value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements GradeActorEvent {
  const factory _Create(Grade grade) = _$_Create;

  @override
  Grade get grade;
  @override
  _$CreateCopyWith<_Create> get copyWith;
}

abstract class _$UpdateCopyWith<$Res>
    implements $GradeActorEventCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  @override
  $Res call({Grade grade});

  @override
  $GradeCopyWith<$Res> get grade;
}

class __$UpdateCopyWithImpl<$Res> extends _$GradeActorEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object grade = freezed,
  }) {
    return _then(_Update(
      grade == freezed ? _value.grade : grade as Grade,
    ));
  }
}

class _$_Update implements _Update {
  const _$_Update(this.grade) : assert(grade != null);

  @override
  final Grade grade;

  @override
  String toString() {
    return 'GradeActorEvent.update(grade: $grade)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Update &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(grade);

  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Grade grade),
    @required Result create(Grade grade),
    @required Result update(Grade grade),
  }) {
    assert(deleted != null);
    assert(create != null);
    assert(update != null);
    return update(grade);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Grade grade),
    Result create(Grade grade),
    Result update(Grade grade),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(grade);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result create(_Create value),
    @required Result update(_Update value),
  }) {
    assert(deleted != null);
    assert(create != null);
    assert(update != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result create(_Create value),
    Result update(_Update value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements GradeActorEvent {
  const factory _Update(Grade grade) = _$_Update;

  @override
  Grade get grade;
  @override
  _$UpdateCopyWith<_Update> get copyWith;
}

class _$GradeActorStateTearOff {
  const _$GradeActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _Failure failure(GradeFailures gradeFailure) {
    return _Failure(
      gradeFailure,
    );
  }

  _Success success() {
    return const _Success();
  }
}

// ignore: unused_element
const $GradeActorState = _$GradeActorStateTearOff();

mixin _$GradeActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result failure(GradeFailures gradeFailure),
    @required Result success(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result failure(GradeFailures gradeFailure),
    Result success(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result failure(_Failure value),
    @required Result success(_Success value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result failure(_Failure value),
    Result success(_Success value),
    @required Result orElse(),
  });
}

abstract class $GradeActorStateCopyWith<$Res> {
  factory $GradeActorStateCopyWith(
          GradeActorState value, $Res Function(GradeActorState) then) =
      _$GradeActorStateCopyWithImpl<$Res>;
}

class _$GradeActorStateCopyWithImpl<$Res>
    implements $GradeActorStateCopyWith<$Res> {
  _$GradeActorStateCopyWithImpl(this._value, this._then);

  final GradeActorState _value;
  // ignore: unused_field
  final $Res Function(GradeActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$GradeActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GradeActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result failure(GradeFailures gradeFailure),
    @required Result success(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(failure != null);
    assert(success != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result failure(GradeFailures gradeFailure),
    Result success(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result failure(_Failure value),
    @required Result success(_Success value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(failure != null);
    assert(success != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result failure(_Failure value),
    Result success(_Success value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GradeActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res>
    extends _$GradeActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'GradeActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result failure(GradeFailures gradeFailure),
    @required Result success(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(failure != null);
    assert(success != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result failure(GradeFailures gradeFailure),
    Result success(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result failure(_Failure value),
    @required Result success(_Success value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(failure != null);
    assert(success != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result failure(_Failure value),
    Result success(_Success value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements GradeActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({GradeFailures gradeFailure});

  $GradeFailuresCopyWith<$Res> get gradeFailure;
}

class __$FailureCopyWithImpl<$Res> extends _$GradeActorStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object gradeFailure = freezed,
  }) {
    return _then(_Failure(
      gradeFailure == freezed
          ? _value.gradeFailure
          : gradeFailure as GradeFailures,
    ));
  }

  @override
  $GradeFailuresCopyWith<$Res> get gradeFailure {
    if (_value.gradeFailure == null) {
      return null;
    }
    return $GradeFailuresCopyWith<$Res>(_value.gradeFailure, (value) {
      return _then(_value.copyWith(gradeFailure: value));
    });
  }
}

class _$_Failure implements _Failure {
  const _$_Failure(this.gradeFailure) : assert(gradeFailure != null);

  @override
  final GradeFailures gradeFailure;

  @override
  String toString() {
    return 'GradeActorState.failure(gradeFailure: $gradeFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.gradeFailure, gradeFailure) ||
                const DeepCollectionEquality()
                    .equals(other.gradeFailure, gradeFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gradeFailure);

  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result failure(GradeFailures gradeFailure),
    @required Result success(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(failure != null);
    assert(success != null);
    return failure(gradeFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result failure(GradeFailures gradeFailure),
    Result success(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(gradeFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result failure(_Failure value),
    @required Result success(_Success value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(failure != null);
    assert(success != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result failure(_Failure value),
    Result success(_Success value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements GradeActorState {
  const factory _Failure(GradeFailures gradeFailure) = _$_Failure;

  GradeFailures get gradeFailure;
  _$FailureCopyWith<_Failure> get copyWith;
}

abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

class __$SuccessCopyWithImpl<$Res> extends _$GradeActorStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;
}

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'GradeActorState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result failure(GradeFailures gradeFailure),
    @required Result success(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(failure != null);
    assert(success != null);
    return success();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result failure(GradeFailures gradeFailure),
    Result success(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result failure(_Failure value),
    @required Result success(_Success value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(failure != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result failure(_Failure value),
    Result success(_Success value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements GradeActorState {
  const factory _Success() = _$_Success;
}
