// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'grade_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GradeFormEventTearOff {
  const _$GradeFormEventTearOff();

  _Initialized initialized(
      Option<Grade> initialGradeOption, Option<Subject> subject) {
    return _Initialized(
      initialGradeOption,
      subject,
    );
  }

  _DescriptionChanged descriptionChanged(String input) {
    return _DescriptionChanged(
      input,
    );
  }

  _GradeValueChanged gradeValueChanged(String gradeValue) {
    return _GradeValueChanged(
      gradeValue,
    );
  }

  _GradeTypeChanged gradeTypeChanged(String type) {
    return _GradeTypeChanged(
      type,
    );
  }

  _SubjectChanged subjectChanged(String subjectId) {
    return _SubjectChanged(
      subjectId,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

// ignore: unused_element
const $GradeFormEvent = _$GradeFormEventTearOff();

mixin _$GradeFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Grade> initialGradeOption, Option<Subject> subject),
    @required Result descriptionChanged(String input),
    @required Result gradeValueChanged(String gradeValue),
    @required Result gradeTypeChanged(String type),
    @required Result subjectChanged(String subjectId),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(
        Option<Grade> initialGradeOption, Option<Subject> subject),
    Result descriptionChanged(String input),
    Result gradeValueChanged(String gradeValue),
    Result gradeTypeChanged(String type),
    Result subjectChanged(String subjectId),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result gradeValueChanged(_GradeValueChanged value),
    @required Result gradeTypeChanged(_GradeTypeChanged value),
    @required Result subjectChanged(_SubjectChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result descriptionChanged(_DescriptionChanged value),
    Result gradeValueChanged(_GradeValueChanged value),
    Result gradeTypeChanged(_GradeTypeChanged value),
    Result subjectChanged(_SubjectChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $GradeFormEventCopyWith<$Res> {
  factory $GradeFormEventCopyWith(
          GradeFormEvent value, $Res Function(GradeFormEvent) then) =
      _$GradeFormEventCopyWithImpl<$Res>;
}

class _$GradeFormEventCopyWithImpl<$Res>
    implements $GradeFormEventCopyWith<$Res> {
  _$GradeFormEventCopyWithImpl(this._value, this._then);

  final GradeFormEvent _value;
  // ignore: unused_field
  final $Res Function(GradeFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Grade> initialGradeOption, Option<Subject> subject});
}

class __$InitializedCopyWithImpl<$Res>
    extends _$GradeFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialGradeOption = freezed,
    Object subject = freezed,
  }) {
    return _then(_Initialized(
      initialGradeOption == freezed
          ? _value.initialGradeOption
          : initialGradeOption as Option<Grade>,
      subject == freezed ? _value.subject : subject as Option<Subject>,
    ));
  }
}

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(this.initialGradeOption, this.subject)
      : assert(initialGradeOption != null),
        assert(subject != null);

  @override
  final Option<Grade> initialGradeOption;
  @override
  final Option<Subject> subject;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GradeFormEvent.initialized(initialGradeOption: $initialGradeOption, subject: $subject)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GradeFormEvent.initialized'))
      ..add(DiagnosticsProperty('initialGradeOption', initialGradeOption))
      ..add(DiagnosticsProperty('subject', subject));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialGradeOption, initialGradeOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialGradeOption, initialGradeOption)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality().equals(other.subject, subject)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialGradeOption) ^
      const DeepCollectionEquality().hash(subject);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Grade> initialGradeOption, Option<Subject> subject),
    @required Result descriptionChanged(String input),
    @required Result gradeValueChanged(String gradeValue),
    @required Result gradeTypeChanged(String type),
    @required Result subjectChanged(String subjectId),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(descriptionChanged != null);
    assert(gradeValueChanged != null);
    assert(gradeTypeChanged != null);
    assert(subjectChanged != null);
    assert(saved != null);
    return initialized(initialGradeOption, subject);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(
        Option<Grade> initialGradeOption, Option<Subject> subject),
    Result descriptionChanged(String input),
    Result gradeValueChanged(String gradeValue),
    Result gradeTypeChanged(String type),
    Result subjectChanged(String subjectId),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialGradeOption, subject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result gradeValueChanged(_GradeValueChanged value),
    @required Result gradeTypeChanged(_GradeTypeChanged value),
    @required Result subjectChanged(_SubjectChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(descriptionChanged != null);
    assert(gradeValueChanged != null);
    assert(gradeTypeChanged != null);
    assert(subjectChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result descriptionChanged(_DescriptionChanged value),
    Result gradeValueChanged(_GradeValueChanged value),
    Result gradeTypeChanged(_GradeTypeChanged value),
    Result subjectChanged(_SubjectChanged value),
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

abstract class _Initialized implements GradeFormEvent {
  const factory _Initialized(
          Option<Grade> initialGradeOption, Option<Subject> subject) =
      _$_Initialized;

  Option<Grade> get initialGradeOption;
  Option<Subject> get subject;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String input});
}

class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$GradeFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_DescriptionChanged(
      input == freezed ? _value.input : input as String,
    ));
  }
}

class _$_DescriptionChanged
    with DiagnosticableTreeMixin
    implements _DescriptionChanged {
  const _$_DescriptionChanged(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GradeFormEvent.descriptionChanged(input: $input)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GradeFormEvent.descriptionChanged'))
      ..add(DiagnosticsProperty('input', input));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChanged &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Grade> initialGradeOption, Option<Subject> subject),
    @required Result descriptionChanged(String input),
    @required Result gradeValueChanged(String gradeValue),
    @required Result gradeTypeChanged(String type),
    @required Result subjectChanged(String subjectId),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(descriptionChanged != null);
    assert(gradeValueChanged != null);
    assert(gradeTypeChanged != null);
    assert(subjectChanged != null);
    assert(saved != null);
    return descriptionChanged(input);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(
        Option<Grade> initialGradeOption, Option<Subject> subject),
    Result descriptionChanged(String input),
    Result gradeValueChanged(String gradeValue),
    Result gradeTypeChanged(String type),
    Result subjectChanged(String subjectId),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result gradeValueChanged(_GradeValueChanged value),
    @required Result gradeTypeChanged(_GradeTypeChanged value),
    @required Result subjectChanged(_SubjectChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(descriptionChanged != null);
    assert(gradeValueChanged != null);
    assert(gradeTypeChanged != null);
    assert(subjectChanged != null);
    assert(saved != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result descriptionChanged(_DescriptionChanged value),
    Result gradeValueChanged(_GradeValueChanged value),
    Result gradeTypeChanged(_GradeTypeChanged value),
    Result subjectChanged(_SubjectChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements GradeFormEvent {
  const factory _DescriptionChanged(String input) = _$_DescriptionChanged;

  String get input;
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith;
}

abstract class _$GradeValueChangedCopyWith<$Res> {
  factory _$GradeValueChangedCopyWith(
          _GradeValueChanged value, $Res Function(_GradeValueChanged) then) =
      __$GradeValueChangedCopyWithImpl<$Res>;
  $Res call({String gradeValue});
}

class __$GradeValueChangedCopyWithImpl<$Res>
    extends _$GradeFormEventCopyWithImpl<$Res>
    implements _$GradeValueChangedCopyWith<$Res> {
  __$GradeValueChangedCopyWithImpl(
      _GradeValueChanged _value, $Res Function(_GradeValueChanged) _then)
      : super(_value, (v) => _then(v as _GradeValueChanged));

  @override
  _GradeValueChanged get _value => super._value as _GradeValueChanged;

  @override
  $Res call({
    Object gradeValue = freezed,
  }) {
    return _then(_GradeValueChanged(
      gradeValue == freezed ? _value.gradeValue : gradeValue as String,
    ));
  }
}

class _$_GradeValueChanged
    with DiagnosticableTreeMixin
    implements _GradeValueChanged {
  const _$_GradeValueChanged(this.gradeValue) : assert(gradeValue != null);

  @override
  final String gradeValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GradeFormEvent.gradeValueChanged(gradeValue: $gradeValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GradeFormEvent.gradeValueChanged'))
      ..add(DiagnosticsProperty('gradeValue', gradeValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GradeValueChanged &&
            (identical(other.gradeValue, gradeValue) ||
                const DeepCollectionEquality()
                    .equals(other.gradeValue, gradeValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gradeValue);

  @override
  _$GradeValueChangedCopyWith<_GradeValueChanged> get copyWith =>
      __$GradeValueChangedCopyWithImpl<_GradeValueChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Grade> initialGradeOption, Option<Subject> subject),
    @required Result descriptionChanged(String input),
    @required Result gradeValueChanged(String gradeValue),
    @required Result gradeTypeChanged(String type),
    @required Result subjectChanged(String subjectId),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(descriptionChanged != null);
    assert(gradeValueChanged != null);
    assert(gradeTypeChanged != null);
    assert(subjectChanged != null);
    assert(saved != null);
    return gradeValueChanged(gradeValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(
        Option<Grade> initialGradeOption, Option<Subject> subject),
    Result descriptionChanged(String input),
    Result gradeValueChanged(String gradeValue),
    Result gradeTypeChanged(String type),
    Result subjectChanged(String subjectId),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradeValueChanged != null) {
      return gradeValueChanged(gradeValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result gradeValueChanged(_GradeValueChanged value),
    @required Result gradeTypeChanged(_GradeTypeChanged value),
    @required Result subjectChanged(_SubjectChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(descriptionChanged != null);
    assert(gradeValueChanged != null);
    assert(gradeTypeChanged != null);
    assert(subjectChanged != null);
    assert(saved != null);
    return gradeValueChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result descriptionChanged(_DescriptionChanged value),
    Result gradeValueChanged(_GradeValueChanged value),
    Result gradeTypeChanged(_GradeTypeChanged value),
    Result subjectChanged(_SubjectChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradeValueChanged != null) {
      return gradeValueChanged(this);
    }
    return orElse();
  }
}

abstract class _GradeValueChanged implements GradeFormEvent {
  const factory _GradeValueChanged(String gradeValue) = _$_GradeValueChanged;

  String get gradeValue;
  _$GradeValueChangedCopyWith<_GradeValueChanged> get copyWith;
}

abstract class _$GradeTypeChangedCopyWith<$Res> {
  factory _$GradeTypeChangedCopyWith(
          _GradeTypeChanged value, $Res Function(_GradeTypeChanged) then) =
      __$GradeTypeChangedCopyWithImpl<$Res>;
  $Res call({String type});
}

class __$GradeTypeChangedCopyWithImpl<$Res>
    extends _$GradeFormEventCopyWithImpl<$Res>
    implements _$GradeTypeChangedCopyWith<$Res> {
  __$GradeTypeChangedCopyWithImpl(
      _GradeTypeChanged _value, $Res Function(_GradeTypeChanged) _then)
      : super(_value, (v) => _then(v as _GradeTypeChanged));

  @override
  _GradeTypeChanged get _value => super._value as _GradeTypeChanged;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(_GradeTypeChanged(
      type == freezed ? _value.type : type as String,
    ));
  }
}

class _$_GradeTypeChanged
    with DiagnosticableTreeMixin
    implements _GradeTypeChanged {
  const _$_GradeTypeChanged(this.type) : assert(type != null);

  @override
  final String type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GradeFormEvent.gradeTypeChanged(type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GradeFormEvent.gradeTypeChanged'))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GradeTypeChanged &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @override
  _$GradeTypeChangedCopyWith<_GradeTypeChanged> get copyWith =>
      __$GradeTypeChangedCopyWithImpl<_GradeTypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Grade> initialGradeOption, Option<Subject> subject),
    @required Result descriptionChanged(String input),
    @required Result gradeValueChanged(String gradeValue),
    @required Result gradeTypeChanged(String type),
    @required Result subjectChanged(String subjectId),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(descriptionChanged != null);
    assert(gradeValueChanged != null);
    assert(gradeTypeChanged != null);
    assert(subjectChanged != null);
    assert(saved != null);
    return gradeTypeChanged(type);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(
        Option<Grade> initialGradeOption, Option<Subject> subject),
    Result descriptionChanged(String input),
    Result gradeValueChanged(String gradeValue),
    Result gradeTypeChanged(String type),
    Result subjectChanged(String subjectId),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradeTypeChanged != null) {
      return gradeTypeChanged(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result gradeValueChanged(_GradeValueChanged value),
    @required Result gradeTypeChanged(_GradeTypeChanged value),
    @required Result subjectChanged(_SubjectChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(descriptionChanged != null);
    assert(gradeValueChanged != null);
    assert(gradeTypeChanged != null);
    assert(subjectChanged != null);
    assert(saved != null);
    return gradeTypeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result descriptionChanged(_DescriptionChanged value),
    Result gradeValueChanged(_GradeValueChanged value),
    Result gradeTypeChanged(_GradeTypeChanged value),
    Result subjectChanged(_SubjectChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradeTypeChanged != null) {
      return gradeTypeChanged(this);
    }
    return orElse();
  }
}

abstract class _GradeTypeChanged implements GradeFormEvent {
  const factory _GradeTypeChanged(String type) = _$_GradeTypeChanged;

  String get type;
  _$GradeTypeChangedCopyWith<_GradeTypeChanged> get copyWith;
}

abstract class _$SubjectChangedCopyWith<$Res> {
  factory _$SubjectChangedCopyWith(
          _SubjectChanged value, $Res Function(_SubjectChanged) then) =
      __$SubjectChangedCopyWithImpl<$Res>;
  $Res call({String subjectId});
}

class __$SubjectChangedCopyWithImpl<$Res>
    extends _$GradeFormEventCopyWithImpl<$Res>
    implements _$SubjectChangedCopyWith<$Res> {
  __$SubjectChangedCopyWithImpl(
      _SubjectChanged _value, $Res Function(_SubjectChanged) _then)
      : super(_value, (v) => _then(v as _SubjectChanged));

  @override
  _SubjectChanged get _value => super._value as _SubjectChanged;

  @override
  $Res call({
    Object subjectId = freezed,
  }) {
    return _then(_SubjectChanged(
      subjectId == freezed ? _value.subjectId : subjectId as String,
    ));
  }
}

class _$_SubjectChanged
    with DiagnosticableTreeMixin
    implements _SubjectChanged {
  const _$_SubjectChanged(this.subjectId) : assert(subjectId != null);

  @override
  final String subjectId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GradeFormEvent.subjectChanged(subjectId: $subjectId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GradeFormEvent.subjectChanged'))
      ..add(DiagnosticsProperty('subjectId', subjectId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubjectChanged &&
            (identical(other.subjectId, subjectId) ||
                const DeepCollectionEquality()
                    .equals(other.subjectId, subjectId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(subjectId);

  @override
  _$SubjectChangedCopyWith<_SubjectChanged> get copyWith =>
      __$SubjectChangedCopyWithImpl<_SubjectChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<Grade> initialGradeOption, Option<Subject> subject),
    @required Result descriptionChanged(String input),
    @required Result gradeValueChanged(String gradeValue),
    @required Result gradeTypeChanged(String type),
    @required Result subjectChanged(String subjectId),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(descriptionChanged != null);
    assert(gradeValueChanged != null);
    assert(gradeTypeChanged != null);
    assert(subjectChanged != null);
    assert(saved != null);
    return subjectChanged(subjectId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(
        Option<Grade> initialGradeOption, Option<Subject> subject),
    Result descriptionChanged(String input),
    Result gradeValueChanged(String gradeValue),
    Result gradeTypeChanged(String type),
    Result subjectChanged(String subjectId),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subjectChanged != null) {
      return subjectChanged(subjectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result gradeValueChanged(_GradeValueChanged value),
    @required Result gradeTypeChanged(_GradeTypeChanged value),
    @required Result subjectChanged(_SubjectChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(descriptionChanged != null);
    assert(gradeValueChanged != null);
    assert(gradeTypeChanged != null);
    assert(subjectChanged != null);
    assert(saved != null);
    return subjectChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result descriptionChanged(_DescriptionChanged value),
    Result gradeValueChanged(_GradeValueChanged value),
    Result gradeTypeChanged(_GradeTypeChanged value),
    Result subjectChanged(_SubjectChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (subjectChanged != null) {
      return subjectChanged(this);
    }
    return orElse();
  }
}

abstract class _SubjectChanged implements GradeFormEvent {
  const factory _SubjectChanged(String subjectId) = _$_SubjectChanged;

  String get subjectId;
  _$SubjectChangedCopyWith<_SubjectChanged> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

class __$SavedCopyWithImpl<$Res> extends _$GradeFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

class _$_Saved with DiagnosticableTreeMixin implements _Saved {
  const _$_Saved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GradeFormEvent.saved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GradeFormEvent.saved'));
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
    @required
        Result initialized(
            Option<Grade> initialGradeOption, Option<Subject> subject),
    @required Result descriptionChanged(String input),
    @required Result gradeValueChanged(String gradeValue),
    @required Result gradeTypeChanged(String type),
    @required Result subjectChanged(String subjectId),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(descriptionChanged != null);
    assert(gradeValueChanged != null);
    assert(gradeTypeChanged != null);
    assert(subjectChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(
        Option<Grade> initialGradeOption, Option<Subject> subject),
    Result descriptionChanged(String input),
    Result gradeValueChanged(String gradeValue),
    Result gradeTypeChanged(String type),
    Result subjectChanged(String subjectId),
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
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result gradeValueChanged(_GradeValueChanged value),
    @required Result gradeTypeChanged(_GradeTypeChanged value),
    @required Result subjectChanged(_SubjectChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(descriptionChanged != null);
    assert(gradeValueChanged != null);
    assert(gradeTypeChanged != null);
    assert(subjectChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result descriptionChanged(_DescriptionChanged value),
    Result gradeValueChanged(_GradeValueChanged value),
    Result gradeTypeChanged(_GradeTypeChanged value),
    Result subjectChanged(_SubjectChanged value),
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

abstract class _Saved implements GradeFormEvent {
  const factory _Saved() = _$_Saved;
}

class _$GradeFormStateTearOff {
  const _$GradeFormStateTearOff();

  _GradeFormState call(
      {@required
          KtList<Subject> subjects,
      @required
          Grade grade,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<GradeFailures, Unit>> saveFailureOrSuccessOption}) {
    return _GradeFormState(
      subjects: subjects,
      grade: grade,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $GradeFormState = _$GradeFormStateTearOff();

mixin _$GradeFormState {
  KtList<Subject> get subjects;
  Grade get grade;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<GradeFailures, Unit>> get saveFailureOrSuccessOption;

  $GradeFormStateCopyWith<GradeFormState> get copyWith;
}

abstract class $GradeFormStateCopyWith<$Res> {
  factory $GradeFormStateCopyWith(
          GradeFormState value, $Res Function(GradeFormState) then) =
      _$GradeFormStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<Subject> subjects,
      Grade grade,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<GradeFailures, Unit>> saveFailureOrSuccessOption});

  $GradeCopyWith<$Res> get grade;
}

class _$GradeFormStateCopyWithImpl<$Res>
    implements $GradeFormStateCopyWith<$Res> {
  _$GradeFormStateCopyWithImpl(this._value, this._then);

  final GradeFormState _value;
  // ignore: unused_field
  final $Res Function(GradeFormState) _then;

  @override
  $Res call({
    Object subjects = freezed,
    Object grade = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      subjects:
          subjects == freezed ? _value.subjects : subjects as KtList<Subject>,
      grade: grade == freezed ? _value.grade : grade as Grade,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<GradeFailures, Unit>>,
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

abstract class _$GradeFormStateCopyWith<$Res>
    implements $GradeFormStateCopyWith<$Res> {
  factory _$GradeFormStateCopyWith(
          _GradeFormState value, $Res Function(_GradeFormState) then) =
      __$GradeFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<Subject> subjects,
      Grade grade,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<GradeFailures, Unit>> saveFailureOrSuccessOption});

  @override
  $GradeCopyWith<$Res> get grade;
}

class __$GradeFormStateCopyWithImpl<$Res>
    extends _$GradeFormStateCopyWithImpl<$Res>
    implements _$GradeFormStateCopyWith<$Res> {
  __$GradeFormStateCopyWithImpl(
      _GradeFormState _value, $Res Function(_GradeFormState) _then)
      : super(_value, (v) => _then(v as _GradeFormState));

  @override
  _GradeFormState get _value => super._value as _GradeFormState;

  @override
  $Res call({
    Object subjects = freezed,
    Object grade = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_GradeFormState(
      subjects:
          subjects == freezed ? _value.subjects : subjects as KtList<Subject>,
      grade: grade == freezed ? _value.grade : grade as Grade,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<GradeFailures, Unit>>,
    ));
  }
}

class _$_GradeFormState
    with DiagnosticableTreeMixin
    implements _GradeFormState {
  const _$_GradeFormState(
      {@required this.subjects,
      @required this.grade,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(subjects != null),
        assert(grade != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final KtList<Subject> subjects;
  @override
  final Grade grade;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<GradeFailures, Unit>> saveFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GradeFormState(subjects: $subjects, grade: $grade, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GradeFormState'))
      ..add(DiagnosticsProperty('subjects', subjects))
      ..add(DiagnosticsProperty('grade', grade))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isEditing', isEditing))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GradeFormState &&
            (identical(other.subjects, subjects) ||
                const DeepCollectionEquality()
                    .equals(other.subjects, subjects)) &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)) &&
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
      const DeepCollectionEquality().hash(subjects) ^
      const DeepCollectionEquality().hash(grade) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$GradeFormStateCopyWith<_GradeFormState> get copyWith =>
      __$GradeFormStateCopyWithImpl<_GradeFormState>(this, _$identity);
}

abstract class _GradeFormState implements GradeFormState {
  const factory _GradeFormState(
          {@required
              KtList<Subject> subjects,
          @required
              Grade grade,
          @required
              bool showErrorMessages,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<GradeFailures, Unit>> saveFailureOrSuccessOption}) =
      _$_GradeFormState;

  @override
  KtList<Subject> get subjects;
  @override
  Grade get grade;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<GradeFailures, Unit>> get saveFailureOrSuccessOption;
  @override
  _$GradeFormStateCopyWith<_GradeFormState> get copyWith;
}
