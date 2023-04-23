import 'package:farmaimpex_test_app/core/domain/app_config.dart';
import 'package:farmaimpex_test_app/features/contacts/data/models/contact_dto/contact_dto.dart';
import 'package:farmaimpex_test_app/features/contacts/domain/datasources/contact_local_data_source.dart';
import 'package:farmaimpex_test_app/features/contacts/domain/datasources/contact_remote_data_source.dart';
import 'package:farmaimpex_test_app/features/contacts/domain/entities/contact_entity/contact_entity.dart';
import 'package:farmaimpex_test_app/features/contacts/domain/repositories/contact_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ContactRepository)
class ContactRepositoryImpl implements ContactRepository {
  final ContactRemoteDataSource contactRemoteDataSource;
  final ContactLocalDataSource contactLocalDataSource;
  final AppConfig appConfig;
  ContactRepositoryImpl(this.contactRemoteDataSource, this.contactLocalDataSource, this.appConfig);
  @override
  Future<List<ContactEntity>> getContacts() async {
    try {
      // Hive.deleteBoxFromDisk('time');
      final timeBox = await Hive.openBox<int>('time');
      final expirationTimeBox = timeBox.get('time');
      final currentTime = DateTime.now().millisecondsSinceEpoch;
      if (expirationTimeBox == null || expirationTimeBox < currentTime) {
        final remoteContacts = await contactRemoteDataSource.getContacts();
        final localContacts = await contactLocalDataSource.saveContacts(contacts: remoteContacts);
        timeBox.put("time", DateTime.now().add(appConfig.expirationDuration).millisecondsSinceEpoch);
        return localContacts.map((e) => e.toEntity()).toList();
      } else {
        final localContacts = await contactLocalDataSource.getContacts();
        return localContacts.map((e) => e.toEntity()).toList();
      }
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<ContactEntity>> addContact({required ContactEntity contact}) async {
    try {
      final timeBox = await Hive.openBox<int>('time');
      final expirationTimeBox = timeBox.get('time');
      final localContacts = await contactLocalDataSource.addContact(contact: ContactDTO.fromJson(contact.toJson()));
      if (expirationTimeBox == null) {
        timeBox.put("time", DateTime.now().add(appConfig.expirationDuration).millisecondsSinceEpoch);
      }
      return localContacts.map((e) => e.toEntity()).toList();
    } catch (_) {
      rethrow;
    }
  }
}
