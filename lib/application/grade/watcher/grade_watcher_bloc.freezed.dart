// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'grade_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SingleGradeWatcherEventTearOff {
  const _$SingleGradeWatcherEventTearOff();

  WatchSubjectGradesStarted watchGradeStarted(Grade grade) {
    return WatchSubjectGradesStarted(
      grade,
    );
  }

  GradesReceived gradesReceived(Either<GradeFailures, Grade> failureOrGrade) {
    return GradesReceived(
      failureOrGrade,
    );
  }

  ChangeTerm changeTerm(Term term) {
    return ChangeTerm(
      term,
    );
  }
}

// ignore: unused_element
const $SingleGradeWatcherEvent = _$SingleGradeWatcherEventTearOff();

mixin _$SingleGradeWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchGradeStarted(Grade grade),
    @required
        Result gradesReceived(Either<GradeFailures, Grade> failureOrGrade),
    @required Result changeTerm(Term term),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchGradeStarted(Grade grade),
    Result gradesReceived(Either<GradeFailures, Grade> failureOrGrade),
    Result changeTerm(Term term),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchGradeStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchGradeStarted(WatchSubjectGradesStarted value),
    Result gradesReceived(GradesReceived value),
    Result changeTerm(ChangeTerm value),
    @required Result orElse(),
  });
}

abstract class $SingleGradeWatcherEventCopyWith<$Res> {
  factory $SingleGradeWatcherEventCopyWith(SingleGradeWatcherEvent value,
          $Res Function(SingleGradeWatcherEvent) then) =
      _$SingleGradeWatcherEventCopyWithImpl<$Res>;
}

class _$SingleGradeWatcherEventCopyWithImpl<$Res>
    implements $SingleGradeWatcherEventCopyWith<$Res> {
  _$SingleGradeWatcherEventCopyWithImpl(this._value, this._then);

  final SingleGradeWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(SingleGradeWatcherEvent) _then;
}

abstract class $WatchSubjectGradesStartedCopyWith<$Res> {
  factory $WatchSubjectGradesStartedCopyWith(WatchSubjectGradesStarted value,
          $Res Function(WatchSubjectGradesStarted) then) =
      _$WatchSubjectGradesStartedCopyWithImpl<$Res>;
  $Res call({Grade grade});

  $GradeCopyWith<$Res> get grade;
}

class _$WatchSubjectGradesStartedCopyWithImpl<$Res>
    extends _$SingleGradeWatcherEventCopyWithImpl<$Res>
    implements $WatchSubjectGradesStartedCopyWith<$Res> {
  _$WatchSubjectGradesStartedCopyWithImpl(WatchSubjectGradesStarted _value,
      $Res Function(WatchSubjectGradesStarted) _then)
      : super(_value, (v) => _then(v as WatchSubjectGradesStarted));

  @override
  WatchSubjectGradesStarted get _value =>
      super._value as WatchSubjectGradesStarted;

  @override
  $Res call({
    Object grade = freezed,
  }) {
    return _then(WatchSubjectGradesStarted(
      grade == freezed ? _value.grade : grade as Grade,
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

class _$WatchSubjectGradesStarted implements WatchSubjectGradesStarted {
  const _$WatchSubjectGradesStarted(this.grade) : assert(grade != null);

  @override
  final Grade grade;

  @override
  String toString() {
    return 'SingleGradeWatcherEvent.watchGradeStarted(grade: $grade)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WatchSubjectGradesStarted &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(grade);

  @override
  $WatchSubjectGradesStartedCopyWith<WatchSubjectGradesStarted> get copyWith =>
      _$WatchSubjectGradesStartedCopyWithImpl<WatchSubjectGradesStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchGradeStarted(Grade grade),
    @required
        Result gradesReceived(Either<GradeFailures, Grade> failureOrGrade),
    @required Result changeTerm(Term term),
  }) {
    assert(watchGradeStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return watchGradeStarted(grade);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchGradeStarted(Grade grade),
    Result gradesReceived(Either<GradeFailures, Grade> failureOrGrade),
    Result changeTerm(Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchGradeStarted != null) {
      return watchGradeStarted(grade);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchGradeStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(watchGradeStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return watchGradeStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchGradeStarted(WatchSubjectGradesStarted value),
    Result gradesReceived(GradesReceived value),
    Result changeTerm(ChangeTerm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchGradeStarted != null) {
      return watchGradeStarted(this);
    }
    return orElse();
  }
}

abstract class WatchSubjectGradesStarted implements SingleGradeWatcherEvent {
  const factory WatchSubjectGradesStarted(Grade grade) =
      _$WatchSubjectGradesStarted;

  Grade get grade;
  $WatchSubjectGradesStartedCopyWith<WatchSubjectGradesStarted> get copyWith;
}

abstract class $GradesReceivedCopyWith<$Res> {
  factory $GradesReceivedCopyWith(
          GradesReceived value, $Res Function(GradesReceived) then) =
      _$GradesReceivedCopyWithImpl<$Res>;
  $Res call({Either<GradeFailures, Grade> failureOrGrade});
}

class _$GradesReceivedCopyWithImpl<$Res>
    extends _$SingleGradeWatcherEventCopyWithImpl<$Res>
    implements $GradesReceivedCopyWith<$Res> {
  _$GradesReceivedCopyWithImpl(
      GradesReceived _value, $Res Function(GradesReceived) _then)
      : super(_value, (v) => _then(v as GradesReceived));

  @override
  GradesReceived get _value => super._value as GradesReceived;

  @override
  $Res call({
    Object failureOrGrade = freezed,
  }) {
    return _then(GradesReceived(
      failureOrGrade == freezed
          ? _value.failureOrGrade
          : failureOrGrade as Either<GradeFailures, Grade>,
    ));
  }
}

class _$GradesReceived implements GradesReceived {
  const _$GradesReceived(this.failureOrGrade) : assert(failureOrGrade != null);

  @override
  final Either<GradeFailures, Grade> failureOrGrade;

  @override
  String toString() {
    return 'SingleGradeWatcherEvent.gradesReceived(failureOrGrade: $failureOrGrade)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GradesReceived &&
            (identical(other.failureOrGrade, failureOrGrade) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrGrade, failureOrGrade)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrGrade);

  @override
  $GradesReceivedCopyWith<GradesReceived> get copyWith =>
      _$GradesReceivedCopyWithImpl<GradesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchGradeStarted(Grade grade),
    @required
        Result gradesReceived(Either<GradeFailures, Grade> failureOrGrade),
    @required Result changeTerm(Term term),
  }) {
    assert(watchGradeStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return gradesReceived(failureOrGrade);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchGradeStarted(Grade grade),
    Result gradesReceived(Either<GradeFailures, Grade> failureOrGrade),
    Result changeTerm(Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradesReceived != null) {
      return gradesReceived(failureOrGrade);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchGradeStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(watchGradeStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return gradesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchGradeStarted(WatchSubjectGradesStarted value),
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

abstract class GradesReceived implements SingleGradeWatcherEvent {
  const factory GradesReceived(Either<GradeFailures, Grade> failureOrGrade) =
      _$GradesReceived;

  Either<GradeFailures, Grade> get failureOrGrade;
  $GradesReceivedCopyWith<GradesReceived> get copyWith;
}

abstract class $ChangeTermCopyWith<$Res> {
  factory $ChangeTermCopyWith(
          ChangeTerm value, $Res Function(ChangeTerm) then) =
      _$ChangeTermCopyWithImpl<$Res>;
  $Res call({Term term});
}

class _$ChangeTermCopyWithImpl<$Res>
    extends _$SingleGradeWatcherEventCopyWithImpl<$Res>
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
    return 'SingleGradeWatcherEvent.changeTerm(term: $term)';
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
    @required Result watchGradeStarted(Grade grade),
    @required
        Result gradesReceived(Either<GradeFailures, Grade> failureOrGrade),
    @required Result changeTerm(Term term),
  }) {
    assert(watchGradeStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return changeTerm(term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchGradeStarted(Grade grade),
    Result gradesReceived(Either<GradeFailures, Grade> failureOrGrade),
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
    @required Result watchGradeStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(watchGradeStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return changeTerm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchGradeStarted(WatchSubjectGradesStarted value),
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

abstract class ChangeTerm implements SingleGradeWatcherEvent {
  const factory ChangeTerm(Term term) = _$ChangeTerm;

  Term get term;
  $ChangeTermCopyWith<ChangeTerm> get copyWith;
}

class _$SingleGradeWatcherStateTearOff {
  const _$SingleGradeWatcherStateTearOff();

  Initial initial({@required Term term}) {
    return Initial(
      term: term,
    );
  }

  DataTransferInProgress loadInProgress({@required Term term}) {
    return DataTransferInProgress(
      term: term,
    );
  }

  LoadSuccess loadSuccess({@required Grade grade, @required Term term}) {
    return LoadSuccess(
      grade: grade,
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
const $SingleGradeWatcherState = _$SingleGradeWatcherStateTearOff();

mixin _$SingleGradeWatcherState {
  Term get term;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required Result loadSuccess(Grade grade, Term term),
    @required Result loadFailure(GradeFailures gradeFailures, Term term),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(Grade grade, Term term),
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

  $SingleGradeWatcherStateCopyWith<SingleGradeWatcherState> get copyWith;
}

abstract class $SingleGradeWatcherStateCopyWith<$Res> {
  factory $SingleGradeWatcherStateCopyWith(SingleGradeWatcherState value,
          $Res Function(SingleGradeWatcherState) then) =
      _$SingleGradeWatcherStateCopyWithImpl<$Res>;
  $Res call({Term term});
}

class _$SingleGradeWatcherStateCopyWithImpl<$Res>
    implements $SingleGradeWatcherStateCopyWith<$Res> {
  _$SingleGradeWatcherStateCopyWithImpl(this._value, this._then);

  final SingleGradeWatcherState _value;
  // ignore: unused_field
  final $Res Function(SingleGradeWatcherState) _then;

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
    implements $SingleGradeWatcherStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Term term});
}

class _$InitialCopyWithImpl<$Res>
    extends _$SingleGradeWatcherStateCopyWithImpl<$Res>
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
  const _$Initial({@required this.term}) : assert(term != null);

  @override
  final Term term;

  @override
  String toString() {
    return 'SingleGradeWatcherState.initial(term: $term)';
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
    @required Result loadSuccess(Grade grade, Term term),
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
    Result loadSuccess(Grade grade, Term term),
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

abstract class Initial implements SingleGradeWatcherState {
  const factory Initial({@required Term term}) = _$Initial;

  @override
  Term get term;
  @override
  $InitialCopyWith<Initial> get copyWith;
}

abstract class $DataTransferInProgressCopyWith<$Res>
    implements $SingleGradeWatcherStateCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
  @override
  $Res call({Term term});
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$SingleGradeWatcherStateCopyWithImpl<$Res>
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
    return 'SingleGradeWatcherState.loadInProgress(term: $term)';
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
    @required Result loadSuccess(Grade grade, Term term),
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
    Result loadSuccess(Grade grade, Term term),
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

abstract class DataTransferInProgress implements SingleGradeWatcherState {
  const factory DataTransferInProgress({@required Term term}) =
      _$DataTransferInProgress;

  @override
  Term get term;
  @override
  $DataTransferInProgressCopyWith<DataTransferInProgress> get copyWith;
}

abstract class $LoadSuccessCopyWith<$Res>
    implements $SingleGradeWatcherStateCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Grade grade, Term term});

  $GradeCopyWith<$Res> get grade;
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$SingleGradeWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object grade = freezed,
    Object term = freezed,
  }) {
    return _then(LoadSuccess(
      grade: grade == freezed ? _value.grade : grade as Grade,
      term: term == freezed ? _value.term : term as Term,
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

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess({@required this.grade, @required this.term})
      : assert(grade != null),
        assert(term != null);

  @override
  final Grade grade;
  @override
  final Term term;

  @override
  String toString() {
    return 'SingleGradeWatcherState.loadSuccess(grade: $grade, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)) &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(grade) ^
      const DeepCollectionEquality().hash(term);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required Result loadSuccess(Grade grade, Term term),
    @required Result loadFailure(GradeFailures gradeFailures, Term term),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(grade, term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(Grade grade, Term term),
    Result loadFailure(GradeFailures gradeFailures, Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(grade, term);
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

abstract class LoadSuccess implements SingleGradeWatcherState {
  const factory LoadSuccess({@required Grade grade, @required Term term}) =
      _$LoadSuccess;

  Grade get grade;
  @override
  Term get term;
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res>
    implements $SingleGradeWatcherStateCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({GradeFailures gradeFailures, Term term});

  $GradeFailuresCopyWith<$Res> get gradeFailures;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$SingleGradeWatcherStateCopyWithImpl<$Res>
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
    return 'SingleGradeWatcherState.loadFailure(gradeFailures: $gradeFailures, term: $term)';
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
    @required Result loadSuccess(Grade grade, Term term),
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
    Result loadSuccess(Grade grade, Term term),
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

abstract class LoadFailure implements SingleGradeWatcherState {
  const factory LoadFailure(
      {@required GradeFailures gradeFailures,
      @required Term term}) = _$LoadFailure;

  GradeFailures get gradeFailures;
  @override
  Term get term;
  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
