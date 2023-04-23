// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterState {
  Set<String> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
  @useResult
  $Res call({Set<String> tags});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterStateTagsCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$_FilterStateTagsCopyWith(
          _$_FilterStateTags value, $Res Function(_$_FilterStateTags) then) =
      __$$_FilterStateTagsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<String> tags});
}

/// @nodoc
class __$$_FilterStateTagsCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$_FilterStateTags>
    implements _$$_FilterStateTagsCopyWith<$Res> {
  __$$_FilterStateTagsCopyWithImpl(
      _$_FilterStateTags _value, $Res Function(_$_FilterStateTags) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
  }) {
    return _then(_$_FilterStateTags(
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$_FilterStateTags implements _FilterStateTags {
  const _$_FilterStateTags({required final Set<String> tags}) : _tags = tags;

  final Set<String> _tags;
  @override
  Set<String> get tags {
    if (_tags is EqualUnmodifiableSetView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_tags);
  }

  @override
  String toString() {
    return 'FilterState(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterStateTags &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterStateTagsCopyWith<_$_FilterStateTags> get copyWith =>
      __$$_FilterStateTagsCopyWithImpl<_$_FilterStateTags>(this, _$identity);
}

abstract class _FilterStateTags implements FilterState {
  const factory _FilterStateTags({required final Set<String> tags}) =
      _$_FilterStateTags;

  @override
  Set<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_FilterStateTagsCopyWith<_$_FilterStateTags> get copyWith =>
      throw _privateConstructorUsedError;
}
