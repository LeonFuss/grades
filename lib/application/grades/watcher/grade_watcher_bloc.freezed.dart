// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'grade_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GradeWatcherEventTearOff {
  const _$GradeWatcherEventTearOff();

  WatchSubjectGradesStarted watchSubjectGradesStarted(Subject subject) {
    return WatchSubjectGradesStarted(
      subject,
    );
  }

  GradesReceived gradesReceived(
      Either<GradeFailures, KtList<Grade>> failureOrGrades) {
    return GradesReceived(
      failureOrGrades,
    );
  }

  ChangeTerm changeTerm(Term term) {
    return ChangeTerm(
      term,
    );
  }
}

// ignore: unused_element
const $GradeWatcherEvent = _$GradeWatcherEventTearOff();

mixin _$GradeWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchSubjectGradesStarted(Subject subject),
    @required
        Result gradesReceived(
            Either<GradeFailures, KtList<Grade>> failureOrGrades),
    @required Result changeTerm(Term term),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchSubjectGradesStarted(Subject subject),
    Result gradesReceived(Either<GradeFailures, KtList<Grade>> failureOrGrades),
    Result changeTerm(Term term),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchSubjectGradesStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchSubjectGradesStarted(WatchSubjectGradesStarted value),
    Result gradesReceived(GradesReceived value),
    Result changeTerm(ChangeTerm value),
    @required Result orElse(),
  });
}

abstract class $GradeWatcherEventCopyWith<$Res> {
  factory $GradeWatcherEventCopyWith(
          GradeWatcherEvent value, $Res Function(GradeWatcherEvent) then) =
      _$GradeWatcherEventCopyWithImpl<$Res>;
}

class _$GradeWatcherEventCopyWithImpl<$Res>
    implements $GradeWatcherEventCopyWith<$Res> {
  _$GradeWatcherEventCopyWithImpl(this._value, this._then);

  final GradeWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(GradeWatcherEvent) _then;
}

abstract class $WatchSubjectGradesStartedCopyWith<$Res> {
  factory $WatchSubjectGradesStartedCopyWith(WatchSubjectGradesStarted value,
          $Res Function(WatchSubjectGradesStarted) then) =
      _$WatchSubjectGradesStartedCopyWithImpl<$Res>;
  $Res call({Subject subject});

  $SubjectCopyWith<$Res> get subject;
}

class _$WatchSubjectGradesStartedCopyWithImpl<$Res>
    extends _$GradeWatcherEventCopyWithImpl<$Res>
    implements $WatchSubjectGradesStartedCopyWith<$Res> {
  _$WatchSubjectGradesStartedCopyWithImpl(WatchSubjectGradesStarted _value,
      $Res Function(WatchSubjectGradesStarted) _then)
      : super(_value, (v) => _then(v as WatchSubjectGradesStarted));

  @override
  WatchSubjectGradesStarted get _value =>
      super._value as WatchSubjectGradesStarted;

  @override
  $Res call({
    Object subject = freezed,
  }) {
    return _then(WatchSubjectGradesStarted(
      subject == freezed ? _value.subject : subject as Subject,
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

class _$WatchSubjectGradesStarted implements WatchSubjectGradesStarted {
  const _$WatchSubjectGradesStarted(this.subject) : assert(subject != null);

  @override
  final Subject subject;

  @override
  String toString() {
    return 'GradeWatcherEvent.watchSubjectGradesStarted(subject: $subject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WatchSubjectGradesStarted &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality().equals(other.subject, subject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subject);

  @override
  $WatchSubjectGradesStartedCopyWith<WatchSubjectGradesStarted> get copyWith =>
      _$WatchSubjectGradesStartedCopyWithImpl<WatchSubjectGradesStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchSubjectGradesStarted(Subject subject),
    @required
        Result gradesReceived(
            Either<GradeFailures, KtList<Grade>> failureOrGrades),
    @required Result changeTerm(Term term),
  }) {
    assert(watchSubjectGradesStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return watchSubjectGradesStarted(subject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchSubjectGradesStarted(Subject subject),
    Result gradesReceived(Either<GradeFailures, KtList<Grade>> failureOrGrades),
    Result changeTerm(Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchSubjectGradesStarted != null) {
      return watchSubjectGradesStarted(subject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchSubjectGradesStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(watchSubjectGradesStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return watchSubjectGradesStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchSubjectGradesStarted(WatchSubjectGradesStarted value),
    Result gradesReceived(GradesReceived value),
    Result changeTerm(ChangeTerm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchSubjectGradesStarted != null) {
      return watchSubjectGradesStarted(this);
    }
    return orElse();
  }
}

abstract class WatchSubjectGradesStarted implements GradeWatcherEvent {
  const factory WatchSubjectGradesStarted(Subject subject) =
      _$WatchSubjectGradesStarted;

  Subject get subject;
  $WatchSubjectGradesStartedCopyWith<WatchSubjectGradesStarted> get copyWith;
}

abstract class $GradesReceivedCopyWith<$Res> {
  factory $GradesReceivedCopyWith(
          GradesReceived value, $Res Function(GradesReceived) then) =
      _$GradesReceivedCopyWithImpl<$Res>;
  $Res call({Either<GradeFailures, KtList<Grade>> failureOrGrades});
}

class _$GradesReceivedCopyWithImpl<$Res>
    extends _$GradeWatcherEventCopyWithImpl<$Res>
    implements $GradesReceivedCopyWith<$Res> {
  _$GradesReceivedCopyWithImpl(
      GradesReceived _value, $Res Function(GradesReceived) _then)
      : super(_value, (v) => _then(v as GradesReceived));

  @override
  GradesReceived get _value => super._value as GradesReceived;

  @override
  $Res call({
    Object failureOrGrades = freezed,
  }) {
    return _then(GradesReceived(
      failureOrGrades == freezed
          ? _value.failureOrGrades
          : failureOrGrades as Either<GradeFailures, KtList<Grade>>,
    ));
  }
}

class _$GradesReceived implements GradesReceived {
  const _$GradesReceived(this.failureOrGrades)
      : assert(failureOrGrades != null);

  @override
  final Either<GradeFailures, KtList<Grade>> failureOrGrades;

  @override
  String toString() {
    return 'GradeWatcherEvent.gradesReceived(failureOrGrades: $failureOrGrades)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GradesReceived &&
            (identical(other.failureOrGrades, failureOrGrades) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrGrades, failureOrGrades)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrGrades);

  @override
  $GradesReceivedCopyWith<GradesReceived> get copyWith =>
      _$GradesReceivedCopyWithImpl<GradesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchSubjectGradesStarted(Subject subject),
    @required
        Result gradesReceived(
            Either<GradeFailures, KtList<Grade>> failureOrGrades),
    @required Result changeTerm(Term term),
  }) {
    assert(watchSubjectGradesStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return gradesReceived(failureOrGrades);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchSubjectGradesStarted(Subject subject),
    Result gradesReceived(Either<GradeFailures, KtList<Grade>> failureOrGrades),
    Result changeTerm(Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradesReceived != null) {
      return gradesReceived(failureOrGrades);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchSubjectGradesStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(watchSubjectGradesStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return gradesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchSubjectGradesStarted(WatchSubjectGradesStarted value),
    Result gradesReceived(GradesReceived value),
    Result changeTerm(ChangeTerm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradesReceived != null) {
      return gradesReceived(this);
    }
    return orElse();
  }
}

abstract class GradesReceived implements GradeWatcherEvent {
  const factory GradesReceived(
      Either<GradeFailures, KtList<Grade>> failureOrGrades) = _$GradesReceived;

  Either<GradeFailures, KtList<Grade>> get failureOrGrades;
  $GradesReceivedCopyWith<GradesReceived> get copyWith;
}

abstract class $ChangeTermCopyWith<$Res> {
  factory $ChangeTermCopyWith(
          ChangeTerm value, $Res Function(ChangeTerm) then) =
      _$ChangeTermCopyWithImpl<$Res>;
  $Res call({Term term});
}

class _$ChangeTermCopyWithImpl<$Res>
    extends _$GradeWatcherEventCopyWithImpl<$Res>
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
    return 'GradeWatcherEvent.changeTerm(term: $term)';
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
    @required Result watchSubjectGradesStarted(Subject subject),
    @required
        Result gradesReceived(
            Either<GradeFailures, KtList<Grade>> failureOrGrades),
    @required Result changeTerm(Term term),
  }) {
    assert(watchSubjectGradesStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return changeTerm(term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchSubjectGradesStarted(Subject subject),
    Result gradesReceived(Either<GradeFailures, KtList<Grade>> failureOrGrades),
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
    @required Result watchSubjectGradesStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(watchSubjectGradesStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return changeTerm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchSubjectGradesStarted(WatchSubjectGradesStarted value),
    Result gradesReceived(GradesReceived value),
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

abstract class ChangeTerm implements GradeWatcherEvent {
  const factory ChangeTerm(Term term) = _$ChangeTerm;

  Term get term;
  $ChangeTermCopyWith<ChangeTerm> get copyWith;
}

class _$GradeWatcherStateTearOff {
  const _$GradeWatcherStateTearOff();

  Initial initial({Term term}) {
    return Initial(
      term: term,
    );
  }

  DataTransferInProgress loadInProgress({@required Term term}) {
    return DataTransferInProgress(
      term: term,
    );
  }

  LoadSuccess loadSuccess(
      {@required KtList<Grade> grades, @required Term term}) {
    return LoadSuccess(
      grades: grades,
      term: term,
    );
  }

  LoadFailure loadFailure(
      {@required GradeFailures gradeFailures, @required Term term}) {
    return LoadFailure(
      gradeFailures: gradeFailures,
      term: term,
    );
  }
}

// ignore: unused_element
const $GradeWatcherState = _$GradeWatcherStateTearOff();

mixin _$GradeWatcherState {
  Term get term;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required Result loadSuccess(KtList<Grade> grades, Term term),
    @required Result loadFailure(GradeFailures gradeFailures, Term term),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(KtList<Grade> grades, Term term),
    Result loadFailure(GradeFailures gradeFailures, Term term),
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

  $GradeWatcherStateCopyWith<GradeWatcherState> get copyWith;
}

abstract class $GradeWatcherStateCopyWith<$Res> {
  factory $GradeWatcherStateCopyWith(
          GradeWatcherState value, $Res Function(GradeWatcherState) then) =
      _$GradeWatcherStateCopyWithImpl<$Res>;
  $Res call({Term term});
}

class _$GradeWatcherStateCopyWithImpl<$Res>
    implements $GradeWatcherStateCopyWith<$Res> {
  _$GradeWatcherStateCopyWithImpl(this._value, this._then);

  final GradeWatcherState _value;
  // ignore: unused_field
  final $Res Function(GradeWatcherState) _then;

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
    implements $GradeWatcherStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Term term});
}

class _$InitialCopyWithImpl<$Res> extends _$GradeWatcherStateCopyWithImpl<$Res>
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
      term: term == freezed ? _value.term : term as Term,
    ));
  }
}

class _$Initial implements Initial {
  const _$Initial({this.term});

  @override
  final Term term;

  @override
  String toString() {
    return 'GradeWatcherState.initial(term: $term)';
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
    @required Result loadSuccess(KtList<Grade> grades, Term term),
    @required Result loadFailure(GradeFailures gradeFailures, Term term),
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
    Result loadSuccess(KtList<Grade> grades, Term term),
    Result loadFailure(GradeFailures gradeFailures, Term term),
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

abstract class Initial implements GradeWatcherState {
  const factory Initial({Term term}) = _$Initial;

  @override
  Term get term;
  @override
  $InitialCopyWith<Initial> get copyWith;
}

abstract class $DataTransferInProgressCopyWith<$Res>
    implements $GradeWatcherStateCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
  @override
  $Res call({Term term});
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$GradeWatcherStateCopyWithImpl<$Res>
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
    return 'GradeWatcherState.loadInProgress(term: $term)';
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
    @required Result loadSuccess(KtList<Grade> grades, Term term),
    @required Result loadFailure(GradeFailures gradeFailures, Term term),
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
    Result loadSuccess(KtList<Grade> grades, Term term),
    Result loadFailure(GradeFailures gradeFailures, Term term),
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

abstract class DataTransferInProgress implements GradeWatcherState {
  const factory DataTransferInProgress({@required Term term}) =
      _$DataTransferInProgress;

  @override
  Term get term;
  @override
  $DataTransferInProgressCopyWith<DataTransferInProgress> get copyWith;
}

abstract class $LoadSuccessCopyWith<$Res>
    implements $GradeWatcherStateCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call({KtList<Grade> grades, Term term});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$GradeWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object grades = freezed,
    Object term = freezed,
  }) {
    return _then(LoadSuccess(
      grades: grades == freezed ? _value.grades : grades as KtList<Grade>,
      term: term == freezed ? _value.term : term as Term,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess({@required this.grades, @required this.term})
      : assert(grades != null),
        assert(term != null);

  @override
  final KtList<Grade> grades;
  @override
  final Term term;

  @override
  String toString() {
    return 'GradeWatcherState.loadSuccess(grades: $grades, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.grades, grades) ||
                const DeepCollectionEquality().equals(other.grades, grades)) &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(grades) ^
      const DeepCollectionEquality().hash(term);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required Result loadSuccess(KtList<Grade> grades, Term term),
    @required Result loadFailure(GradeFailures gradeFailures, Term term),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(grades, term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(KtList<Grade> grades, Term term),
    Result loadFailure(GradeFailures gradeFailures, Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(grades, term);
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

abstract class LoadSuccess implements GradeWatcherState {
  const factory LoadSuccess(
      {@required KtList<Grade> grades, @required Term term}) = _$LoadSuccess;

  KtList<Grade> get grades;
  @override
  Term get term;
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res>
    implements $GradeWatcherStateCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({GradeFailures gradeFailures, Term term});

  $GradeFailuresCopyWith<$Res> get gradeFailures;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$GradeWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object gradeFailures = freezed,
    Object term = freezed,
  }) {
    return _then(LoadFailure(
      gradeFailures: gradeFailures == freezed
          ? _value.gradeFailures
          : gradeFailures as GradeFailures,
      term: term == freezed ? _value.term : term as Term,
    ));
  }

  @override
  $GradeFailuresCopyWith<$Res> get gradeFailures {
    if (_value.gradeFailures == null) {
      return null;
    }
    return $GradeFailuresCopyWith<$Res>(_value.gradeFailures, (value) {
      return _then(_value.copyWith(gradeFailures: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure({@required this.gradeFailures, @required this.term})
      : assert(gradeFailures != null),
        assert(term != null);

  @override
  final GradeFailures gradeFailures;
  @override
  final Term term;

  @override
  String toString() {
    return 'GradeWatcherState.loadFailure(gradeFailures: $gradeFailures, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.gradeFailures, gradeFailures) ||
                const DeepCollectionEquality()
                    .equals(other.gradeFailures, gradeFailures)) &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gradeFailures) ^
      const DeepCollectionEquality().hash(term);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required Result loadSuccess(KtList<Grade> grades, Term term),
    @required Result loadFailure(GradeFailures gradeFailures, Term term),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(gradeFailures, term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(KtList<Grade> grades, Term term),
    Result loadFailure(GradeFailures gradeFailures, Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(gradeFailures, term);
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

abstract class LoadFailure implements GradeWatcherState {
  const factory LoadFailure(
      {@required GradeFailures gradeFailures,
      @required Term term}) = _$LoadFailure;

  GradeFailures get gradeFailures;
  @override
  Term get term;
  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
