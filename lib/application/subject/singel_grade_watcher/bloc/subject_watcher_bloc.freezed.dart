// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'subject_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SingleSubjectWatcherEventTearOff {
  const _$SingleSubjectWatcherEventTearOff();

  WatchSubjectSubjectsStarted watchSubjectStarted(Subject subject) {
    return WatchSubjectSubjectsStarted(
      subject,
    );
  }

  SubjectsReceived subjectsReceived(
      Either<SubjectFailures, Subject> failureOrSubject) {
    return SubjectsReceived(
      failureOrSubject,
    );
  }

  ChangeTerm changeTerm(Term term) {
    return ChangeTerm(
      term,
    );
  }
}

// ignore: unused_element
const $SingleSubjectWatcherEvent = _$SingleSubjectWatcherEventTearOff();

mixin _$SingleSubjectWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchSubjectStarted(Subject subject),
    @required
        Result subjectsReceived(
            Either<SubjectFailures, Subject> failureOrSubject),
    @required Result changeTerm(Term term),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchSubjectStarted(Subject subject),
    Result subjectsReceived(Either<SubjectFailures, Subject> failureOrSubject),
    Result changeTerm(Term term),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchSubjectStarted(WatchSubjectSubjectsStarted value),
    @required Result subjectsReceived(SubjectsReceived value),
    @required Result changeTerm(ChangeTerm value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchSubjectStarted(WatchSubjectSubjectsStarted value),
    Result subjectsReceived(SubjectsReceived value),
    Result changeTerm(ChangeTerm value),
    @required Result orElse(),
  });
}

abstract class $SingleSubjectWatcherEventCopyWith<$Res> {
  factory $SingleSubjectWatcherEventCopyWith(SingleSubjectWatcherEvent value,
          $Res Function(SingleSubjectWatcherEvent) then) =
      _$SingleSubjectWatcherEventCopyWithImpl<$Res>;
}

class _$SingleSubjectWatcherEventCopyWithImpl<$Res>
    implements $SingleSubjectWatcherEventCopyWith<$Res> {
  _$SingleSubjectWatcherEventCopyWithImpl(this._value, this._then);

  final SingleSubjectWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(SingleSubjectWatcherEvent) _then;
}

abstract class $WatchSubjectSubjectsStartedCopyWith<$Res> {
  factory $WatchSubjectSubjectsStartedCopyWith(
          WatchSubjectSubjectsStarted value,
          $Res Function(WatchSubjectSubjectsStarted) then) =
      _$WatchSubjectSubjectsStartedCopyWithImpl<$Res>;
  $Res call({Subject subject});

  $SubjectCopyWith<$Res> get subject;
}

class _$WatchSubjectSubjectsStartedCopyWithImpl<$Res>
    extends _$SingleSubjectWatcherEventCopyWithImpl<$Res>
    implements $WatchSubjectSubjectsStartedCopyWith<$Res> {
  _$WatchSubjectSubjectsStartedCopyWithImpl(WatchSubjectSubjectsStarted _value,
      $Res Function(WatchSubjectSubjectsStarted) _then)
      : super(_value, (v) => _then(v as WatchSubjectSubjectsStarted));

  @override
  WatchSubjectSubjectsStarted get _value =>
      super._value as WatchSubjectSubjectsStarted;

  @override
  $Res call({
    Object subject = freezed,
  }) {
    return _then(WatchSubjectSubjectsStarted(
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

class _$WatchSubjectSubjectsStarted implements WatchSubjectSubjectsStarted {
  const _$WatchSubjectSubjectsStarted(this.subject) : assert(subject != null);

  @override
  final Subject subject;

  @override
  String toString() {
    return 'SingleSubjectWatcherEvent.watchSubjectStarted(subject: $subject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WatchSubjectSubjectsStarted &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality().equals(other.subject, subject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subject);

  @override
  $WatchSubjectSubjectsStartedCopyWith<WatchSubjectSubjectsStarted>
      get copyWith => _$WatchSubjectSubjectsStartedCopyWithImpl<
          WatchSubjectSubjectsStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchSubjectStarted(Subject subject),
    @required
        Result subjectsReceived(
            Either<SubjectFailures, Subject> failureOrSubject),
    @required Result changeTerm(Term term),
  }) {
    assert(watchSubjectStarted != null);
    assert(subjectsReceived != null);
    assert(changeTerm != null);
    return watchSubjectStarted(subject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchSubjectStarted(Subject subject),
    Result subjectsReceived(Either<SubjectFailures, Subject> failureOrSubject),
    Result changeTerm(Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchSubjectStarted != null) {
      return watchSubjectStarted(subject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchSubjectStarted(WatchSubjectSubjectsStarted value),
    @required Result subjectsReceived(SubjectsReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(watchSubjectStarted != null);
    assert(subjectsReceived != null);
    assert(changeTerm != null);
    return watchSubjectStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchSubjectStarted(WatchSubjectSubjectsStarted value),
    Result subjectsReceived(SubjectsReceived value),
    Result changeTerm(ChangeTerm value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchSubjectStarted != null) {
      return watchSubjectStarted(this);
    }
    return orElse();
  }
}

abstract class WatchSubjectSubjectsStarted
    implements SingleSubjectWatcherEvent {
  const factory WatchSubjectSubjectsStarted(Subject subject) =
      _$WatchSubjectSubjectsStarted;

  Subject get subject;
  $WatchSubjectSubjectsStartedCopyWith<WatchSubjectSubjectsStarted>
      get copyWith;
}

abstract class $SubjectsReceivedCopyWith<$Res> {
  factory $SubjectsReceivedCopyWith(
          SubjectsReceived value, $Res Function(SubjectsReceived) then) =
      _$SubjectsReceivedCopyWithImpl<$Res>;
  $Res call({Either<SubjectFailures, Subject> failureOrSubject});
}

class _$SubjectsReceivedCopyWithImpl<$Res>
    extends _$SingleSubjectWatcherEventCopyWithImpl<$Res>
    implements $SubjectsReceivedCopyWith<$Res> {
  _$SubjectsReceivedCopyWithImpl(
      SubjectsReceived _value, $Res Function(SubjectsReceived) _then)
      : super(_value, (v) => _then(v as SubjectsReceived));

  @override
  SubjectsReceived get _value => super._value as SubjectsReceived;

  @override
  $Res call({
    Object failureOrSubject = freezed,
  }) {
    return _then(SubjectsReceived(
      failureOrSubject == freezed
          ? _value.failureOrSubject
          : failureOrSubject as Either<SubjectFailures, Subject>,
    ));
  }
}

class _$SubjectsReceived implements SubjectsReceived {
  const _$SubjectsReceived(this.failureOrSubject)
      : assert(failureOrSubject != null);

  @override
  final Either<SubjectFailures, Subject> failureOrSubject;

  @override
  String toString() {
    return 'SingleSubjectWatcherEvent.subjectsReceived(failureOrSubject: $failureOrSubject)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubjectsReceived &&
            (identical(other.failureOrSubject, failureOrSubject) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSubject, failureOrSubject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrSubject);

  @override
  $SubjectsReceivedCopyWith<SubjectsReceived> get copyWith =>
      _$SubjectsReceivedCopyWithImpl<SubjectsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchSubjectStarted(Subject subject),
    @required
        Result subjectsReceived(
            Either<SubjectFailures, Subject> failureOrSubject),
    @required Result changeTerm(Term term),
  }) {
    assert(watchSubjectStarted != null);
    assert(subjectsReceived != null);
    assert(changeTerm != null);
    return subjectsReceived(failureOrSubject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchSubjectStarted(Subject subject),
    Result subjectsReceived(Either<SubjectFailures, Subject> failureOrSubject),
    Result changeTerm(Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subjectsReceived != null) {
      return subjectsReceived(failureOrSubject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchSubjectStarted(WatchSubjectSubjectsStarted value),
    @required Result subjectsReceived(SubjectsReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(watchSubjectStarted != null);
    assert(subjectsReceived != null);
    assert(changeTerm != null);
    return subjectsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchSubjectStarted(WatchSubjectSubjectsStarted value),
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

abstract class SubjectsReceived implements SingleSubjectWatcherEvent {
  const factory SubjectsReceived(
      Either<SubjectFailures, Subject> failureOrSubject) = _$SubjectsReceived;

  Either<SubjectFailures, Subject> get failureOrSubject;
  $SubjectsReceivedCopyWith<SubjectsReceived> get copyWith;
}

abstract class $ChangeTermCopyWith<$Res> {
  factory $ChangeTermCopyWith(
          ChangeTerm value, $Res Function(ChangeTerm) then) =
      _$ChangeTermCopyWithImpl<$Res>;
  $Res call({Term term});
}

class _$ChangeTermCopyWithImpl<$Res>
    extends _$SingleSubjectWatcherEventCopyWithImpl<$Res>
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
    return 'SingleSubjectWatcherEvent.changeTerm(term: $term)';
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
    @required Result watchSubjectStarted(Subject subject),
    @required
        Result subjectsReceived(
            Either<SubjectFailures, Subject> failureOrSubject),
    @required Result changeTerm(Term term),
  }) {
    assert(watchSubjectStarted != null);
    assert(subjectsReceived != null);
    assert(changeTerm != null);
    return changeTerm(term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchSubjectStarted(Subject subject),
    Result subjectsReceived(Either<SubjectFailures, Subject> failureOrSubject),
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
    @required Result watchSubjectStarted(WatchSubjectSubjectsStarted value),
    @required Result subjectsReceived(SubjectsReceived value),
    @required Result changeTerm(ChangeTerm value),
  }) {
    assert(watchSubjectStarted != null);
    assert(subjectsReceived != null);
    assert(changeTerm != null);
    return changeTerm(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchSubjectStarted(WatchSubjectSubjectsStarted value),
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

abstract class ChangeTerm implements SingleSubjectWatcherEvent {
  const factory ChangeTerm(Term term) = _$ChangeTerm;

  Term get term;
  $ChangeTermCopyWith<ChangeTerm> get copyWith;
}

class _$SingleSubjectWatcherStateTearOff {
  const _$SingleSubjectWatcherStateTearOff();

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

  LoadSuccess loadSuccess({@required Subject subject, @required Term term}) {
    return LoadSuccess(
      subject: subject,
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
const $SingleSubjectWatcherState = _$SingleSubjectWatcherStateTearOff();

mixin _$SingleSubjectWatcherState {
  Term get term;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required Result loadSuccess(Subject subject, Term term),
    @required Result loadFailure(SubjectFailures subjectFailures, Term term),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(Subject subject, Term term),
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

  $SingleSubjectWatcherStateCopyWith<SingleSubjectWatcherState> get copyWith;
}

abstract class $SingleSubjectWatcherStateCopyWith<$Res> {
  factory $SingleSubjectWatcherStateCopyWith(SingleSubjectWatcherState value,
          $Res Function(SingleSubjectWatcherState) then) =
      _$SingleSubjectWatcherStateCopyWithImpl<$Res>;
  $Res call({Term term});
}

class _$SingleSubjectWatcherStateCopyWithImpl<$Res>
    implements $SingleSubjectWatcherStateCopyWith<$Res> {
  _$SingleSubjectWatcherStateCopyWithImpl(this._value, this._then);

  final SingleSubjectWatcherState _value;
  // ignore: unused_field
  final $Res Function(SingleSubjectWatcherState) _then;

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
    implements $SingleSubjectWatcherStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Term term});
}

class _$InitialCopyWithImpl<$Res>
    extends _$SingleSubjectWatcherStateCopyWithImpl<$Res>
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
    return 'SingleSubjectWatcherState.initial(term: $term)';
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
    @required Result loadSuccess(Subject subject, Term term),
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
    Result loadSuccess(Subject subject, Term term),
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

abstract class Initial implements SingleSubjectWatcherState {
  const factory Initial({@required Term term}) = _$Initial;

  @override
  Term get term;
  @override
  $InitialCopyWith<Initial> get copyWith;
}

abstract class $DataTransferInProgressCopyWith<$Res>
    implements $SingleSubjectWatcherStateCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
  @override
  $Res call({Term term});
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$SingleSubjectWatcherStateCopyWithImpl<$Res>
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
    return 'SingleSubjectWatcherState.loadInProgress(term: $term)';
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
    @required Result loadSuccess(Subject subject, Term term),
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
    Result loadSuccess(Subject subject, Term term),
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

abstract class DataTransferInProgress implements SingleSubjectWatcherState {
  const factory DataTransferInProgress({@required Term term}) =
      _$DataTransferInProgress;

  @override
  Term get term;
  @override
  $DataTransferInProgressCopyWith<DataTransferInProgress> get copyWith;
}

abstract class $LoadSuccessCopyWith<$Res>
    implements $SingleSubjectWatcherStateCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Subject subject, Term term});

  $SubjectCopyWith<$Res> get subject;
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$SingleSubjectWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object subject = freezed,
    Object term = freezed,
  }) {
    return _then(LoadSuccess(
      subject: subject == freezed ? _value.subject : subject as Subject,
      term: term == freezed ? _value.term : term as Term,
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

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess({@required this.subject, @required this.term})
      : assert(subject != null),
        assert(term != null);

  @override
  final Subject subject;
  @override
  final Term term;

  @override
  String toString() {
    return 'SingleSubjectWatcherState.loadSuccess(subject: $subject, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.term, term) ||
                const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(term);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(Term term),
    @required Result loadInProgress(Term term),
    @required Result loadSuccess(Subject subject, Term term),
    @required Result loadFailure(SubjectFailures subjectFailures, Term term),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(subject, term);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(Term term),
    Result loadInProgress(Term term),
    Result loadSuccess(Subject subject, Term term),
    Result loadFailure(SubjectFailures subjectFailures, Term term),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(subject, term);
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

abstract class LoadSuccess implements SingleSubjectWatcherState {
  const factory LoadSuccess({@required Subject subject, @required Term term}) =
      _$LoadSuccess;

  Subject get subject;
  @override
  Term get term;
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res>
    implements $SingleSubjectWatcherStateCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({SubjectFailures subjectFailures, Term term});

  $SubjectFailuresCopyWith<$Res> get subjectFailures;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$SingleSubjectWatcherStateCopyWithImpl<$Res>
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
    return 'SingleSubjectWatcherState.loadFailure(subjectFailures: $subjectFailures, term: $term)';
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
    @required Result loadSuccess(Subject subject, Term term),
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
    Result loadSuccess(Subject subject, Term term),
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

abstract class LoadFailure implements SingleSubjectWatcherState {
  const factory LoadFailure(
      {@required SubjectFailures subjectFailures,
      @required Term term}) = _$LoadFailure;

  SubjectFailures get subjectFailures;
  @override
  Term get term;
  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
