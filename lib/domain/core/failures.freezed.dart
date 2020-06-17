// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  ExceedingLength<T> exceedingLength<T>(
      {@required T failedValue, @required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  Empty<T> empty<T>({@required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  Multiline<T> multiline<T>({@required T failedValue}) {
    return Multiline<T>(
      failedValue: failedValue,
    );
  }

  ListTooLong<T> listTooLong<T>({@required T failedValue, @required int max}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({@required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  GradeOutOfRange<T> gradeOutOfRange<T>({@required T failedValue}) {
    return GradeOutOfRange<T>(
      failedValue: failedValue,
    );
  }

  AverageOutOfRange<T> averageOutOfRange<T>({@required T failedValue}) {
    return AverageOutOfRange<T>(
      failedValue: failedValue,
    );
  }

  InvalidGradeType<T> invalidGradeType<T>({@required T failedValue}) {
    return InvalidGradeType<T>(
      failedValue: failedValue,
    );
  }

  NotInitialized<T> notInitialized<T>({@required T failedValue}) {
    return NotInitialized<T>(
      failedValue: failedValue,
    );
  }

  TermOutOfRange<T> termOutOfRange<T>({@required T failedValue}) {
    return TermOutOfRange<T>(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result gradeOutOfRange(T failedValue),
    @required Result averageOutOfRange(T failedValue),
    @required Result invalidGradeType(T failedValue),
    @required Result notInitialized(T failedValue),
    @required Result termOutOfRange(T failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result gradeOutOfRange(T failedValue),
    Result averageOutOfRange(T failedValue),
    Result invalidGradeType(T failedValue),
    Result notInitialized(T failedValue),
    Result termOutOfRange(T failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result gradeOutOfRange(GradeOutOfRange<T> value),
    @required Result averageOutOfRange(AverageOutOfRange<T> value),
    @required Result invalidGradeType(InvalidGradeType<T> value),
    @required Result notInitialized(NotInitialized<T> value),
    @required Result termOutOfRange(TermOutOfRange<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result gradeOutOfRange(GradeOutOfRange<T> value),
    Result averageOutOfRange(AverageOutOfRange<T> value),
    Result invalidGradeType(InvalidGradeType<T> value),
    Result notInitialized(NotInitialized<T> value),
    Result termOutOfRange(TermOutOfRange<T> value),
    @required Result orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result gradeOutOfRange(T failedValue),
    @required Result averageOutOfRange(T failedValue),
    @required Result invalidGradeType(T failedValue),
    @required Result notInitialized(T failedValue),
    @required Result termOutOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return exceedingLength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result gradeOutOfRange(T failedValue),
    Result averageOutOfRange(T failedValue),
    Result invalidGradeType(T failedValue),
    Result notInitialized(T failedValue),
    Result termOutOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result gradeOutOfRange(GradeOutOfRange<T> value),
    @required Result averageOutOfRange(AverageOutOfRange<T> value),
    @required Result invalidGradeType(InvalidGradeType<T> value),
    @required Result notInitialized(NotInitialized<T> value),
    @required Result termOutOfRange(TermOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result gradeOutOfRange(GradeOutOfRange<T> value),
    Result averageOutOfRange(AverageOutOfRange<T> value),
    Result invalidGradeType(InvalidGradeType<T> value),
    Result notInitialized(NotInitialized<T> value),
    Result termOutOfRange(TermOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({@required T failedValue, @required int max}) =
      _$ExceedingLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith;
}

abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$Empty<T> implements Empty<T> {
  const _$Empty({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result gradeOutOfRange(T failedValue),
    @required Result averageOutOfRange(T failedValue),
    @required Result invalidGradeType(T failedValue),
    @required Result notInitialized(T failedValue),
    @required Result termOutOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result gradeOutOfRange(T failedValue),
    Result averageOutOfRange(T failedValue),
    Result invalidGradeType(T failedValue),
    Result notInitialized(T failedValue),
    Result termOutOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result gradeOutOfRange(GradeOutOfRange<T> value),
    @required Result averageOutOfRange(AverageOutOfRange<T> value),
    @required Result invalidGradeType(InvalidGradeType<T> value),
    @required Result notInitialized(NotInitialized<T> value),
    @required Result termOutOfRange(TermOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return empty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result gradeOutOfRange(GradeOutOfRange<T> value),
    Result averageOutOfRange(AverageOutOfRange<T> value),
    Result invalidGradeType(InvalidGradeType<T> value),
    Result notInitialized(NotInitialized<T> value),
    Result termOutOfRange(TermOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({@required T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith;
}

abstract class $MultilineCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MultilineCopyWith(
          Multiline<T> value, $Res Function(Multiline<T>) then) =
      _$MultilineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$MultilineCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MultilineCopyWith<T, $Res> {
  _$MultilineCopyWithImpl(
      Multiline<T> _value, $Res Function(Multiline<T>) _then)
      : super(_value, (v) => _then(v as Multiline<T>));

  @override
  Multiline<T> get _value => super._value as Multiline<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(Multiline<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$Multiline<T> implements Multiline<T> {
  const _$Multiline({@required this.failedValue}) : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Multiline<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $MultilineCopyWith<T, Multiline<T>> get copyWith =>
      _$MultilineCopyWithImpl<T, Multiline<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result gradeOutOfRange(T failedValue),
    @required Result averageOutOfRange(T failedValue),
    @required Result invalidGradeType(T failedValue),
    @required Result notInitialized(T failedValue),
    @required Result termOutOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result gradeOutOfRange(T failedValue),
    Result averageOutOfRange(T failedValue),
    Result invalidGradeType(T failedValue),
    Result notInitialized(T failedValue),
    Result termOutOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result gradeOutOfRange(GradeOutOfRange<T> value),
    @required Result averageOutOfRange(AverageOutOfRange<T> value),
    @required Result invalidGradeType(InvalidGradeType<T> value),
    @required Result notInitialized(NotInitialized<T> value),
    @required Result termOutOfRange(TermOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result gradeOutOfRange(GradeOutOfRange<T> value),
    Result averageOutOfRange(AverageOutOfRange<T> value),
    Result invalidGradeType(InvalidGradeType<T> value),
    Result notInitialized(NotInitialized<T> value),
    Result termOutOfRange(TermOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  const factory Multiline({@required T failedValue}) = _$Multiline<T>;

  @override
  T get failedValue;
  @override
  $MultilineCopyWith<T, Multiline<T>> get copyWith;
}

abstract class $ListTooLongCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(
          ListTooLong<T> value, $Res Function(ListTooLong<T>) then) =
      _$ListTooLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

class _$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ListTooLongCopyWith<T, $Res> {
  _$ListTooLongCopyWithImpl(
      ListTooLong<T> _value, $Res Function(ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as ListTooLong<T>));

  @override
  ListTooLong<T> get _value => super._value as ListTooLong<T>;

  @override
  $Res call({
    Object failedValue = freezed,
    Object max = freezed,
  }) {
    return _then(ListTooLong<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
      max: max == freezed ? _value.max : max as int,
    ));
  }
}

class _$ListTooLong<T> implements ListTooLong<T> {
  const _$ListTooLong({@required this.failedValue, @required this.max})
      : assert(failedValue != null),
        assert(max != null);

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListTooLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(max);

  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      _$ListTooLongCopyWithImpl<T, ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result gradeOutOfRange(T failedValue),
    @required Result averageOutOfRange(T failedValue),
    @required Result invalidGradeType(T failedValue),
    @required Result notInitialized(T failedValue),
    @required Result termOutOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result gradeOutOfRange(T failedValue),
    Result averageOutOfRange(T failedValue),
    Result invalidGradeType(T failedValue),
    Result notInitialized(T failedValue),
    Result termOutOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result gradeOutOfRange(GradeOutOfRange<T> value),
    @required Result averageOutOfRange(AverageOutOfRange<T> value),
    @required Result invalidGradeType(InvalidGradeType<T> value),
    @required Result notInitialized(NotInitialized<T> value),
    @required Result termOutOfRange(TermOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result gradeOutOfRange(GradeOutOfRange<T> value),
    Result averageOutOfRange(AverageOutOfRange<T> value),
    Result invalidGradeType(InvalidGradeType<T> value),
    Result notInitialized(NotInitialized<T> value),
    Result termOutOfRange(TermOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong({@required T failedValue, @required int max}) =
      _$ListTooLong<T>;

  @override
  T get failedValue;
  int get max;
  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith;
}

abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result gradeOutOfRange(T failedValue),
    @required Result averageOutOfRange(T failedValue),
    @required Result invalidGradeType(T failedValue),
    @required Result notInitialized(T failedValue),
    @required Result termOutOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result gradeOutOfRange(T failedValue),
    Result averageOutOfRange(T failedValue),
    Result invalidGradeType(T failedValue),
    Result notInitialized(T failedValue),
    Result termOutOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result gradeOutOfRange(GradeOutOfRange<T> value),
    @required Result averageOutOfRange(AverageOutOfRange<T> value),
    @required Result invalidGradeType(InvalidGradeType<T> value),
    @required Result notInitialized(NotInitialized<T> value),
    @required Result termOutOfRange(TermOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result gradeOutOfRange(GradeOutOfRange<T> value),
    Result averageOutOfRange(AverageOutOfRange<T> value),
    Result invalidGradeType(InvalidGradeType<T> value),
    Result notInitialized(NotInitialized<T> value),
    Result termOutOfRange(TermOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result gradeOutOfRange(T failedValue),
    @required Result averageOutOfRange(T failedValue),
    @required Result invalidGradeType(T failedValue),
    @required Result notInitialized(T failedValue),
    @required Result termOutOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result gradeOutOfRange(T failedValue),
    Result averageOutOfRange(T failedValue),
    Result invalidGradeType(T failedValue),
    Result notInitialized(T failedValue),
    Result termOutOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result gradeOutOfRange(GradeOutOfRange<T> value),
    @required Result averageOutOfRange(AverageOutOfRange<T> value),
    @required Result invalidGradeType(InvalidGradeType<T> value),
    @required Result notInitialized(NotInitialized<T> value),
    @required Result termOutOfRange(TermOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result gradeOutOfRange(GradeOutOfRange<T> value),
    Result averageOutOfRange(AverageOutOfRange<T> value),
    Result invalidGradeType(InvalidGradeType<T> value),
    Result notInitialized(NotInitialized<T> value),
    Result termOutOfRange(TermOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue;
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
}

abstract class $GradeOutOfRangeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $GradeOutOfRangeCopyWith(
          GradeOutOfRange<T> value, $Res Function(GradeOutOfRange<T>) then) =
      _$GradeOutOfRangeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$GradeOutOfRangeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $GradeOutOfRangeCopyWith<T, $Res> {
  _$GradeOutOfRangeCopyWithImpl(
      GradeOutOfRange<T> _value, $Res Function(GradeOutOfRange<T>) _then)
      : super(_value, (v) => _then(v as GradeOutOfRange<T>));

  @override
  GradeOutOfRange<T> get _value => super._value as GradeOutOfRange<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(GradeOutOfRange<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$GradeOutOfRange<T> implements GradeOutOfRange<T> {
  const _$GradeOutOfRange({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.gradeOutOfRange(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GradeOutOfRange<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $GradeOutOfRangeCopyWith<T, GradeOutOfRange<T>> get copyWith =>
      _$GradeOutOfRangeCopyWithImpl<T, GradeOutOfRange<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result gradeOutOfRange(T failedValue),
    @required Result averageOutOfRange(T failedValue),
    @required Result invalidGradeType(T failedValue),
    @required Result notInitialized(T failedValue),
    @required Result termOutOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return gradeOutOfRange(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result gradeOutOfRange(T failedValue),
    Result averageOutOfRange(T failedValue),
    Result invalidGradeType(T failedValue),
    Result notInitialized(T failedValue),
    Result termOutOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradeOutOfRange != null) {
      return gradeOutOfRange(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result gradeOutOfRange(GradeOutOfRange<T> value),
    @required Result averageOutOfRange(AverageOutOfRange<T> value),
    @required Result invalidGradeType(InvalidGradeType<T> value),
    @required Result notInitialized(NotInitialized<T> value),
    @required Result termOutOfRange(TermOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return gradeOutOfRange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result gradeOutOfRange(GradeOutOfRange<T> value),
    Result averageOutOfRange(AverageOutOfRange<T> value),
    Result invalidGradeType(InvalidGradeType<T> value),
    Result notInitialized(NotInitialized<T> value),
    Result termOutOfRange(TermOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradeOutOfRange != null) {
      return gradeOutOfRange(this);
    }
    return orElse();
  }
}

abstract class GradeOutOfRange<T> implements ValueFailure<T> {
  const factory GradeOutOfRange({@required T failedValue}) =
      _$GradeOutOfRange<T>;

  @override
  T get failedValue;
  @override
  $GradeOutOfRangeCopyWith<T, GradeOutOfRange<T>> get copyWith;
}

abstract class $AverageOutOfRangeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $AverageOutOfRangeCopyWith(AverageOutOfRange<T> value,
          $Res Function(AverageOutOfRange<T>) then) =
      _$AverageOutOfRangeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$AverageOutOfRangeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $AverageOutOfRangeCopyWith<T, $Res> {
  _$AverageOutOfRangeCopyWithImpl(
      AverageOutOfRange<T> _value, $Res Function(AverageOutOfRange<T>) _then)
      : super(_value, (v) => _then(v as AverageOutOfRange<T>));

  @override
  AverageOutOfRange<T> get _value => super._value as AverageOutOfRange<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(AverageOutOfRange<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$AverageOutOfRange<T> implements AverageOutOfRange<T> {
  const _$AverageOutOfRange({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.averageOutOfRange(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AverageOutOfRange<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $AverageOutOfRangeCopyWith<T, AverageOutOfRange<T>> get copyWith =>
      _$AverageOutOfRangeCopyWithImpl<T, AverageOutOfRange<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result gradeOutOfRange(T failedValue),
    @required Result averageOutOfRange(T failedValue),
    @required Result invalidGradeType(T failedValue),
    @required Result notInitialized(T failedValue),
    @required Result termOutOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return averageOutOfRange(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result gradeOutOfRange(T failedValue),
    Result averageOutOfRange(T failedValue),
    Result invalidGradeType(T failedValue),
    Result notInitialized(T failedValue),
    Result termOutOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (averageOutOfRange != null) {
      return averageOutOfRange(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result gradeOutOfRange(GradeOutOfRange<T> value),
    @required Result averageOutOfRange(AverageOutOfRange<T> value),
    @required Result invalidGradeType(InvalidGradeType<T> value),
    @required Result notInitialized(NotInitialized<T> value),
    @required Result termOutOfRange(TermOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return averageOutOfRange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result gradeOutOfRange(GradeOutOfRange<T> value),
    Result averageOutOfRange(AverageOutOfRange<T> value),
    Result invalidGradeType(InvalidGradeType<T> value),
    Result notInitialized(NotInitialized<T> value),
    Result termOutOfRange(TermOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (averageOutOfRange != null) {
      return averageOutOfRange(this);
    }
    return orElse();
  }
}

abstract class AverageOutOfRange<T> implements ValueFailure<T> {
  const factory AverageOutOfRange({@required T failedValue}) =
      _$AverageOutOfRange<T>;

  @override
  T get failedValue;
  @override
  $AverageOutOfRangeCopyWith<T, AverageOutOfRange<T>> get copyWith;
}

abstract class $InvalidGradeTypeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidGradeTypeCopyWith(
          InvalidGradeType<T> value, $Res Function(InvalidGradeType<T>) then) =
      _$InvalidGradeTypeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidGradeTypeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidGradeTypeCopyWith<T, $Res> {
  _$InvalidGradeTypeCopyWithImpl(
      InvalidGradeType<T> _value, $Res Function(InvalidGradeType<T>) _then)
      : super(_value, (v) => _then(v as InvalidGradeType<T>));

  @override
  InvalidGradeType<T> get _value => super._value as InvalidGradeType<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidGradeType<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidGradeType<T> implements InvalidGradeType<T> {
  const _$InvalidGradeType({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidGradeType(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidGradeType<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidGradeTypeCopyWith<T, InvalidGradeType<T>> get copyWith =>
      _$InvalidGradeTypeCopyWithImpl<T, InvalidGradeType<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result gradeOutOfRange(T failedValue),
    @required Result averageOutOfRange(T failedValue),
    @required Result invalidGradeType(T failedValue),
    @required Result notInitialized(T failedValue),
    @required Result termOutOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return invalidGradeType(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result gradeOutOfRange(T failedValue),
    Result averageOutOfRange(T failedValue),
    Result invalidGradeType(T failedValue),
    Result notInitialized(T failedValue),
    Result termOutOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidGradeType != null) {
      return invalidGradeType(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result gradeOutOfRange(GradeOutOfRange<T> value),
    @required Result averageOutOfRange(AverageOutOfRange<T> value),
    @required Result invalidGradeType(InvalidGradeType<T> value),
    @required Result notInitialized(NotInitialized<T> value),
    @required Result termOutOfRange(TermOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return invalidGradeType(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result gradeOutOfRange(GradeOutOfRange<T> value),
    Result averageOutOfRange(AverageOutOfRange<T> value),
    Result invalidGradeType(InvalidGradeType<T> value),
    Result notInitialized(NotInitialized<T> value),
    Result termOutOfRange(TermOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidGradeType != null) {
      return invalidGradeType(this);
    }
    return orElse();
  }
}

abstract class InvalidGradeType<T> implements ValueFailure<T> {
  const factory InvalidGradeType({@required T failedValue}) =
      _$InvalidGradeType<T>;

  @override
  T get failedValue;
  @override
  $InvalidGradeTypeCopyWith<T, InvalidGradeType<T>> get copyWith;
}

abstract class $NotInitializedCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $NotInitializedCopyWith(
          NotInitialized<T> value, $Res Function(NotInitialized<T>) then) =
      _$NotInitializedCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$NotInitializedCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NotInitializedCopyWith<T, $Res> {
  _$NotInitializedCopyWithImpl(
      NotInitialized<T> _value, $Res Function(NotInitialized<T>) _then)
      : super(_value, (v) => _then(v as NotInitialized<T>));

  @override
  NotInitialized<T> get _value => super._value as NotInitialized<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(NotInitialized<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$NotInitialized<T> implements NotInitialized<T> {
  const _$NotInitialized({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.notInitialized(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotInitialized<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $NotInitializedCopyWith<T, NotInitialized<T>> get copyWith =>
      _$NotInitializedCopyWithImpl<T, NotInitialized<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result gradeOutOfRange(T failedValue),
    @required Result averageOutOfRange(T failedValue),
    @required Result invalidGradeType(T failedValue),
    @required Result notInitialized(T failedValue),
    @required Result termOutOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return notInitialized(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result gradeOutOfRange(T failedValue),
    Result averageOutOfRange(T failedValue),
    Result invalidGradeType(T failedValue),
    Result notInitialized(T failedValue),
    Result termOutOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notInitialized != null) {
      return notInitialized(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result gradeOutOfRange(GradeOutOfRange<T> value),
    @required Result averageOutOfRange(AverageOutOfRange<T> value),
    @required Result invalidGradeType(InvalidGradeType<T> value),
    @required Result notInitialized(NotInitialized<T> value),
    @required Result termOutOfRange(TermOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return notInitialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result gradeOutOfRange(GradeOutOfRange<T> value),
    Result averageOutOfRange(AverageOutOfRange<T> value),
    Result invalidGradeType(InvalidGradeType<T> value),
    Result notInitialized(NotInitialized<T> value),
    Result termOutOfRange(TermOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notInitialized != null) {
      return notInitialized(this);
    }
    return orElse();
  }
}

abstract class NotInitialized<T> implements ValueFailure<T> {
  const factory NotInitialized({@required T failedValue}) = _$NotInitialized<T>;

  @override
  T get failedValue;
  @override
  $NotInitializedCopyWith<T, NotInitialized<T>> get copyWith;
}

abstract class $TermOutOfRangeCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $TermOutOfRangeCopyWith(
          TermOutOfRange<T> value, $Res Function(TermOutOfRange<T>) then) =
      _$TermOutOfRangeCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$TermOutOfRangeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $TermOutOfRangeCopyWith<T, $Res> {
  _$TermOutOfRangeCopyWithImpl(
      TermOutOfRange<T> _value, $Res Function(TermOutOfRange<T>) _then)
      : super(_value, (v) => _then(v as TermOutOfRange<T>));

  @override
  TermOutOfRange<T> get _value => super._value as TermOutOfRange<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(TermOutOfRange<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$TermOutOfRange<T> implements TermOutOfRange<T> {
  const _$TermOutOfRange({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.termOutOfRange(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TermOutOfRange<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $TermOutOfRangeCopyWith<T, TermOutOfRange<T>> get copyWith =>
      _$TermOutOfRangeCopyWithImpl<T, TermOutOfRange<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result exceedingLength(T failedValue, int max),
    @required Result empty(T failedValue),
    @required Result multiline(T failedValue),
    @required Result listTooLong(T failedValue, int max),
    @required Result invalidEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result gradeOutOfRange(T failedValue),
    @required Result averageOutOfRange(T failedValue),
    @required Result invalidGradeType(T failedValue),
    @required Result notInitialized(T failedValue),
    @required Result termOutOfRange(T failedValue),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return termOutOfRange(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result exceedingLength(T failedValue, int max),
    Result empty(T failedValue),
    Result multiline(T failedValue),
    Result listTooLong(T failedValue, int max),
    Result invalidEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result gradeOutOfRange(T failedValue),
    Result averageOutOfRange(T failedValue),
    Result invalidGradeType(T failedValue),
    Result notInitialized(T failedValue),
    Result termOutOfRange(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (termOutOfRange != null) {
      return termOutOfRange(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result exceedingLength(ExceedingLength<T> value),
    @required Result empty(Empty<T> value),
    @required Result multiline(Multiline<T> value),
    @required Result listTooLong(ListTooLong<T> value),
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result gradeOutOfRange(GradeOutOfRange<T> value),
    @required Result averageOutOfRange(AverageOutOfRange<T> value),
    @required Result invalidGradeType(InvalidGradeType<T> value),
    @required Result notInitialized(NotInitialized<T> value),
    @required Result termOutOfRange(TermOutOfRange<T> value),
  }) {
    assert(exceedingLength != null);
    assert(empty != null);
    assert(multiline != null);
    assert(listTooLong != null);
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(gradeOutOfRange != null);
    assert(averageOutOfRange != null);
    assert(invalidGradeType != null);
    assert(notInitialized != null);
    assert(termOutOfRange != null);
    return termOutOfRange(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result exceedingLength(ExceedingLength<T> value),
    Result empty(Empty<T> value),
    Result multiline(Multiline<T> value),
    Result listTooLong(ListTooLong<T> value),
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result gradeOutOfRange(GradeOutOfRange<T> value),
    Result averageOutOfRange(AverageOutOfRange<T> value),
    Result invalidGradeType(InvalidGradeType<T> value),
    Result notInitialized(NotInitialized<T> value),
    Result termOutOfRange(TermOutOfRange<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (termOutOfRange != null) {
      return termOutOfRange(this);
    }
    return orElse();
  }
}

abstract class TermOutOfRange<T> implements ValueFailure<T> {
  const factory TermOutOfRange({@required T failedValue}) = _$TermOutOfRange<T>;

  @override
  T get failedValue;
  @override
  $TermOutOfRangeCopyWith<T, TermOutOfRange<T>> get copyWith;
}
