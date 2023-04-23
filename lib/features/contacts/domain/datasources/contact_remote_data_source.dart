import 'package:farmaimpex_test_app/features/contacts/data/models/contact_dto/contact_dto.dart';
import 'package:farmaimpex_test_app/features/contacts/domain/entities/contact_entity/contact_entity.dart';

abstract class ContactRemoteDataSource {
  Future<List<ContactDTO>> getContacts();
  Future<List<ContactDTO>> syncingContacts({required List<ContactEntity> contacts});
}
