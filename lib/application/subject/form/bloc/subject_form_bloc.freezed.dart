// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'subject_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SubjectFormEventTearOff {
  const _$SubjectFormEventTearOff();

  _Initialized initialized(Option<Subject> initialSubjectOption) {
    return _Initialized(
      initialSubjectOption,
    );
  }

  _BodyChanged nameChanged(String input) {
    return _BodyChanged(
      input,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

// ignore: unused_element
const $SubjectFormEvent = _$SubjectFormEventTearOff();

mixin _$SubjectFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Subject> initialSubjectOption),
    @required Result nameChanged(String input),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Subject> initialSubjectOption),
    Result nameChanged(String input),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_BodyChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_BodyChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $SubjectFormEventCopyWith<$Res> {
  factory $SubjectFormEventCopyWith(
          SubjectFormEvent value, $Res Function(SubjectFormEvent) then) =
      _$SubjectFormEventCopyWithImpl<$Res>;
}

class _$SubjectFormEventCopyWithImpl<$Res>
    implements $SubjectFormEventCopyWith<$Res> {
  _$SubjectFormEventCopyWithImpl(this._value, this._then);

  final SubjectFormEvent _value;
  // ignore: unused_field
  final $Res Function(SubjectFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Subject> initialSubjectOption});
}

class __$InitializedCopyWithImpl<$Res>
    extends _$SubjectFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialSubjectOption = freezed,
  }) {
    return _then(_Initialized(
      initialSubjectOption == freezed
          ? _value.initialSubjectOption
          : initialSubjectOption as Option<Subject>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialSubjectOption)
      : assert(initialSubjectOption != null);

  @override
  final Option<Subject> initialSubjectOption;

  @override
  String toString() {
    return 'SubjectFormEvent.initialized(initialSubjectOption: $initialSubjectOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialSubjectOption, initialSubjectOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialSubjectOption, initialSubjectOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialSubjectOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Subject> initialSubjectOption),
    @required Result nameChanged(String input),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return initialized(initialSubjectOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Subject> initialSubjectOption),
    Result nameChanged(String input),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialSubjectOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_BodyChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_BodyChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SubjectFormEvent {
  const factory _Initialized(Option<Subject> initialSubjectOption) =
      _$_Initialized;

  Option<Subject> get initialSubjectOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String input});
}

class __$BodyChangedCopyWithImpl<$Res>
    extends _$SubjectFormEventCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(
      _BodyChanged _value, $Res Function(_BodyChanged) _then)
      : super(_value, (v) => _then(v as _BodyChanged));

  @override
  _BodyChanged get _value => super._value as _BodyChanged;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_BodyChanged(
      input == freezed ? _value.input : input as String,
    ));
  }
}

class _$_BodyChanged implements _BodyChanged {
  const _$_BodyChanged(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'SubjectFormEvent.nameChanged(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyChanged &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @override
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Subject> initialSubjectOption),
    @required Result nameChanged(String input),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return nameChanged(input);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Subject> initialSubjectOption),
    Result nameChanged(String input),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_BodyChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_BodyChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements SubjectFormEvent {
  const factory _BodyChanged(String input) = _$_BodyChanged;

  String get input;
  _$BodyChangedCopyWith<_BodyChanged> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

class __$SavedCopyWithImpl<$Res> extends _$SubjectFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'SubjectFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Subject> initialSubjectOption),
    @required Result nameChanged(String input),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Subject> initialSubjectOption),
    Result nameChanged(String input),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_BodyChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_BodyChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements SubjectFormEvent {
  const factory _Saved() = _$_Saved;
}

class _$SubjectFormStateTearOff {
  const _$SubjectFormStateTearOff();

  _SubjectFormState call(
      {@required
          Subject subject,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<SubjectFailures, Unit>> saveFailureOrSuccessOption}) {
    return _SubjectFormState(
      subject: subject,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SubjectFormState = _$SubjectFormStateTearOff();

mixin _$SubjectFormState {
  Subject get subject;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<SubjectFailures, Unit>> get saveFailureOrSuccessOption;

  $SubjectFormStateCopyWith<SubjectFormState> get copyWith;
}

abstract class $SubjectFormStateCopyWith<$Res> {
  factory $SubjectFormStateCopyWith(
          SubjectFormState value, $Res Function(SubjectFormState) then) =
      _$SubjectFormStateCopyWithImpl<$Res>;
  $Res call(
      {Subject subject,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<SubjectFailures, Unit>> saveFailureOrSuccessOption});

  $SubjectCopyWith<$Res> get subject;
}

class _$SubjectFormStateCopyWithImpl<$Res>
    implements $SubjectFormStateCopyWith<$Res> {
  _$SubjectFormStateCopyWithImpl(this._value, this._then);

  final SubjectFormState _value;
  // ignore: unused_field
  final $Res Function(SubjectFormState) _then;

  @override
  $Res call({
    Object subject = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      subject: subject == freezed ? _value.subject : subject as Subject,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<SubjectFailures, Unit>>,
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

abstract class _$SubjectFormStateCopyWith<$Res>
    implements $SubjectFormStateCopyWith<$Res> {
  factory _$SubjectFormStateCopyWith(
          _SubjectFormState value, $Res Function(_SubjectFormState) then) =
      __$SubjectFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Subject subject,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<SubjectFailures, Unit>> saveFailureOrSuccessOption});

  @override
  $SubjectCopyWith<$Res> get subject;
}

class __$SubjectFormStateCopyWithImpl<$Res>
    extends _$SubjectFormStateCopyWithImpl<$Res>
    implements _$SubjectFormStateCopyWith<$Res> {
  __$SubjectFormStateCopyWithImpl(
      _SubjectFormState _value, $Res Function(_SubjectFormState) _then)
      : super(_value, (v) => _then(v as _SubjectFormState));

  @override
  _SubjectFormState get _value => super._value as _SubjectFormState;

  @override
  $Res call({
    Object subject = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_SubjectFormState(
      subject: subject == freezed ? _value.subject : subject as Subject,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<SubjectFailures, Unit>>,
    ));
  }
}

class _$_SubjectFormState implements _SubjectFormState {
  const _$_SubjectFormState(
      {@required this.subject,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(subject != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Subject subject;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<SubjectFailures, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'SubjectFormState(subject: $subject, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubjectFormState &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$SubjectFormStateCopyWith<_SubjectFormState> get copyWith =>
      __$SubjectFormStateCopyWithImpl<_SubjectFormState>(this, _$identity);
}

abstract class _SubjectFormState implements SubjectFormState {
  const factory _SubjectFormState(
      {@required
          Subject subject,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<SubjectFailures, Unit>>
              saveFailureOrSuccessOption}) = _$_SubjectFormState;

  @override
  Subject get subject;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<SubjectFailures, Unit>> get saveFailureOrSuccessOption;
  @override
  _$SubjectFormStateCopyWith<_SubjectFormState> get copyWith;
}
