// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'subject_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SubjectActorEventTearOff {
  const _$SubjectActorEventTearOff();

  _Deleted deleted(Subject subject) {
    return _Deleted(
      subject,
    );
  }

  _Create create(Subject subject) {
    return _Create(
      subject,
    );
  }

  _Update update(Subject subject) {
    return _Update(
      subject,
    );
  }
}

// ignore: unused_element
const $SubjectActorEvent = _$SubjectActorEventTearOff();

mixin _$SubjectActorEvent {
  Subject get subject;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Subject subject),
    @required Result create(Subject subject),
    @required Result update(Subject subject),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Subject subject),
    Result create(Subject subject),
    Result update(Subject subject),
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

  $SubjectActorEventCopyWith<SubjectActorEvent> get copyWith;
}

abstract class $SubjectActorEventCopyWith<$Res> {
  factory $SubjectActorEventCopyWith(
          SubjectActorEvent value, $Res Function(SubjectActorEvent) then) =
      _$SubjectActorEventCopyWithImpl<$Res>;
  $Res call({Subject subject});

  $SubjectCopyWith<$Res> get subject;
}

class _$SubjectActorEventCopyWithImpl<$Res>
    implements $SubjectActorEventCopyWith<$Res> {
  _$SubjectActorEventCopyWithImpl(this._value, this._then);

  final SubjectActorEvent _value;
  // ignore: unused_field
  final $Res Function(SubjectActorEvent) _then;

  @override
  $Res call({
    Object subject = freezed,
  }) {
    return _then(_value.copyWith(
      subject: subject == freezed ? _value.subject : subject as Subject,
    ));
  }

  @override
  $SubjectCopyWith<$Res> get subject {
    if (_value.subject == null) {
      return null;
    }
    return $SubjectCopyWith<$Res>(_value.subject, (value) {
      return _then(_value.copyWith(subject: value));
    });
  }
}

abstract class _$DeletedCopyWith<$Res>
    implements $SubjectActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Subject subject});

  @override
  $SubjectCopyWith<$Res> get subject;
}

class __$DeletedCopyWithImpl<$Res> extends _$SubjectActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object subject = freezed,
  }) {
    return _then(_Deleted(
      subject == freezed ? _value.subject : subject as Subject,
    ));
  }
}

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.subject) : assert(subject != null);

  @override
  final Subject subject;

  @override
  String toString() {
    return 'SubjectActorEvent.deleted(subject: $subject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality().equals(other.subject, subject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subject);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Subject subject),
    @required Result create(Subject subject),
    @required Result update(Subject subject),
  }) {
    assert(deleted != null);
    assert(create != null);
    assert(update != null);
    return deleted(subject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Subject subject),
    Result create(Subject subject),
    Result update(Subject subject),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(subject);
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

abstract class _Deleted implements SubjectActorEvent {
  const factory _Deleted(Subject subject) = _$_Deleted;

  @override
  Subject get subject;
  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

abstract class _$CreateCopyWith<$Res>
    implements $SubjectActorEventCopyWith<$Res> {
  factory _$CreateCopyWith(_Create value, $Res Function(_Create) then) =
      __$CreateCopyWithImpl<$Res>;
  @override
  $Res call({Subject subject});

  @override
  $SubjectCopyWith<$Res> get subject;
}

class __$CreateCopyWithImpl<$Res> extends _$SubjectActorEventCopyWithImpl<$Res>
    implements _$CreateCopyWith<$Res> {
  __$CreateCopyWithImpl(_Create _value, $Res Function(_Create) _then)
      : super(_value, (v) => _then(v as _Create));

  @override
  _Create get _value => super._value as _Create;

  @override
  $Res call({
    Object subject = freezed,
  }) {
    return _then(_Create(
      subject == freezed ? _value.subject : subject as Subject,
    ));
  }
}

class _$_Create implements _Create {
  const _$_Create(this.subject) : assert(subject != null);

  @override
  final Subject subject;

  @override
  String toString() {
    return 'SubjectActorEvent.create(subject: $subject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Create &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality().equals(other.subject, subject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subject);

  @override
  _$CreateCopyWith<_Create> get copyWith =>
      __$CreateCopyWithImpl<_Create>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Subject subject),
    @required Result create(Subject subject),
    @required Result update(Subject subject),
  }) {
    assert(deleted != null);
    assert(create != null);
    assert(update != null);
    return create(subject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Subject subject),
    Result create(Subject subject),
    Result update(Subject subject),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (create != null) {
      return create(subject);
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

abstract class _Create implements SubjectActorEvent {
  const factory _Create(Subject subject) = _$_Create;

  @override
  Subject get subject;
  @override
  _$CreateCopyWith<_Create> get copyWith;
}

abstract class _$UpdateCopyWith<$Res>
    implements $SubjectActorEventCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  @override
  $Res call({Subject subject});

  @override
  $SubjectCopyWith<$Res> get subject;
}

class __$UpdateCopyWithImpl<$Res> extends _$SubjectActorEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object subject = freezed,
  }) {
    return _then(_Update(
      subject == freezed ? _value.subject : subject as Subject,
    ));
  }
}

class _$_Update implements _Update {
  const _$_Update(this.subject) : assert(subject != null);

  @override
  final Subject subject;

  @override
  String toString() {
    return 'SubjectActorEvent.update(subject: $subject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Update &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality().equals(other.subject, subject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subject);

  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Subject subject),
    @required Result create(Subject subject),
    @required Result update(Subject subject),
  }) {
    assert(deleted != null);
    assert(create != null);
    assert(update != null);
    return update(subject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Subject subject),
    Result create(Subject subject),
    Result update(Subject subject),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(subject);
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

abstract class _Update implements SubjectActorEvent {
  const factory _Update(Subject subject) = _$_Update;

  @override
  Subject get subject;
  @override
  _$UpdateCopyWith<_Update> get copyWith;
}

class _$SubjectActorStateTearOff {
  const _$SubjectActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _Failure failure(SubjectFailures subjectFailure) {
    return _Failure(
      subjectFailure,
    );
  }

  _Success success() {
    return const _Success();
  }
}

// ignore: unused_element
const $SubjectActorState = _$SubjectActorStateTearOff();

mixin _$SubjectActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result failure(SubjectFailures subjectFailure),
    @required Result success(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result failure(SubjectFailures subjectFailure),
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

abstract class $SubjectActorStateCopyWith<$Res> {
  factory $SubjectActorStateCopyWith(
          SubjectActorState value, $Res Function(SubjectActorState) then) =
      _$SubjectActorStateCopyWithImpl<$Res>;
}

class _$SubjectActorStateCopyWithImpl<$Res>
    implements $SubjectActorStateCopyWith<$Res> {
  _$SubjectActorStateCopyWithImpl(this._value, this._then);

  final SubjectActorState _value;
  // ignore: unused_field
  final $Res Function(SubjectActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$SubjectActorStateCopyWithImpl<$Res>
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
    return 'SubjectActorState.initial()';
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
    @required Result failure(SubjectFailures subjectFailure),
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
    Result failure(SubjectFailures subjectFailure),
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

abstract class _Initial implements SubjectActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res>
    extends _$SubjectActorStateCopyWithImpl<$Res>
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
    return 'SubjectActorState.actionInProgress()';
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
    @required Result failure(SubjectFailures subjectFailure),
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
    Result failure(SubjectFailures subjectFailure),
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

abstract class _ActionInProgress implements SubjectActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({SubjectFailures subjectFailure});

  $SubjectFailuresCopyWith<$Res> get subjectFailure;
}

class __$FailureCopyWithImpl<$Res> extends _$SubjectActorStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object subjectFailure = freezed,
  }) {
    return _then(_Failure(
      subjectFailure == freezed
          ? _value.subjectFailure
          : subjectFailure as SubjectFailures,
    ));
  }

  @override
  $SubjectFailuresCopyWith<$Res> get subjectFailure {
    if (_value.subjectFailure == null) {
      return null;
    }
    return $SubjectFailuresCopyWith<$Res>(_value.subjectFailure, (value) {
      return _then(_value.copyWith(subjectFailure: value));
    });
  }
}

class _$_Failure implements _Failure {
  const _$_Failure(this.subjectFailure) : assert(subjectFailure != null);

  @override
  final SubjectFailures subjectFailure;

  @override
  String toString() {
    return 'SubjectActorState.failure(subjectFailure: $subjectFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.subjectFailure, subjectFailure) ||
                const DeepCollectionEquality()
                    .equals(other.subjectFailure, subjectFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subjectFailure);

  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result failure(SubjectFailures subjectFailure),
    @required Result success(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(failure != null);
    assert(success != null);
    return failure(subjectFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result failure(SubjectFailures subjectFailure),
    Result success(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(subjectFailure);
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

abstract class _Failure implements SubjectActorState {
  const factory _Failure(SubjectFailures subjectFailure) = _$_Failure;

  SubjectFailures get subjectFailure;
  _$FailureCopyWith<_Failure> get copyWith;
}

abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

class __$SuccessCopyWithImpl<$Res> extends _$SubjectActorStateCopyWithImpl<$Res>
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
    return 'SubjectActorState.success()';
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
    @required Result failure(SubjectFailures subjectFailure),
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
    Result failure(SubjectFailures subjectFailure),
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

abstract class _Success implements SubjectActorState {
  const factory _Success() = _$_Success;
}
