// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContactDTOAdapter extends TypeAdapter<ContactDTO> {
  @override
  final int typeId = 1;

  @override
  ContactDTO read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ContactDTO(
      name: fields[0] as String?,
      surname: fields[1] as String?,
      middlename: fields[2] as String?,
      phone: fields[3] as String?,
      tags: (fields[4] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, ContactDTO obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.surname)
      ..writeByte(2)
      ..write(obj.middlename)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.tags);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContactDTOAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactDTO _$ContactDTOFromJson(Map<String, dynamic> json) => ContactDTO(
      name: json['name'] as String? ?? "",
      surname: json['surname'] as String? ?? "",
      middlename: json['middlename'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ContactDTOToJson(ContactDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'middlename': instance.middlename,
      'phone': instance.phone,
      'tags': instance.tags,
    };
