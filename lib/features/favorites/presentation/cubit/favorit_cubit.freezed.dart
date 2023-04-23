// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FavoritState _$FavoritStateFromJson(Map<String, dynamic> json) {
  return _FavoritStateData.fromJson(json);
}

/// @nodoc
mixin _$FavoritState {
  Set<ContactEntity> get contacts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritStateCopyWith<FavoritState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritStateCopyWith<$Res> {
  factory $FavoritStateCopyWith(
          FavoritState value, $Res Function(FavoritState) then) =
      _$FavoritStateCopyWithImpl<$Res, FavoritState>;
  @useResult
  $Res call({Set<ContactEntity> contacts});
}

/// @nodoc
class _$FavoritStateCopyWithImpl<$Res, $Val extends FavoritState>
    implements $FavoritStateCopyWith<$Res> {
  _$FavoritStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_value.copyWith(
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as Set<ContactEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoritStateDataCopyWith<$Res>
    implements $FavoritStateCopyWith<$Res> {
  factory _$$_FavoritStateDataCopyWith(
          _$_FavoritStateData value, $Res Function(_$_FavoritStateData) then) =
      __$$_FavoritStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<ContactEntity> contacts});
}

/// @nodoc
class __$$_FavoritStateDataCopyWithImpl<$Res>
    extends _$FavoritStateCopyWithImpl<$Res, _$_FavoritStateData>
    implements _$$_FavoritStateDataCopyWith<$Res> {
  __$$_FavoritStateDataCopyWithImpl(
      _$_FavoritStateData _value, $Res Function(_$_FavoritStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_$_FavoritStateData(
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as Set<ContactEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FavoritStateData implements _FavoritStateData {
  const _$_FavoritStateData({required final Set<ContactEntity> contacts})
      : _contacts = contacts;

  factory _$_FavoritStateData.fromJson(Map<String, dynamic> json) =>
      _$$_FavoritStateDataFromJson(json);

  final Set<ContactEntity> _contacts;
  @override
  Set<ContactEntity> get contacts {
    if (_contacts is EqualUnmodifiableSetView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_contacts);
  }

  @override
  String toString() {
    return 'FavoritState(contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoritStateData &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoritStateDataCopyWith<_$_FavoritStateData> get copyWith =>
      __$$_FavoritStateDataCopyWithImpl<_$_FavoritStateData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FavoritStateDataToJson(
      this,
    );
  }
}

abstract class _FavoritStateData implements FavoritState {
  const factory _FavoritStateData(
      {required final Set<ContactEntity> contacts}) = _$_FavoritStateData;

  factory _FavoritStateData.fromJson(Map<String, dynamic> json) =
      _$_FavoritStateData.fromJson;

  @override
  Set<ContactEntity> get contacts;
  @override
  @JsonKey(ignore: true)
  _$$_FavoritStateDataCopyWith<_$_FavoritStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
