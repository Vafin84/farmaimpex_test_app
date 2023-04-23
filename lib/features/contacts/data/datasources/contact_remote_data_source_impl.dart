import 'dart:convert';

import 'package:farmaimpex_test_app/core/domain/app_api.dart';
import 'package:farmaimpex_test_app/features/contacts/data/models/contact_dto/contact_dto.dart';
import 'package:farmaimpex_test_app/features/contacts/domain/datasources/contact_remote_data_source.dart';
import 'package:farmaimpex_test_app/features/contacts/domain/entities/contact_entity/contact_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ContactRemoteDataSource)
class ContactRemoteDataSourceImpl implements ContactRemoteDataSource {
  final AppApi api;
  ContactRemoteDataSourceImpl(this.api);

  @override
  Future<List<ContactDTO>> getContacts() async {
    try {
      final response = await api.getContacts();
      final json = jsonDecode(response.data)["data"] as List;
      return json.map((e) => ContactDTO.fromJson(e)).toList();
    } catch (_) {
      rethrow;
    }
  }

  //Имитируем запрос к серверу
  @override
  Future<List<ContactDTO>> syncingContacts({required List<ContactEntity> contacts}) async {
    return contacts.map((e) => ContactDTO.fromJson(e.toJson())).toList();
  }
}
