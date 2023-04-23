import 'package:bloc/bloc.dart';
import 'package:farmaimpex_test_app/features/contacts/domain/entities/contact_entity/contact_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'favorit_state.dart';
part 'favorit_cubit.freezed.dart';
part 'favorit_cubit.g.dart';

class FavoritCubit extends HydratedCubit<FavoritState> {
  FavoritCubit() : super(const FavoritState(contacts: {}));

  void addFavorit({required ContactEntity contact}) {
    Set<ContactEntity> contacts = <ContactEntity>{};
    contacts.addAll(state.contacts);
    contacts.add(contact);
    emit(state.copyWith(contacts: contacts));
  }

  void removeFavorit({required ContactEntity contact}) {
    Set<ContactEntity> contacts = <ContactEntity>{};
    contacts.addAll(state.contacts);
    contacts.remove(contact);
    emit(state.copyWith(contacts: contacts));
  }

  @override
  FavoritState? fromJson(Map<String, dynamic> json) {
    return FavoritState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(FavoritState state) {
    return state.toJson();
  }
}
