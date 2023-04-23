part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({required ThemeMode themeMode}) = _SelectThemeState;
  factory ThemeState.fromJson(Map<String, dynamic> json) => _$ThemeStateFromJson(json);
}
