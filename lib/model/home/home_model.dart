import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart';

@JsonSerializable()
class AllRestaurantsModel {
  final int id;
  final String name;
  final String description;
  final String address;
  final String logo;
  final bool hasDelivery;
  final int deliveryFee;
  final double latitude;
  final double longitude;
  final List<String> phoneNumbers;
  final String createdAt;
  final String updatedAt;

  AllRestaurantsModel({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.logo,
    required this.hasDelivery,
    required this.deliveryFee,
    required this.latitude,
    required this.longitude,
    required this.phoneNumbers,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AllRestaurantsModel.fromJson(Map<String, dynamic> json) =>
      _$AllRestaurantsModelFromJson(json);
}
