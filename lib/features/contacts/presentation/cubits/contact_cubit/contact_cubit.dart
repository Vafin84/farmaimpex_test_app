import 'package:bloc/bloc.dart';
import 'package:farmaimpex_test_app/features/contacts/domain/entities/contact_entity/contact_entity.dart';
import 'package:farmaimpex_test_app/features/contacts/domain/repositories/contact_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_state.dart';
part 'contact_cubit.freezed.dart';

class ContactCubit extends Cubit<ContactState> {
  final ContactRepository contactRepository;
  ContactCubit(this.contactRepository) : super(const ContactState.data(contacts: <ContactEntity>[]));

  Future<void> getContacts() async {
    try {
      emit(const ContactState.waiting());
      final contacts = await contactRepository.getContacts();
      emit(ContactState.data(contacts: contacts));
    } catch (error, st) {
      addError(error, st);
    }
  }

  Future<void> addContact({required ContactEntity contact}) async {
    try {
      emit(const ContactState.waiting());
      final contacts = await contactRepository.addContact(contact: contact);
      emit(ContactState.data(contacts: contacts));
    } catch (error, st) {
      addError(error, st);
    }
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(ContactState.error(error));
    super.addError(error, stackTrace);
  }
}
