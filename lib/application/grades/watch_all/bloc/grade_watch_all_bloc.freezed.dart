// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'grade_watch_all_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GradeWatchAllEventTearOff {
  const _$GradeWatchAllEventTearOff();

  WatchSubjectGradesStarted watchAllStarted() {
    return const WatchSubjectGradesStarted();
  }

  GradesReceived gradesReceived(
      Either<SubjectFailures, KtList<Grade>> failureOrGrades) {
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
const $GradeWatchAllEvent = _$GradeWatchAllEventTearOff();

mixin _$GradeWatchAllEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result gradesReceived(
            Either<SubjectFailures, KtList<Grade>> failureOrGrades),
    @required Result changeTerm(Term term),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result gradesReceived(
        Either<SubjectFailures, KtList<Grade>> failureOrGrades),
    Result changeTerm(Term term),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(WatchSubjectGradesStarted value),
    Result gradesReceived(GradesReceived value),
    Result changeTerm(ChangeTerm value),
    @required Result orElse(),
  });
}

abstract class $GradeWatchAllEventCopyWith<$Res> {
  factory $GradeWatchAllEventCopyWith(
          GradeWatchAllEvent value, $Res Function(GradeWatchAllEvent) then) =
      _$GradeWatchAllEventCopyWithImpl<$Res>;
}

class _$GradeWatchAllEventCopyWithImpl<$Res>
    implements $GradeWatchAllEventCopyWith<$Res> {
  _$GradeWatchAllEventCopyWithImpl(this._value, this._then);

  final GradeWatchAllEvent _value;
  // ignore: unused_field
  final $Res Function(GradeWatchAllEvent) _then;
}

abstract class $WatchSubjectGradesStartedCopyWith<$Res> {
  factory $WatchSubjectGradesStartedCopyWith(WatchSubjectGradesStarted value,
          $Res Function(WatchSubjectGradesStarted) then) =
      _$WatchSubjectGradesStartedCopyWithImpl<$Res>;
}

class _$WatchSubjectGradesStartedCopyWithImpl<$Res>
    extends _$GradeWatchAllEventCopyWithImpl<$Res>
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
    return 'GradeWatchAllEvent.watchAllStarted()';
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
    @required Result watchAllStarted(),
    @required
        Result gradesReceived(
            Either<SubjectFailures, KtList<Grade>> failureOrGrades),
    @required Result changeTerm(Term term),
  }) {
    assert(watchAllStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result gradesReceived(
        Either<SubjectFailures, KtList<Grade>> failureOrGrades),
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
    @required Result watchAllStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(watchAllStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(WatchSubjectGradesStarted value),
    Result gradesReceived(GradesReceived value),
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

abstract class WatchSubjectGradesStarted implements GradeWatchAllEvent {
  const factory WatchSubjectGradesStarted() = _$WatchSubjectGradesStarted;
}

abstract class $GradesReceivedCopyWith<$Res> {
  factory $GradesReceivedCopyWith(
          GradesReceived value, $Res Function(GradesReceived) then) =
      _$GradesReceivedCopyWithImpl<$Res>;
  $Res call({Either<SubjectFailures, KtList<Grade>> failureOrGrades});
}

class _$GradesReceivedCopyWithImpl<$Res>
    extends _$GradeWatchAllEventCopyWithImpl<$Res>
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
          : failureOrGrades as Either<SubjectFailures, KtList<Grade>>,
    ));
  }
}

class _$GradesReceived implements GradesReceived {
  const _$GradesReceived(this.failureOrGrades)
      : assert(failureOrGrades != null);

  @override
  final Either<SubjectFailures, KtList<Grade>> failureOrGrades;

  @override
  String toString() {
    return 'GradeWatchAllEvent.gradesReceived(failureOrGrades: $failureOrGrades)';
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
    @required Result watchAllStarted(),
    @required
        Result gradesReceived(
            Either<SubjectFailures, KtList<Grade>> failureOrGrades),
    @required Result changeTerm(Term term),
  }) {
    assert(watchAllStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return gradesReceived(failureOrGrades);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result gradesReceived(
        Either<SubjectFailures, KtList<Grade>> failureOrGrades),
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
    @required Result watchAllStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(watchAllStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return gradesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(WatchSubjectGradesStarted value),
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

abstract class GradesReceived implements GradeWatchAllEvent {
  const factory GradesReceived(
          Either<SubjectFailures, KtList<Grade>> failureOrGrades) =
      _$GradesReceived;

  Either<SubjectFailures, KtList<Grade>> get failureOrGrades;
  $GradesReceivedCopyWith<GradesReceived> get copyWith;
}

abstract class $ChangeTermCopyWith<$Res> {
  factory $ChangeTermCopyWith(
          ChangeTerm value, $Res Function(ChangeTerm) then) =
      _$ChangeTermCopyWithImpl<$Res>;
  $Res call({Term term});
}

class _$ChangeTermCopyWithImpl<$Res>
    extends _$GradeWatchAllEventCopyWithImpl<$Res>
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
    return 'GradeWatchAllEvent.changeTerm(term: $term)';
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
        Result gradesReceived(
            Either<SubjectFailures, KtList<Grade>> failureOrGrades),
    @required Result changeTerm(Term term),
  }) {
    assert(watchAllStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return changeTerm(term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result gradesReceived(
        Either<SubjectFailures, KtList<Grade>> failureOrGrades),
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
    @required Result watchAllStarted(WatchSubjectGradesStarted value),
    @required Result gradesReceived(GradesReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(watchAllStarted != null);
    assert(gradesReceived != null);
    assert(changeTerm != null);
    return changeTerm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(WatchSubjectGradesStarted value),
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

abstract class ChangeTerm implements GradeWatchAllEvent {
  const factory ChangeTerm(Term term) = _$ChangeTerm;

  Term get term;
  $ChangeTermCopyWith<ChangeTerm> get copyWith;
}

class _$GradeWatchAllStateTearOff {
  const _$GradeWatchAllStateTearOff();

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
      @required Term term}) {
    return LoadSuccess(
      grades: grades,
      oralGrades: oralGrades,
      writtenGrades: writtenGrades,
      term: term,
    );
  }

  LoadFailure loadFailure(
      {@required SubjectFailures failures, @required Term term}) {
    return LoadFailure(
      failures: failures,
      term: term,
    );
  }
}

// ignore: unused_element
const $GradeWatchAllState = _$GradeWatchAllStateTearOff();

mixin _$GradeWatchAllState {
  Term get term;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required
        Result loadSuccess(KtList<Grade> grades, KtList<Grade> oralGrades,
            KtList<Grade> writtenGrades, Term term),
    @required Result loadFailure(SubjectFailures failures, Term term),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(KtList<Grade> grades, KtList<Grade> oralGrades,
        KtList<Grade> writtenGrades, Term term),
    Result loadFailure(SubjectFailures failures, Term term),
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

  $GradeWatchAllStateCopyWith<GradeWatchAllState> get copyWith;
}

abstract class $GradeWatchAllStateCopyWith<$Res> {
  factory $GradeWatchAllStateCopyWith(
          GradeWatchAllState value, $Res Function(GradeWatchAllState) then) =
      _$GradeWatchAllStateCopyWithImpl<$Res>;
  $Res call({Term term});
}

class _$GradeWatchAllStateCopyWithImpl<$Res>
    implements $GradeWatchAllStateCopyWith<$Res> {
  _$GradeWatchAllStateCopyWithImpl(this._value, this._then);

  final GradeWatchAllState _value;
  // ignore: unused_field
  final $Res Function(GradeWatchAllState) _then;

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
    implements $GradeWatchAllStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Term term});
}

class _$InitialCopyWithImpl<$Res> extends _$GradeWatchAllStateCopyWithImpl<$Res>
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
    return 'GradeWatchAllState.initial(term: $term)';
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
        Result loadSuccess(KtList<Grade> grades, KtList<Grade> oralGrades,
            KtList<Grade> writtenGrades, Term term),
    @required Result loadFailure(SubjectFailures failures, Term term),
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
    Result loadSuccess(KtList<Grade> grades, KtList<Grade> oralGrades,
        KtList<Grade> writtenGrades, Term term),
    Result loadFailure(SubjectFailures failures, Term term),
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

abstract class Initial implements GradeWatchAllState {
  const factory Initial({Term term}) = _$Initial;

  @override
  Term get term;
  @override
  $InitialCopyWith<Initial> get copyWith;
}

abstract class $DataTransferInProgressCopyWith<$Res>
    implements $GradeWatchAllStateCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
  @override
  $Res call({Term term});
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$GradeWatchAllStateCopyWithImpl<$Res>
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
    return 'GradeWatchAllState.loadInProgress(term: $term)';
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
        Result loadSuccess(KtList<Grade> grades, KtList<Grade> oralGrades,
            KtList<Grade> writtenGrades, Term term),
    @required Result loadFailure(SubjectFailures failures, Term term),
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
    Result loadSuccess(KtList<Grade> grades, KtList<Grade> oralGrades,
        KtList<Grade> writtenGrades, Term term),
    Result loadFailure(SubjectFailures failures, Term term),
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

abstract class DataTransferInProgress implements GradeWatchAllState {
  const factory DataTransferInProgress({@required Term term}) =
      _$DataTransferInProgress;

  @override
  Term get term;
  @override
  $DataTransferInProgressCopyWith<DataTransferInProgress> get copyWith;
}

abstract class $LoadSuccessCopyWith<$Res>
    implements $GradeWatchAllStateCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<Grade> grades,
      KtList<Grade> oralGrades,
      KtList<Grade> writtenGrades,
      Term term});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$GradeWatchAllStateCopyWithImpl<$Res>
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
      term: term == freezed ? _value.term : term as Term,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(
      {@required this.grades,
      @required this.oralGrades,
      @required this.writtenGrades,
      @required this.term})
      : assert(grades != null),
        assert(oralGrades != null),
        assert(writtenGrades != null),
        assert(term != null);

  @override
  final KtList<Grade> grades;
  @override
  final KtList<Grade> oralGrades;
  @override
  final KtList<Grade> writtenGrades;
  @override
  final Term term;

  @override
  String toString() {
    return 'GradeWatchAllState.loadSuccess(grades: $grades, oralGrades: $oralGrades, writtenGrades: $writtenGrades, term: $term)';
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
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(grades) ^
      const DeepCollectionEquality().hash(oralGrades) ^
      const DeepCollectionEquality().hash(writtenGrades) ^
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
        Result loadSuccess(KtList<Grade> grades, KtList<Grade> oralGrades,
            KtList<Grade> writtenGrades, Term term),
    @required Result loadFailure(SubjectFailures failures, Term term),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(grades, oralGrades, writtenGrades, term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(KtList<Grade> grades, KtList<Grade> oralGrades,
        KtList<Grade> writtenGrades, Term term),
    Result loadFailure(SubjectFailures failures, Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(grades, oralGrades, writtenGrades, term);
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

abstract class LoadSuccess implements GradeWatchAllState {
  const factory LoadSuccess(
      {@required KtList<Grade> grades,
      @required KtList<Grade> oralGrades,
      @required KtList<Grade> writtenGrades,
      @required Term term}) = _$LoadSuccess;

  KtList<Grade> get grades;
  KtList<Grade> get oralGrades;
  KtList<Grade> get writtenGrades;
  @override
  Term get term;
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res>
    implements $GradeWatchAllStateCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({SubjectFailures failures, Term term});

  $SubjectFailuresCopyWith<$Res> get failures;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$GradeWatchAllStateCopyWithImpl<$Res>
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
          failures == freezed ? _value.failures : failures as SubjectFailures,
      term: term == freezed ? _value.term : term as Term,
    ));
  }

  @override
  $SubjectFailuresCopyWith<$Res> get failures {
    if (_value.failures == null) {
      return null;
    }
    return $SubjectFailuresCopyWith<$Res>(_value.failures, (value) {
      return _then(_value.copyWith(failures: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure({@required this.failures, @required this.term})
      : assert(failures != null),
        assert(term != null);

  @override
  final SubjectFailures failures;
  @override
  final Term term;

  @override
  String toString() {
    return 'GradeWatchAllState.loadFailure(failures: $failures, term: $term)';
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
        Result loadSuccess(KtList<Grade> grades, KtList<Grade> oralGrades,
            KtList<Grade> writtenGrades, Term term),
    @required Result loadFailure(SubjectFailures failures, Term term),
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
    Result loadSuccess(KtList<Grade> grades, KtList<Grade> oralGrades,
        KtList<Grade> writtenGrades, Term term),
    Result loadFailure(SubjectFailures failures, Term term),
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

abstract class LoadFailure implements GradeWatchAllState {
  const factory LoadFailure(
      {@required SubjectFailures failures,
      @required Term term}) = _$LoadFailure;

  SubjectFailures get failures;
  @override
  Term get term;
  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
