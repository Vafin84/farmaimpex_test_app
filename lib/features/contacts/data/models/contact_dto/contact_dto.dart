import 'package:farmaimpex_test_app/features/contacts/domain/entities/contact_entity/contact_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'contact_dto.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class ContactDTO {
  @HiveField(0)
  final String? name;
  @HiveField(1)
  final String? surname;
  @HiveField(2)
  final String? middlename;
  @HiveField(3)
  final String? phone;
  @HiveField(4)
  final List<String>? tags;

  ContactDTO({
    this.name = "",
    this.surname = "",
    this.middlename = "",
    this.phone = "",
    this.tags,
  });

  factory ContactDTO.fromJson(Map<String, dynamic> json) => _$ContactDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ContactDTOToJson(this);

  ContactEntity toEntity() {
    return ContactEntity(
      name: name.toString(),
      surname: surname.toString(),
      middlename: middlename.toString(),
      phone: phone ?? "",
      tags: tags?.map((e) => e.toString()).toList() ?? <String>[],
    );
  }
}
