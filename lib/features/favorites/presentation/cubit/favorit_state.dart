part of 'favorit_cubit.dart';

@freezed
class FavoritState with _$FavoritState {
  const factory FavoritState({required Set<ContactEntity> contacts}) = _FavoritStateData;
  factory FavoritState.fromJson(Map<String, dynamic> json) => _$FavoritStateFromJson(json);
}
