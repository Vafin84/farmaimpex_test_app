// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorit_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoritStateData _$$_FavoritStateDataFromJson(Map<String, dynamic> json) =>
    _$_FavoritStateData(
      contacts: (json['contacts'] as List<dynamic>)
          .map((e) => ContactEntity.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$$_FavoritStateDataToJson(_$_FavoritStateData instance) =>
    <String, dynamic>{
      'contacts': instance.contacts.toList(),
    };
