part of 'filter_cubit.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState({required Set<String> tags}) = _FilterStateTags;
}
