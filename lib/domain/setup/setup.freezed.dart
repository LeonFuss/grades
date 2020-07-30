// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'setup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SetupTearOff {
  const _$SetupTearOff();

  _Setup call({@required UniqueId id, @required GradeSystem gradeSystem}) {
    return _Setup(
      id: id,
      gradeSystem: gradeSystem,
    );
  }
}

// ignore: unused_element
const $Setup = _$SetupTearOff();

mixin _$Setup {
  UniqueId get id;
  GradeSystem get gradeSystem;

  $SetupCopyWith<Setup> get copyWith;
}

abstract class $SetupCopyWith<$Res> {
  factory $SetupCopyWith(Setup value, $Res Function(Setup) then) =
      _$SetupCopyWithImpl<$Res>;
  $Res call({UniqueId id, GradeSystem gradeSystem});
}

class _$SetupCopyWithImpl<$Res> implements $SetupCopyWith<$Res> {
  _$SetupCopyWithImpl(this._value, this._then);

  final Setup _value;
  // ignore: unused_field
  final $Res Function(Setup) _then;

  @override
  $Res call({
    Object id = freezed,
    Object gradeSystem = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      gradeSystem: gradeSystem == freezed
          ? _value.gradeSystem
          : gradeSystem as GradeSystem,
    ));
  }
}

abstract class _$SetupCopyWith<$Res> implements $SetupCopyWith<$Res> {
  factory _$SetupCopyWith(_Setup value, $Res Function(_Setup) then) =
      __$SetupCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, GradeSystem gradeSystem});
}

class __$SetupCopyWithImpl<$Res> extends _$SetupCopyWithImpl<$Res>
    implements _$SetupCopyWith<$Res> {
  __$SetupCopyWithImpl(_Setup _value, $Res Function(_Setup) _then)
      : super(_value, (v) => _then(v as _Setup));

  @override
  _Setup get _value => super._value as _Setup;

  @override
  $Res call({
    Object id = freezed,
    Object gradeSystem = freezed,
  }) {
    return _then(_Setup(
      id: id == freezed ? _value.id : id as UniqueId,
      gradeSystem: gradeSystem == freezed
          ? _value.gradeSystem
          : gradeSystem as GradeSystem,
    ));
  }
}

class _$_Setup implements _Setup {
  const _$_Setup({@required this.id, @required this.gradeSystem})
      : assert(id != null),
        assert(gradeSystem != null);

  @override
  final UniqueId id;
  @override
  final GradeSystem gradeSystem;

  @override
  String toString() {
    return 'Setup(id: $id, gradeSystem: $gradeSystem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Setup &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.gradeSystem, gradeSystem) ||
                const DeepCollectionEquality()
                    .equals(other.gradeSystem, gradeSystem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(gradeSystem);

  @override
  _$SetupCopyWith<_Setup> get copyWith =>
      __$SetupCopyWithImpl<_Setup>(this, _$identity);
}

abstract class _Setup implements Setup {
  const factory _Setup(
      {@required UniqueId id, @required GradeSystem gradeSystem}) = _$_Setup;

  @override
  UniqueId get id;
  @override
  GradeSystem get gradeSystem;
  @override
  _$SetupCopyWith<_Setup> get copyWith;
}
