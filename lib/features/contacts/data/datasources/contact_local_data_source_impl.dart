import 'package:farmaimpex_test_app/features/contacts/data/models/contact_dto/contact_dto.dart';
import 'package:farmaimpex_test_app/features/contacts/domain/datasources/contact_local_data_source.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ContactLocalDataSource)
class ContactLocalDataSourceImpl implements ContactLocalDataSource {
  @override
  Future<List<ContactDTO>> addContact({required ContactDTO contact}) async {
    final box = await Hive.openBox<ContactDTO>('contacts');
    await box.add(contact);
    return box.values.toList();
  }

  @override
  Future<List<ContactDTO>> saveContacts({required List<ContactDTO> contacts}) async {
    final box = await Hive.openBox<ContactDTO>('contacts');
    await box.clear();
    await box.addAll(contacts);
    return box.values.toList();
  }

  @override
  Future<List<ContactDTO>> getContacts() async {
    final box = await Hive.openBox<ContactDTO>('contacts');
    return box.values.toList();
  }
}
