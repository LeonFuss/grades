// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'timetable_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TimetableItemTearOff {
  const _$TimetableItemTearOff();

  _TimetableItem call(
      {@required UniqueId id,
      @required UniqueId subjectId,
      @required Room room,
      @required SubjectName subjectName}) {
    return _TimetableItem(
      id: id,
      subjectId: subjectId,
      room: room,
      subjectName: subjectName,
    );
  }
}

// ignore: unused_element
const $TimetableItem = _$TimetableItemTearOff();

mixin _$TimetableItem {
  UniqueId get id;
  UniqueId get subjectId;
  Room get room;
  SubjectName get subjectName;

  $TimetableItemCopyWith<TimetableItem> get copyWith;
}

abstract class $TimetableItemCopyWith<$Res> {
  factory $TimetableItemCopyWith(
          TimetableItem value, $Res Function(TimetableItem) then) =
      _$TimetableItemCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id, UniqueId subjectId, Room room, SubjectName subjectName});
}

class _$TimetableItemCopyWithImpl<$Res>
    implements $TimetableItemCopyWith<$Res> {
  _$TimetableItemCopyWithImpl(this._value, this._then);

  final TimetableItem _value;
  // ignore: unused_field
  final $Res Function(TimetableItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object subjectId = freezed,
    Object room = freezed,
    Object subjectName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      subjectId:
          subjectId == freezed ? _value.subjectId : subjectId as UniqueId,
      room: room == freezed ? _value.room : room as Room,
      subjectName: subjectName == freezed
          ? _value.subjectName
          : subjectName as SubjectName,
    ));
  }
}

abstract class _$TimetableItemCopyWith<$Res>
    implements $TimetableItemCopyWith<$Res> {
  factory _$TimetableItemCopyWith(
          _TimetableItem value, $Res Function(_TimetableItem) then) =
      __$TimetableItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id, UniqueId subjectId, Room room, SubjectName subjectName});
}

class __$TimetableItemCopyWithImpl<$Res>
    extends _$TimetableItemCopyWithImpl<$Res>
    implements _$TimetableItemCopyWith<$Res> {
  __$TimetableItemCopyWithImpl(
      _TimetableItem _value, $Res Function(_TimetableItem) _then)
      : super(_value, (v) => _then(v as _TimetableItem));

  @override
  _TimetableItem get _value => super._value as _TimetableItem;

  @override
  $Res call({
    Object id = freezed,
    Object subjectId = freezed,
    Object room = freezed,
    Object subjectName = freezed,
  }) {
    return _then(_TimetableItem(
      id: id == freezed ? _value.id : id as UniqueId,
      subjectId:
          subjectId == freezed ? _value.subjectId : subjectId as UniqueId,
      room: room == freezed ? _value.room : room as Room,
      subjectName: subjectName == freezed
          ? _value.subjectName
          : subjectName as SubjectName,
    ));
  }
}

class _$_TimetableItem extends _TimetableItem {
  const _$_TimetableItem(
      {@required this.id,
      @required this.subjectId,
      @required this.room,
      @required this.subjectName})
      : assert(id != null),
        assert(subjectId != null),
        assert(room != null),
        assert(subjectName != null),
        super._();

  @override
  final UniqueId id;
  @override
  final UniqueId subjectId;
  @override
  final Room room;
  @override
  final SubjectName subjectName;

  @override
  String toString() {
    return 'TimetableItem(id: $id, subjectId: $subjectId, room: $room, subjectName: $subjectName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimetableItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.subjectId, subjectId) ||
                const DeepCollectionEquality()
                    .equals(other.subjectId, subjectId)) &&
            (identical(other.room, room) ||
                const DeepCollectionEquality().equals(other.room, room)) &&
            (identical(other.subjectName, subjectName) ||
                const DeepCollectionEquality()
                    .equals(other.subjectName, subjectName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(subjectId) ^
      const DeepCollectionEquality().hash(room) ^
      const DeepCollectionEquality().hash(subjectName);

  @override
  _$TimetableItemCopyWith<_TimetableItem> get copyWith =>
      __$TimetableItemCopyWithImpl<_TimetableItem>(this, _$identity);
}

abstract class _TimetableItem extends TimetableItem {
  const _TimetableItem._() : super._();
  const factory _TimetableItem(
      {@required UniqueId id,
      @required UniqueId subjectId,
      @required Room room,
      @required SubjectName subjectName}) = _$_TimetableItem;

  @override
  UniqueId get id;
  @override
  UniqueId get subjectId;
  @override
  Room get room;
  @override
  SubjectName get subjectName;
  @override
  _$TimetableItemCopyWith<_TimetableItem> get copyWith;
}
