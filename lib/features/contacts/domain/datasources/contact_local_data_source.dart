import 'package:farmaimpex_test_app/features/contacts/data/models/contact_dto/contact_dto.dart';

abstract class ContactLocalDataSource {
  Future<List<ContactDTO>> getContacts();
  Future<List<ContactDTO>> addContact({required ContactDTO contact});
  Future<List<ContactDTO>> saveContacts({required List<ContactDTO> contacts});
}
