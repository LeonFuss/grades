// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'statistic_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StatisticEventTearOff {
  const _$StatisticEventTearOff();

  WatchSubjectGradesStarted statisticStarted() {
    return const WatchSubjectGradesStarted();
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
const $StatisticEvent = _$StatisticEventTearOff();

mixin _$StatisticEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result statisticStarted(),
    @required
        Result gradesReceived(
            Either<GradeFailures, KtList<Grade>> failureOrGrades),
    @required Result changeTerm(Term term),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result statisticStarted(),
    Result gradesReceived(Either<GradeFailures, KtList<Grade>> failureOrGrades),
    Result changeTerm(Term term),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result statisticStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result statisticStarted(WatchSubjectGradesStarted value),
    Result gradesReceived(GradesReceived value),
    Result changeTerm(ChangeTerm value),
    @required Result orElse(),
  });
}

abstract class $StatisticEventCopyWith<$Res> {
  factory $StatisticEventCopyWith(
          StatisticEvent value, $Res Function(StatisticEvent) then) =
      _$StatisticEventCopyWithImpl<$Res>;
}

class _$StatisticEventCopyWithImpl<$Res>
    implements $StatisticEventCopyWith<$Res> {
  _$StatisticEventCopyWithImpl(this._value, this._then);

  final StatisticEvent _value;
  // ignore: unused_field
  final $Res Function(StatisticEvent) _then;
}

abstract class $WatchSubjectGradesStartedCopyWith<$Res> {
  factory $WatchSubjectGradesStartedCopyWith(WatchSubjectGradesStarted value,
          $Res Function(WatchSubjectGradesStarted) then) =
      _$WatchSubjectGradesStartedCopyWithImpl<$Res>;
}

class _$WatchSubjectGradesStartedCopyWithImpl<$Res>
    extends _$StatisticEventCopyWithImpl<$Res>
    implements $WatchSubjectGradesStartedCopyWith<$Res> {
  _$WatchSubjectGradesStartedCopyWithImpl(WatchSubjectGradesStarted _value,
      $Res Function(WatchSubjectGradesStarted) _then)
      : super(_value, (v) => _then(v as WatchSubjectGradesStarted));

  @override
  WatchSubjectGradesStarted get _value =>
      super._value as WatchSubjectGradesStarted;
}

class _$WatchSubjectGradesStarted implements WatchSubjectGradesStarted {
  const _$WatchSubjectGradesStarted();

  @override
  String toString() {
    return 'StatisticEvent.statisticStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WatchSubjectGradesStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result statisticStarted(),
    @required
        Result gradesReceived(
            Either<GradeFailures, KtList<Grade>> failureOrGrades),
    @required Result changeTerm(Term term),
  }) {
    assert(statisticStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return statisticStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result statisticStarted(),
    Result gradesReceived(Either<GradeFailures, KtList<Grade>> failureOrGrades),
    Result changeTerm(Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (statisticStarted != null) {
      return statisticStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result statisticStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(statisticStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return statisticStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result statisticStarted(WatchSubjectGradesStarted value),
    Result gradesReceived(GradesReceived value),
    Result changeTerm(ChangeTerm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (statisticStarted != null) {
      return statisticStarted(this);
    }
    return orElse();
  }
}

abstract class WatchSubjectGradesStarted implements StatisticEvent {
  const factory WatchSubjectGradesStarted() = _$WatchSubjectGradesStarted;
}

abstract class $GradesReceivedCopyWith<$Res> {
  factory $GradesReceivedCopyWith(
          GradesReceived value, $Res Function(GradesReceived) then) =
      _$GradesReceivedCopyWithImpl<$Res>;
  $Res call({Either<GradeFailures, KtList<Grade>> failureOrGrades});
}

class _$GradesReceivedCopyWithImpl<$Res>
    extends _$StatisticEventCopyWithImpl<$Res>
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
    return 'StatisticEvent.gradesReceived(failureOrGrades: $failureOrGrades)';
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
    @required Result statisticStarted(),
    @required
        Result gradesReceived(
            Either<GradeFailures, KtList<Grade>> failureOrGrades),
    @required Result changeTerm(Term term),
  }) {
    assert(statisticStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return gradesReceived(failureOrGrades);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result statisticStarted(),
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
    @required Result statisticStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(statisticStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return gradesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result statisticStarted(WatchSubjectGradesStarted value),
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

abstract class GradesReceived implements StatisticEvent {
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

class _$ChangeTermCopyWithImpl<$Res> extends _$StatisticEventCopyWithImpl<$Res>
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
    return 'StatisticEvent.changeTerm(term: $term)';
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
    @required Result statisticStarted(),
    @required
        Result gradesReceived(
            Either<GradeFailures, KtList<Grade>> failureOrGrades),
    @required Result changeTerm(Term term),
  }) {
    assert(statisticStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return changeTerm(term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result statisticStarted(),
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
    @required Result statisticStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(statisticStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return changeTerm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result statisticStarted(WatchSubjectGradesStarted value),
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

abstract class ChangeTerm implements StatisticEvent {
  const factory ChangeTerm(Term term) = _$ChangeTerm;

  Term get term;
  $ChangeTermCopyWith<ChangeTerm> get copyWith;
}

class _$StatisticStateTearOff {
  const _$StatisticStateTearOff();

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
      {@required KtList<Grade> grades,
      @required KtList<Grade> oralGrades,
      @required KtList<Grade> writtenGrades,
      @required Option<Subject> bestSubject,
      @required String bestSubjectName,
      @required String bestSubjectAverage,
      @required Option<Subject> worseSubject,
      @required String worseSubjectName,
      @required String worseSubjectAverage,
      @required String gradeAverage,
      @required Term term}) {
    return LoadSuccess(
      grades: grades,
      oralGrades: oralGrades,
      writtenGrades: writtenGrades,
      bestSubject: bestSubject,
      bestSubjectName: bestSubjectName,
      bestSubjectAverage: bestSubjectAverage,
      worseSubject: worseSubject,
      worseSubjectName: worseSubjectName,
      worseSubjectAverage: worseSubjectAverage,
      gradeAverage: gradeAverage,
      term: term,
    );
  }

  LoadFailure loadFailure(
      {@required GradeFailures failures, @required Term term}) {
    return LoadFailure(
      failures: failures,
      term: term,
    );
  }
}

// ignore: unused_element
const $StatisticState = _$StatisticStateTearOff();

mixin _$StatisticState {
  Term get term;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required
        Result loadSuccess(
            KtList<Grade> grades,
            KtList<Grade> oralGrades,
            KtList<Grade> writtenGrades,
            Option<Subject> bestSubject,
            String bestSubjectName,
            String bestSubjectAverage,
            Option<Subject> worseSubject,
            String worseSubjectName,
            String worseSubjectAverage,
            String gradeAverage,
            Term term),
    @required Result loadFailure(GradeFailures failures, Term term),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(
        KtList<Grade> grades,
        KtList<Grade> oralGrades,
        KtList<Grade> writtenGrades,
        Option<Subject> bestSubject,
        String bestSubjectName,
        String bestSubjectAverage,
        Option<Subject> worseSubject,
        String worseSubjectName,
        String worseSubjectAverage,
        String gradeAverage,
        Term term),
    Result loadFailure(GradeFailures failures, Term term),
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

  $StatisticStateCopyWith<StatisticState> get copyWith;
}

abstract class $StatisticStateCopyWith<$Res> {
  factory $StatisticStateCopyWith(
          StatisticState value, $Res Function(StatisticState) then) =
      _$StatisticStateCopyWithImpl<$Res>;
  $Res call({Term term});
}

class _$StatisticStateCopyWithImpl<$Res>
    implements $StatisticStateCopyWith<$Res> {
  _$StatisticStateCopyWithImpl(this._value, this._then);

  final StatisticState _value;
  // ignore: unused_field
  final $Res Function(StatisticState) _then;

  @override
  $Res call({
    Object term = freezed,
  }) {
    return _then(_value.copyWith(
      term: term == freezed ? _value.term : term as Term,
    ));
  }
}

abstract class $InitialCopyWith<$Res> implements $StatisticStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Term term});
}

class _$InitialCopyWithImpl<$Res> extends _$StatisticStateCopyWithImpl<$Res>
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
    return 'StatisticState.initial(term: $term)';
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
    @required
        Result loadSuccess(
            KtList<Grade> grades,
            KtList<Grade> oralGrades,
            KtList<Grade> writtenGrades,
            Option<Subject> bestSubject,
            String bestSubjectName,
            String bestSubjectAverage,
            Option<Subject> worseSubject,
            String worseSubjectName,
            String worseSubjectAverage,
            String gradeAverage,
            Term term),
    @required Result loadFailure(GradeFailures failures, Term term),
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
    Result loadSuccess(
        KtList<Grade> grades,
        KtList<Grade> oralGrades,
        KtList<Grade> writtenGrades,
        Option<Subject> bestSubject,
        String bestSubjectName,
        String bestSubjectAverage,
        Option<Subject> worseSubject,
        String worseSubjectName,
        String worseSubjectAverage,
        String gradeAverage,
        Term term),
    Result loadFailure(GradeFailures failures, Term term),
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

abstract class Initial implements StatisticState {
  const factory Initial({Term term}) = _$Initial;

  @override
  Term get term;
  @override
  $InitialCopyWith<Initial> get copyWith;
}

abstract class $DataTransferInProgressCopyWith<$Res>
    implements $StatisticStateCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
  @override
  $Res call({Term term});
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$StatisticStateCopyWithImpl<$Res>
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
    return 'StatisticState.loadInProgress(term: $term)';
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
    @required
        Result loadSuccess(
            KtList<Grade> grades,
            KtList<Grade> oralGrades,
            KtList<Grade> writtenGrades,
            Option<Subject> bestSubject,
            String bestSubjectName,
            String bestSubjectAverage,
            Option<Subject> worseSubject,
            String worseSubjectName,
            String worseSubjectAverage,
            String gradeAverage,
            Term term),
    @required Result loadFailure(GradeFailures failures, Term term),
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
    Result loadSuccess(
        KtList<Grade> grades,
        KtList<Grade> oralGrades,
        KtList<Grade> writtenGrades,
        Option<Subject> bestSubject,
        String bestSubjectName,
        String bestSubjectAverage,
        Option<Subject> worseSubject,
        String worseSubjectName,
        String worseSubjectAverage,
        String gradeAverage,
        Term term),
    Result loadFailure(GradeFailures failures, Term term),
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

abstract class DataTransferInProgress implements StatisticState {
  const factory DataTransferInProgress({@required Term term}) =
      _$DataTransferInProgress;

  @override
  Term get term;
  @override
  $DataTransferInProgressCopyWith<DataTransferInProgress> get copyWith;
}

abstract class $LoadSuccessCopyWith<$Res>
    implements $StatisticStateCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<Grade> grades,
      KtList<Grade> oralGrades,
      KtList<Grade> writtenGrades,
      Option<Subject> bestSubject,
      String bestSubjectName,
      String bestSubjectAverage,
      Option<Subject> worseSubject,
      String worseSubjectName,
      String worseSubjectAverage,
      String gradeAverage,
      Term term});
}

class _$LoadSuccessCopyWithImpl<$Res> extends _$StatisticStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object grades = freezed,
    Object oralGrades = freezed,
    Object writtenGrades = freezed,
    Object bestSubject = freezed,
    Object bestSubjectName = freezed,
    Object bestSubjectAverage = freezed,
    Object worseSubject = freezed,
    Object worseSubjectName = freezed,
    Object worseSubjectAverage = freezed,
    Object gradeAverage = freezed,
    Object term = freezed,
  }) {
    return _then(LoadSuccess(
      grades: grades == freezed ? _value.grades : grades as KtList<Grade>,
      oralGrades: oralGrades == freezed
          ? _value.oralGrades
          : oralGrades as KtList<Grade>,
      writtenGrades: writtenGrades == freezed
          ? _value.writtenGrades
          : writtenGrades as KtList<Grade>,
      bestSubject: bestSubject == freezed
          ? _value.bestSubject
          : bestSubject as Option<Subject>,
      bestSubjectName: bestSubjectName == freezed
          ? _value.bestSubjectName
          : bestSubjectName as String,
      bestSubjectAverage: bestSubjectAverage == freezed
          ? _value.bestSubjectAverage
          : bestSubjectAverage as String,
      worseSubject: worseSubject == freezed
          ? _value.worseSubject
          : worseSubject as Option<Subject>,
      worseSubjectName: worseSubjectName == freezed
          ? _value.worseSubjectName
          : worseSubjectName as String,
      worseSubjectAverage: worseSubjectAverage == freezed
          ? _value.worseSubjectAverage
          : worseSubjectAverage as String,
      gradeAverage: gradeAverage == freezed
          ? _value.gradeAverage
          : gradeAverage as String,
      term: term == freezed ? _value.term : term as Term,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(
      {@required this.grades,
      @required this.oralGrades,
      @required this.writtenGrades,
      @required this.bestSubject,
      @required this.bestSubjectName,
      @required this.bestSubjectAverage,
      @required this.worseSubject,
      @required this.worseSubjectName,
      @required this.worseSubjectAverage,
      @required this.gradeAverage,
      @required this.term})
      : assert(grades != null),
        assert(oralGrades != null),
        assert(writtenGrades != null),
        assert(bestSubject != null),
        assert(bestSubjectName != null),
        assert(bestSubjectAverage != null),
        assert(worseSubject != null),
        assert(worseSubjectName != null),
        assert(worseSubjectAverage != null),
        assert(gradeAverage != null),
        assert(term != null);

  @override
  final KtList<Grade> grades;
  @override
  final KtList<Grade> oralGrades;
  @override
  final KtList<Grade> writtenGrades;
  @override
  final Option<Subject> bestSubject;
  @override
  final String bestSubjectName;
  @override
  final String bestSubjectAverage;
  @override
  final Option<Subject> worseSubject;
  @override
  final String worseSubjectName;
  @override
  final String worseSubjectAverage;
  @override
  final String gradeAverage;
  @override
  final Term term;

  @override
  String toString() {
    return 'StatisticState.loadSuccess(grades: $grades, oralGrades: $oralGrades, writtenGrades: $writtenGrades, bestSubject: $bestSubject, bestSubjectName: $bestSubjectName, bestSubjectAverage: $bestSubjectAverage, worseSubject: $worseSubject, worseSubjectName: $worseSubjectName, worseSubjectAverage: $worseSubjectAverage, gradeAverage: $gradeAverage, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.grades, grades) ||
                const DeepCollectionEquality().equals(other.grades, grades)) &&
            (identical(other.oralGrades, oralGrades) ||
                const DeepCollectionEquality()
                    .equals(other.oralGrades, oralGrades)) &&
            (identical(other.writtenGrades, writtenGrades) ||
                const DeepCollectionEquality()
                    .equals(other.writtenGrades, writtenGrades)) &&
            (identical(other.bestSubject, bestSubject) ||
                const DeepCollectionEquality()
                    .equals(other.bestSubject, bestSubject)) &&
            (identical(other.bestSubjectName, bestSubjectName) ||
                const DeepCollectionEquality()
                    .equals(other.bestSubjectName, bestSubjectName)) &&
            (identical(other.bestSubjectAverage, bestSubjectAverage) ||
                const DeepCollectionEquality()
                    .equals(other.bestSubjectAverage, bestSubjectAverage)) &&
            (identical(other.worseSubject, worseSubject) ||
                const DeepCollectionEquality()
                    .equals(other.worseSubject, worseSubject)) &&
            (identical(other.worseSubjectName, worseSubjectName) ||
                const DeepCollectionEquality()
                    .equals(other.worseSubjectName, worseSubjectName)) &&
            (identical(other.worseSubjectAverage, worseSubjectAverage) ||
                const DeepCollectionEquality()
                    .equals(other.worseSubjectAverage, worseSubjectAverage)) &&
            (identical(other.gradeAverage, gradeAverage) ||
                const DeepCollectionEquality()
                    .equals(other.gradeAverage, gradeAverage)) &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(grades) ^
      const DeepCollectionEquality().hash(oralGrades) ^
      const DeepCollectionEquality().hash(writtenGrades) ^
      const DeepCollectionEquality().hash(bestSubject) ^
      const DeepCollectionEquality().hash(bestSubjectName) ^
      const DeepCollectionEquality().hash(bestSubjectAverage) ^
      const DeepCollectionEquality().hash(worseSubject) ^
      const DeepCollectionEquality().hash(worseSubjectName) ^
      const DeepCollectionEquality().hash(worseSubjectAverage) ^
      const DeepCollectionEquality().hash(gradeAverage) ^
      const DeepCollectionEquality().hash(term);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required
        Result loadSuccess(
            KtList<Grade> grades,
            KtList<Grade> oralGrades,
            KtList<Grade> writtenGrades,
            Option<Subject> bestSubject,
            String bestSubjectName,
            String bestSubjectAverage,
            Option<Subject> worseSubject,
            String worseSubjectName,
            String worseSubjectAverage,
            String gradeAverage,
            Term term),
    @required Result loadFailure(GradeFailures failures, Term term),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(
        grades,
        oralGrades,
        writtenGrades,
        bestSubject,
        bestSubjectName,
        bestSubjectAverage,
        worseSubject,
        worseSubjectName,
        worseSubjectAverage,
        gradeAverage,
        term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(
        KtList<Grade> grades,
        KtList<Grade> oralGrades,
        KtList<Grade> writtenGrades,
        Option<Subject> bestSubject,
        String bestSubjectName,
        String bestSubjectAverage,
        Option<Subject> worseSubject,
        String worseSubjectName,
        String worseSubjectAverage,
        String gradeAverage,
        Term term),
    Result loadFailure(GradeFailures failures, Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(
          grades,
          oralGrades,
          writtenGrades,
          bestSubject,
          bestSubjectName,
          bestSubjectAverage,
          worseSubject,
          worseSubjectName,
          worseSubjectAverage,
          gradeAverage,
          term);
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

abstract class LoadSuccess implements StatisticState {
  const factory LoadSuccess(
      {@required KtList<Grade> grades,
      @required KtList<Grade> oralGrades,
      @required KtList<Grade> writtenGrades,
      @required Option<Subject> bestSubject,
      @required String bestSubjectName,
      @required String bestSubjectAverage,
      @required Option<Subject> worseSubject,
      @required String worseSubjectName,
      @required String worseSubjectAverage,
      @required String gradeAverage,
      @required Term term}) = _$LoadSuccess;

  KtList<Grade> get grades;
  KtList<Grade> get oralGrades;
  KtList<Grade> get writtenGrades;
  Option<Subject> get bestSubject;
  String get bestSubjectName;
  String get bestSubjectAverage;
  Option<Subject> get worseSubject;
  String get worseSubjectName;
  String get worseSubjectAverage;
  String get gradeAverage;
  @override
  Term get term;
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res>
    implements $StatisticStateCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({GradeFailures failures, Term term});

  $GradeFailuresCopyWith<$Res> get failures;
}

class _$LoadFailureCopyWithImpl<$Res> extends _$StatisticStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object failures = freezed,
    Object term = freezed,
  }) {
    return _then(LoadFailure(
      failures:
          failures == freezed ? _value.failures : failures as GradeFailures,
      term: term == freezed ? _value.term : term as Term,
    ));
  }

  @override
  $GradeFailuresCopyWith<$Res> get failures {
    if (_value.failures == null) {
      return null;
    }
    return $GradeFailuresCopyWith<$Res>(_value.failures, (value) {
      return _then(_value.copyWith(failures: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure({@required this.failures, @required this.term})
      : assert(failures != null),
        assert(term != null);

  @override
  final GradeFailures failures;
  @override
  final Term term;

  @override
  String toString() {
    return 'StatisticState.loadFailure(failures: $failures, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.failures, failures) ||
                const DeepCollectionEquality()
                    .equals(other.failures, failures)) &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failures) ^
      const DeepCollectionEquality().hash(term);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required
        Result loadSuccess(
            KtList<Grade> grades,
            KtList<Grade> oralGrades,
            KtList<Grade> writtenGrades,
            Option<Subject> bestSubject,
            String bestSubjectName,
            String bestSubjectAverage,
            Option<Subject> worseSubject,
            String worseSubjectName,
            String worseSubjectAverage,
            String gradeAverage,
            Term term),
    @required Result loadFailure(GradeFailures failures, Term term),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failures, term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(
        KtList<Grade> grades,
        KtList<Grade> oralGrades,
        KtList<Grade> writtenGrades,
        Option<Subject> bestSubject,
        String bestSubjectName,
        String bestSubjectAverage,
        Option<Subject> worseSubject,
        String worseSubjectName,
        String worseSubjectAverage,
        String gradeAverage,
        Term term),
    Result loadFailure(GradeFailures failures, Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failures, term);
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

abstract class LoadFailure implements StatisticState {
  const factory LoadFailure(
      {@required GradeFailures failures, @required Term term}) = _$LoadFailure;

  GradeFailures get failures;
  @override
  Term get term;
  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
