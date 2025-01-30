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

  UsersModel copyWith({
    User? user,
    String? token,
  }) {
    return UsersModel(
      user: user ?? this.user,
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toJson() => _$UsersModelToJson(this);

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

  User copyWith({
    int? id,
    String? name,
    String? phoneNumber,
    String? city,
    String? deviceId,
    String? createdAt,
    String? updatedAt,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      city: city ?? this.city,
      deviceId: deviceId ?? this.deviceId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);

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
