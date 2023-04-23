// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactEntity _$$_ContactEntityFromJson(Map<String, dynamic> json) =>
    _$_ContactEntity(
      name: json['name'] as String,
      surname: json['surname'] as String,
      middlename: json['middlename'] as String,
      phone: json['phone'] as String? ?? "",
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
    );

Map<String, dynamic> _$$_ContactEntityToJson(_$_ContactEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'middlename': instance.middlename,
      'phone': instance.phone,
      'tags': instance.tags,
    };
