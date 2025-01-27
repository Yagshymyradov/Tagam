import 'package:json_annotation/json_annotation.dart';

part 'users_model.g.dart';

@JsonSerializable()
class UsersModel {
  final User user;
  final String token;

  UsersModel({
    required this.user,
    required this.token,
  });

  factory UsersModel.fromJson(Map<String, dynamic> json) => _$UsersModelFromJson(json);
}

@JsonSerializable()
class User {
  final int? id;
  final String? name;
  final String? phoneNumber;
  final String? city;
  final String? deviceId;
  final String? createdAt;
  final String? updatedAt;

  User({
    this.id,
    this.name,
    this.phoneNumber,
    this.city,
    this.deviceId,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

}

@JsonSerializable()
class CreateUsers {
  final String name;
  final String phoneNumber;
  final String city;
  final String deviceId;

  CreateUsers({
    required this.name,
    required this.phoneNumber,
    required this.city,
    required this.deviceId,
  });

  Map<String, dynamic> toJson() => _$CreateUsersToJson(this);
}