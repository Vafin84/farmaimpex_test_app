import 'package:farmaimpex_test_app/features/contacts/domain/entities/contact_entity/contact_entity.dart';

abstract class ContactRepository {
  Future<List<ContactEntity>> getContacts();
  Future<List<ContactEntity>> addContact({required ContactEntity contact});
}
