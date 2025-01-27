// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersModel _$UsersModelFromJson(Map<String, dynamic> json) => UsersModel(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$UsersModelToJson(UsersModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      city: json['city'] as String?,
      deviceId: json['deviceId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'city': instance.city,
      'deviceId': instance.deviceId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

CreateUsers _$CreateUsersFromJson(Map<String, dynamic> json) => CreateUsers(
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      city: json['city'] as String,
      deviceId: json['deviceId'] as String,
    );

Map<String, dynamic> _$CreateUsersToJson(CreateUsers instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'city': instance.city,
      'deviceId': instance.deviceId,
    };
