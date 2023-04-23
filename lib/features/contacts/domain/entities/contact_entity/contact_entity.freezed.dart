// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactEntity _$ContactEntityFromJson(Map<String, dynamic> json) {
  return _ContactEntity.fromJson(json);
}

/// @nodoc
mixin _$ContactEntity {
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get middlename => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactEntityCopyWith<ContactEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactEntityCopyWith<$Res> {
  factory $ContactEntityCopyWith(
          ContactEntity value, $Res Function(ContactEntity) then) =
      _$ContactEntityCopyWithImpl<$Res, ContactEntity>;
  @useResult
  $Res call(
      {String name,
      String surname,
      String middlename,
      String? phone,
      List<String>? tags});
}

/// @nodoc
class _$ContactEntityCopyWithImpl<$Res, $Val extends ContactEntity>
    implements $ContactEntityCopyWith<$Res> {
  _$ContactEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? surname = null,
    Object? middlename = null,
    Object? phone = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      middlename: null == middlename
          ? _value.middlename
          : middlename // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactEntityCopyWith<$Res>
    implements $ContactEntityCopyWith<$Res> {
  factory _$$_ContactEntityCopyWith(
          _$_ContactEntity value, $Res Function(_$_ContactEntity) then) =
      __$$_ContactEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String surname,
      String middlename,
      String? phone,
      List<String>? tags});
}

/// @nodoc
class __$$_ContactEntityCopyWithImpl<$Res>
    extends _$ContactEntityCopyWithImpl<$Res, _$_ContactEntity>
    implements _$$_ContactEntityCopyWith<$Res> {
  __$$_ContactEntityCopyWithImpl(
      _$_ContactEntity _value, $Res Function(_$_ContactEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? surname = null,
    Object? middlename = null,
    Object? phone = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_ContactEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      middlename: null == middlename
          ? _value.middlename
          : middlename // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactEntity implements _ContactEntity {
  _$_ContactEntity(
      {required this.name,
      required this.surname,
      required this.middlename,
      this.phone = "",
      final List<String>? tags = const <String>[]})
      : _tags = tags;

  factory _$_ContactEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ContactEntityFromJson(json);

  @override
  final String name;
  @override
  final String surname;
  @override
  final String middlename;
  @override
  @JsonKey()
  final String? phone;
  final List<String>? _tags;
  @override
  @JsonKey()
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContactEntity(name: $name, surname: $surname, middlename: $middlename, phone: $phone, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.middlename, middlename) ||
                other.middlename == middlename) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, surname, middlename, phone,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactEntityCopyWith<_$_ContactEntity> get copyWith =>
      __$$_ContactEntityCopyWithImpl<_$_ContactEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactEntityToJson(
      this,
    );
  }
}

abstract class _ContactEntity implements ContactEntity {
  factory _ContactEntity(
      {required final String name,
      required final String surname,
      required final String middlename,
      final String? phone,
      final List<String>? tags}) = _$_ContactEntity;

  factory _ContactEntity.fromJson(Map<String, dynamic> json) =
      _$_ContactEntity.fromJson;

  @override
  String get name;
  @override
  String get surname;
  @override
  String get middlename;
  @override
  String? get phone;
  @override
  List<String>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$_ContactEntityCopyWith<_$_ContactEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
