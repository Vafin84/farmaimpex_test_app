// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function(List<ContactEntity> contacts) data,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waiting,
    TResult? Function(List<ContactEntity> contacts)? data,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function(List<ContactEntity> contacts)? data,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactStateWaitng value) waiting,
    required TResult Function(_ContactStateData value) data,
    required TResult Function(_ContactStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactStateWaitng value)? waiting,
    TResult? Function(_ContactStateData value)? data,
    TResult? Function(_ContactStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactStateWaitng value)? waiting,
    TResult Function(_ContactStateData value)? data,
    TResult Function(_ContactStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactStateCopyWith<$Res> {
  factory $ContactStateCopyWith(
          ContactState value, $Res Function(ContactState) then) =
      _$ContactStateCopyWithImpl<$Res, ContactState>;
}

/// @nodoc
class _$ContactStateCopyWithImpl<$Res, $Val extends ContactState>
    implements $ContactStateCopyWith<$Res> {
  _$ContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ContactStateWaitngCopyWith<$Res> {
  factory _$$_ContactStateWaitngCopyWith(_$_ContactStateWaitng value,
          $Res Function(_$_ContactStateWaitng) then) =
      __$$_ContactStateWaitngCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContactStateWaitngCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$_ContactStateWaitng>
    implements _$$_ContactStateWaitngCopyWith<$Res> {
  __$$_ContactStateWaitngCopyWithImpl(
      _$_ContactStateWaitng _value, $Res Function(_$_ContactStateWaitng) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ContactStateWaitng implements _ContactStateWaitng {
  const _$_ContactStateWaitng();

  @override
  String toString() {
    return 'ContactState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ContactStateWaitng);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function(List<ContactEntity> contacts) data,
    required TResult Function(dynamic error) error,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waiting,
    TResult? Function(List<ContactEntity> contacts)? data,
    TResult? Function(dynamic error)? error,
  }) {
    return waiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function(List<ContactEntity> contacts)? data,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactStateWaitng value) waiting,
    required TResult Function(_ContactStateData value) data,
    required TResult Function(_ContactStateError value) error,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactStateWaitng value)? waiting,
    TResult? Function(_ContactStateData value)? data,
    TResult? Function(_ContactStateError value)? error,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactStateWaitng value)? waiting,
    TResult Function(_ContactStateData value)? data,
    TResult Function(_ContactStateError value)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class _ContactStateWaitng implements ContactState {
  const factory _ContactStateWaitng() = _$_ContactStateWaitng;
}

/// @nodoc
abstract class _$$_ContactStateDataCopyWith<$Res> {
  factory _$$_ContactStateDataCopyWith(
          _$_ContactStateData value, $Res Function(_$_ContactStateData) then) =
      __$$_ContactStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ContactEntity> contacts});
}

/// @nodoc
class __$$_ContactStateDataCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$_ContactStateData>
    implements _$$_ContactStateDataCopyWith<$Res> {
  __$$_ContactStateDataCopyWithImpl(
      _$_ContactStateData _value, $Res Function(_$_ContactStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_$_ContactStateData(
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactEntity>,
    ));
  }
}

/// @nodoc

class _$_ContactStateData implements _ContactStateData {
  const _$_ContactStateData({required final List<ContactEntity> contacts})
      : _contacts = contacts;

  final List<ContactEntity> _contacts;
  @override
  List<ContactEntity> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'ContactState.data(contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactStateData &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactStateDataCopyWith<_$_ContactStateData> get copyWith =>
      __$$_ContactStateDataCopyWithImpl<_$_ContactStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function(List<ContactEntity> contacts) data,
    required TResult Function(dynamic error) error,
  }) {
    return data(contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waiting,
    TResult? Function(List<ContactEntity> contacts)? data,
    TResult? Function(dynamic error)? error,
  }) {
    return data?.call(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function(List<ContactEntity> contacts)? data,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactStateWaitng value) waiting,
    required TResult Function(_ContactStateData value) data,
    required TResult Function(_ContactStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactStateWaitng value)? waiting,
    TResult? Function(_ContactStateData value)? data,
    TResult? Function(_ContactStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactStateWaitng value)? waiting,
    TResult Function(_ContactStateData value)? data,
    TResult Function(_ContactStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ContactStateData implements ContactState {
  const factory _ContactStateData(
      {required final List<ContactEntity> contacts}) = _$_ContactStateData;

  List<ContactEntity> get contacts;
  @JsonKey(ignore: true)
  _$$_ContactStateDataCopyWith<_$_ContactStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ContactStateErrorCopyWith<$Res> {
  factory _$$_ContactStateErrorCopyWith(_$_ContactStateError value,
          $Res Function(_$_ContactStateError) then) =
      __$$_ContactStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$_ContactStateErrorCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$_ContactStateError>
    implements _$$_ContactStateErrorCopyWith<$Res> {
  __$$_ContactStateErrorCopyWithImpl(
      _$_ContactStateError _value, $Res Function(_$_ContactStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_ContactStateError(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_ContactStateError implements _ContactStateError {
  const _$_ContactStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'ContactState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactStateErrorCopyWith<_$_ContactStateError> get copyWith =>
      __$$_ContactStateErrorCopyWithImpl<_$_ContactStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() waiting,
    required TResult Function(List<ContactEntity> contacts) data,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? waiting,
    TResult? Function(List<ContactEntity> contacts)? data,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? waiting,
    TResult Function(List<ContactEntity> contacts)? data,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactStateWaitng value) waiting,
    required TResult Function(_ContactStateData value) data,
    required TResult Function(_ContactStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContactStateWaitng value)? waiting,
    TResult? Function(_ContactStateData value)? data,
    TResult? Function(_ContactStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactStateWaitng value)? waiting,
    TResult Function(_ContactStateData value)? data,
    TResult Function(_ContactStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ContactStateError implements ContactState {
  const factory _ContactStateError(final dynamic error) = _$_ContactStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$_ContactStateErrorCopyWith<_$_ContactStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
