import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_state.dart';
part 'filter_cubit.freezed.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(const FilterState(tags: {}));

  void addTag({required String tag}) {
    Set<String> tags = <String>{};
    tags.addAll(state.tags);
    tags.add(tag);
    emit(state.copyWith(tags: tags));
  }

  void removeTag({required String tag}) {
    Set<String> tags = <String>{};
    tags.addAll(state.tags);
    tags.remove(tag);
    emit(state.copyWith(tags: tags));
  }
}
