// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'setup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SetupTearOff {
  const _$SetupTearOff();

  _Setup call(UniqueId id) {
    return _Setup(
      id,
    );
  }
}

// ignore: unused_element
const $Setup = _$SetupTearOff();

mixin _$Setup {
  UniqueId get id;

  $SetupCopyWith<Setup> get copyWith;
}

abstract class $SetupCopyWith<$Res> {
  factory $SetupCopyWith(Setup value, $Res Function(Setup) then) =
      _$SetupCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

class _$SetupCopyWithImpl<$Res> implements $SetupCopyWith<$Res> {
  _$SetupCopyWithImpl(this._value, this._then);

  final Setup _value;
  // ignore: unused_field
  final $Res Function(Setup) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

abstract class _$SetupCopyWith<$Res> implements $SetupCopyWith<$Res> {
  factory _$SetupCopyWith(_Setup value, $Res Function(_Setup) then) =
      __$SetupCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id});
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
  }) {
    return _then(_Setup(
      id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

class _$_Setup implements _Setup {
  const _$_Setup(this.id) : assert(id != null);

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'Setup(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Setup &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$SetupCopyWith<_Setup> get copyWith =>
      __$SetupCopyWithImpl<_Setup>(this, _$identity);
}

abstract class _Setup implements Setup {
  const factory _Setup(UniqueId id) = _$_Setup;

  @override
  UniqueId get id;
  @override
  _$SetupCopyWith<_Setup> get copyWith;
}
