// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Profile _$ProfileFromJson(Map<String, dynamic> json) => _Profile(
  avatar: const Uint8ListConverter().fromJson(json['avatar'] as List?),
  username: json['username'] as String? ?? '',
  birthday: json['birthday'] == null
      ? null
      : DateTime.parse(json['birthday'] as String),
);

Map<String, dynamic> _$ProfileToJson(_Profile instance) => <String, dynamic>{
  'avatar': const Uint8ListConverter().toJson(instance.avatar),
  'username': instance.username,
  'birthday': instance.birthday?.toIso8601String(),
};
