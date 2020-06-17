// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'subject_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SubjectWatcherEventTearOff {
  const _$SubjectWatcherEventTearOff();

  WatchAllStarted watchAllStarted() {
    return const WatchAllStarted();
  }

  SubjectsReceived subjectsReceived(
      Either<SubjectFailures, KtList<Subject>> failureOrSubjects) {
    return SubjectsReceived(
      failureOrSubjects,
    );
  }

  ChangeTerm changeTerm(Term term) {
    return ChangeTerm(
      term,
    );
  }
}

// ignore: unused_element
const $SubjectWatcherEvent = _$SubjectWatcherEventTearOff();

mixin _$SubjectWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result subjectsReceived(
            Either<SubjectFailures, KtList<Subject>> failureOrSubjects),
    @required Result changeTerm(Term term),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result subjectsReceived(
        Either<SubjectFailures, KtList<Subject>> failureOrSubjects),
    Result changeTerm(Term term),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(WatchAllStarted value),
    @required Result subjectsReceived(SubjectsReceived value),
    @required Result changeTerm(ChangeTerm value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(WatchAllStarted value),
    Result subjectsReceived(SubjectsReceived value),
    Result changeTerm(ChangeTerm value),
    @required Result orElse(),
  });
}

abstract class $SubjectWatcherEventCopyWith<$Res> {
  factory $SubjectWatcherEventCopyWith(
          SubjectWatcherEvent value, $Res Function(SubjectWatcherEvent) then) =
      _$SubjectWatcherEventCopyWithImpl<$Res>;
}

class _$SubjectWatcherEventCopyWithImpl<$Res>
    implements $SubjectWatcherEventCopyWith<$Res> {
  _$SubjectWatcherEventCopyWithImpl(this._value, this._then);

  final SubjectWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(SubjectWatcherEvent) _then;
}

abstract class $WatchAllStartedCopyWith<$Res> {
  factory $WatchAllStartedCopyWith(
          WatchAllStarted value, $Res Function(WatchAllStarted) then) =
      _$WatchAllStartedCopyWithImpl<$Res>;
}

class _$WatchAllStartedCopyWithImpl<$Res>
    extends _$SubjectWatcherEventCopyWithImpl<$Res>
    implements $WatchAllStartedCopyWith<$Res> {
  _$WatchAllStartedCopyWithImpl(
      WatchAllStarted _value, $Res Function(WatchAllStarted) _then)
      : super(_value, (v) => _then(v as WatchAllStarted));

  @override
  WatchAllStarted get _value => super._value as WatchAllStarted;
}

class _$WatchAllStarted implements WatchAllStarted {
  const _$WatchAllStarted();

  @override
  String toString() {
    return 'SubjectWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result subjectsReceived(
            Either<SubjectFailures, KtList<Subject>> failureOrSubjects),
    @required Result changeTerm(Term term),
  }) {
    assert(watchAllStarted != null);
    assert(subjectsReceived != null);
    assert(changeTerm != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result subjectsReceived(
        Either<SubjectFailures, KtList<Subject>> failureOrSubjects),
    Result changeTerm(Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(WatchAllStarted value),
    @required Result subjectsReceived(SubjectsReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(watchAllStarted != null);
    assert(subjectsReceived != null);
    assert(changeTerm != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(WatchAllStarted value),
    Result subjectsReceived(SubjectsReceived value),
    Result changeTerm(ChangeTerm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class WatchAllStarted implements SubjectWatcherEvent {
  const factory WatchAllStarted() = _$WatchAllStarted;
}

abstract class $SubjectsReceivedCopyWith<$Res> {
  factory $SubjectsReceivedCopyWith(
          SubjectsReceived value, $Res Function(SubjectsReceived) then) =
      _$SubjectsReceivedCopyWithImpl<$Res>;
  $Res call({Either<SubjectFailures, KtList<Subject>> failureOrSubjects});
}

class _$SubjectsReceivedCopyWithImpl<$Res>
    extends _$SubjectWatcherEventCopyWithImpl<$Res>
    implements $SubjectsReceivedCopyWith<$Res> {
  _$SubjectsReceivedCopyWithImpl(
      SubjectsReceived _value, $Res Function(SubjectsReceived) _then)
      : super(_value, (v) => _then(v as SubjectsReceived));

  @override
  SubjectsReceived get _value => super._value as SubjectsReceived;

  @override
  $Res call({
    Object failureOrSubjects = freezed,
  }) {
    return _then(SubjectsReceived(
      failureOrSubjects == freezed
          ? _value.failureOrSubjects
          : failureOrSubjects as Either<SubjectFailures, KtList<Subject>>,
    ));
  }
}

class _$SubjectsReceived implements SubjectsReceived {
  const _$SubjectsReceived(this.failureOrSubjects)
      : assert(failureOrSubjects != null);

  @override
  final Either<SubjectFailures, KtList<Subject>> failureOrSubjects;

  @override
  String toString() {
    return 'SubjectWatcherEvent.subjectsReceived(failureOrSubjects: $failureOrSubjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubjectsReceived &&
            (identical(other.failureOrSubjects, failureOrSubjects) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSubjects, failureOrSubjects)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrSubjects);

  @override
  $SubjectsReceivedCopyWith<SubjectsReceived> get copyWith =>
      _$SubjectsReceivedCopyWithImpl<SubjectsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result subjectsReceived(
            Either<SubjectFailures, KtList<Subject>> failureOrSubjects),
    @required Result changeTerm(Term term),
  }) {
    assert(watchAllStarted != null);
    assert(subjectsReceived != null);
    assert(changeTerm != null);
    return subjectsReceived(failureOrSubjects);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result subjectsReceived(
        Either<SubjectFailures, KtList<Subject>> failureOrSubjects),
    Result changeTerm(Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subjectsReceived != null) {
      return subjectsReceived(failureOrSubjects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(WatchAllStarted value),
    @required Result subjectsReceived(SubjectsReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(watchAllStarted != null);
    assert(subjectsReceived != null);
    assert(changeTerm != null);
    return subjectsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(WatchAllStarted value),
    Result subjectsReceived(SubjectsReceived value),
    Result changeTerm(ChangeTerm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subjectsReceived != null) {
      return subjectsReceived(this);
    }
    return orElse();
  }
}

abstract class SubjectsReceived implements SubjectWatcherEvent {
  const factory SubjectsReceived(
          Either<SubjectFailures, KtList<Subject>> failureOrSubjects) =
      _$SubjectsReceived;

  Either<SubjectFailures, KtList<Subject>> get failureOrSubjects;
  $SubjectsReceivedCopyWith<SubjectsReceived> get copyWith;
}

abstract class $ChangeTermCopyWith<$Res> {
  factory $ChangeTermCopyWith(
          ChangeTerm value, $Res Function(ChangeTerm) then) =
      _$ChangeTermCopyWithImpl<$Res>;
  $Res call({Term term});
}

class _$ChangeTermCopyWithImpl<$Res>
    extends _$SubjectWatcherEventCopyWithImpl<$Res>
    implements $ChangeTermCopyWith<$Res> {
  _$ChangeTermCopyWithImpl(ChangeTerm _value, $Res Function(ChangeTerm) _then)
      : super(_value, (v) => _then(v as ChangeTerm));

  @override
  ChangeTerm get _value => super._value as ChangeTerm;

  @override
  $Res call({
    Object term = freezed,
  }) {
    return _then(ChangeTerm(
      term == freezed ? _value.term : term as Term,
    ));
  }
}

class _$ChangeTerm implements ChangeTerm {
  const _$ChangeTerm(this.term) : assert(term != null);

  @override
  final Term term;

  @override
  String toString() {
    return 'SubjectWatcherEvent.changeTerm(term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeTerm &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(term);

  @override
  $ChangeTermCopyWith<ChangeTerm> get copyWith =>
      _$ChangeTermCopyWithImpl<ChangeTerm>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result subjectsReceived(
            Either<SubjectFailures, KtList<Subject>> failureOrSubjects),
    @required Result changeTerm(Term term),
  }) {
    assert(watchAllStarted != null);
    assert(subjectsReceived != null);
    assert(changeTerm != null);
    return changeTerm(term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result subjectsReceived(
        Either<SubjectFailures, KtList<Subject>> failureOrSubjects),
    Result changeTerm(Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeTerm != null) {
      return changeTerm(term);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(WatchAllStarted value),
    @required Result subjectsReceived(SubjectsReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(watchAllStarted != null);
    assert(subjectsReceived != null);
    assert(changeTerm != null);
    return changeTerm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(WatchAllStarted value),
    Result subjectsReceived(SubjectsReceived value),
    Result changeTerm(ChangeTerm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeTerm != null) {
      return changeTerm(this);
    }
    return orElse();
  }
}

abstract class ChangeTerm implements SubjectWatcherEvent {
  const factory ChangeTerm(Term term) = _$ChangeTerm;

  Term get term;
  $ChangeTermCopyWith<ChangeTerm> get copyWith;
}

class _$SubjectWatcherStateTearOff {
  const _$SubjectWatcherStateTearOff();

  Initial initial(Term term) {
    return Initial(
      term,
    );
  }

  DataTransferInProgress loadInProgress({@required Term term}) {
    return DataTransferInProgress(
      term: term,
    );
  }

  LoadSuccess loadSuccess(
      {@required KtList<Subject> subjects, @required Term term}) {
    return LoadSuccess(
      subjects: subjects,
      term: term,
    );
  }

  LoadFailure loadFailure(
      {@required SubjectFailures subjectFailures, @required Term term}) {
    return LoadFailure(
      subjectFailures: subjectFailures,
      term: term,
    );
  }
}

// ignore: unused_element
const $SubjectWatcherState = _$SubjectWatcherStateTearOff();

mixin _$SubjectWatcherState {
  Term get term;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required Result loadSuccess(KtList<Subject> subjects, Term term),
    @required Result loadFailure(SubjectFailures subjectFailures, Term term),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(KtList<Subject> subjects, Term term),
    Result loadFailure(SubjectFailures subjectFailures, Term term),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });

  $SubjectWatcherStateCopyWith<SubjectWatcherState> get copyWith;
}

abstract class $SubjectWatcherStateCopyWith<$Res> {
  factory $SubjectWatcherStateCopyWith(
          SubjectWatcherState value, $Res Function(SubjectWatcherState) then) =
      _$SubjectWatcherStateCopyWithImpl<$Res>;
  $Res call({Term term});
}

class _$SubjectWatcherStateCopyWithImpl<$Res>
    implements $SubjectWatcherStateCopyWith<$Res> {
  _$SubjectWatcherStateCopyWithImpl(this._value, this._then);

  final SubjectWatcherState _value;
  // ignore: unused_field
  final $Res Function(SubjectWatcherState) _then;

  @override
  $Res call({
    Object term = freezed,
  }) {
    return _then(_value.copyWith(
      term: term == freezed ? _value.term : term as Term,
    ));
  }
}

abstract class $InitialCopyWith<$Res>
    implements $SubjectWatcherStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Term term});
}

class _$InitialCopyWithImpl<$Res>
    extends _$SubjectWatcherStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object term = freezed,
  }) {
    return _then(Initial(
      term == freezed ? _value.term : term as Term,
    ));
  }
}

class _$Initial implements Initial {
  const _$Initial(this.term) : assert(term != null);

  @override
  final Term term;

  @override
  String toString() {
    return 'SubjectWatcherState.initial(term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(term);

  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required Result loadSuccess(KtList<Subject> subjects, Term term),
    @required Result loadFailure(SubjectFailures subjectFailures, Term term),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(KtList<Subject> subjects, Term term),
    Result loadFailure(SubjectFailures subjectFailures, Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(term);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SubjectWatcherState {
  const factory Initial(Term term) = _$Initial;

  @override
  Term get term;
  @override
  $InitialCopyWith<Initial> get copyWith;
}

abstract class $DataTransferInProgressCopyWith<$Res>
    implements $SubjectWatcherStateCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
  @override
  $Res call({Term term});
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$SubjectWatcherStateCopyWithImpl<$Res>
    implements $DataTransferInProgressCopyWith<$Res> {
  _$DataTransferInProgressCopyWithImpl(DataTransferInProgress _value,
      $Res Function(DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as DataTransferInProgress));

  @override
  DataTransferInProgress get _value => super._value as DataTransferInProgress;

  @override
  $Res call({
    Object term = freezed,
  }) {
    return _then(DataTransferInProgress(
      term: term == freezed ? _value.term : term as Term,
    ));
  }
}

class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress({@required this.term}) : assert(term != null);

  @override
  final Term term;

  @override
  String toString() {
    return 'SubjectWatcherState.loadInProgress(term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataTransferInProgress &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(term);

  @override
  $DataTransferInProgressCopyWith<DataTransferInProgress> get copyWith =>
      _$DataTransferInProgressCopyWithImpl<DataTransferInProgress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required Result loadSuccess(KtList<Subject> subjects, Term term),
    @required Result loadFailure(SubjectFailures subjectFailures, Term term),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(KtList<Subject> subjects, Term term),
    Result loadFailure(SubjectFailures subjectFailures, Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(term);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataTransferInProgress implements SubjectWatcherState {
  const factory DataTransferInProgress({@required Term term}) =
      _$DataTransferInProgress;

  @override
  Term get term;
  @override
  $DataTransferInProgressCopyWith<DataTransferInProgress> get copyWith;
}

abstract class $LoadSuccessCopyWith<$Res>
    implements $SubjectWatcherStateCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call({KtList<Subject> subjects, Term term});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$SubjectWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object subjects = freezed,
    Object term = freezed,
  }) {
    return _then(LoadSuccess(
      subjects:
          subjects == freezed ? _value.subjects : subjects as KtList<Subject>,
      term: term == freezed ? _value.term : term as Term,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess({@required this.subjects, @required this.term})
      : assert(subjects != null),
        assert(term != null);

  @override
  final KtList<Subject> subjects;
  @override
  final Term term;

  @override
  String toString() {
    return 'SubjectWatcherState.loadSuccess(subjects: $subjects, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.subjects, subjects) ||
                const DeepCollectionEquality()
                    .equals(other.subjects, subjects)) &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subjects) ^
      const DeepCollectionEquality().hash(term);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required Result loadSuccess(KtList<Subject> subjects, Term term),
    @required Result loadFailure(SubjectFailures subjectFailures, Term term),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(subjects, term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(KtList<Subject> subjects, Term term),
    Result loadFailure(SubjectFailures subjectFailures, Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(subjects, term);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements SubjectWatcherState {
  const factory LoadSuccess(
      {@required KtList<Subject> subjects,
      @required Term term}) = _$LoadSuccess;

  KtList<Subject> get subjects;
  @override
  Term get term;
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res>
    implements $SubjectWatcherStateCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({SubjectFailures subjectFailures, Term term});

  $SubjectFailuresCopyWith<$Res> get subjectFailures;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$SubjectWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object subjectFailures = freezed,
    Object term = freezed,
  }) {
    return _then(LoadFailure(
      subjectFailures: subjectFailures == freezed
          ? _value.subjectFailures
          : subjectFailures as SubjectFailures,
      term: term == freezed ? _value.term : term as Term,
    ));
  }

  @override
  $SubjectFailuresCopyWith<$Res> get subjectFailures {
    if (_value.subjectFailures == null) {
      return null;
    }
    return $SubjectFailuresCopyWith<$Res>(_value.subjectFailures, (value) {
      return _then(_value.copyWith(subjectFailures: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure({@required this.subjectFailures, @required this.term})
      : assert(subjectFailures != null),
        assert(term != null);

  @override
  final SubjectFailures subjectFailures;
  @override
  final Term term;

  @override
  String toString() {
    return 'SubjectWatcherState.loadFailure(subjectFailures: $subjectFailures, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.subjectFailures, subjectFailures) ||
                const DeepCollectionEquality()
                    .equals(other.subjectFailures, subjectFailures)) &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subjectFailures) ^
      const DeepCollectionEquality().hash(term);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required Result loadSuccess(KtList<Subject> subjects, Term term),
    @required Result loadFailure(SubjectFailures subjectFailures, Term term),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(subjectFailures, term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(KtList<Subject> subjects, Term term),
    Result loadFailure(SubjectFailures subjectFailures, Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(subjectFailures, term);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements SubjectWatcherState {
  const factory LoadFailure(
      {@required SubjectFailures subjectFailures,
      @required Term term}) = _$LoadFailure;

  SubjectFailures get subjectFailures;
  @override
  Term get term;
  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
