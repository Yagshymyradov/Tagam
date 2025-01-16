import 'package:json_annotation/json_annotation.dart';

part 'restaurants_model.g.dart';

@JsonSerializable()
class RestaurantsModel {
  final int id;
  final String name;
  final String description;
  final String address;
  final String logo;
  final String banner;
  final bool hasDelivery;
  final int deliveryFee;
  final List<String> phoneNumbers;
  final Map<String, String>? socialMedia;
  final String workingTime;
  final bool isOpenNow;
  final String createdAt;
  final String updatedAt;
  final int dishCount;

  RestaurantsModel({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.logo,
    required this.banner,
    required this.hasDelivery,
    required this.deliveryFee,
    required this.phoneNumbers,
    this.socialMedia,
    required this.workingTime,
    required this.isOpenNow,
    required this.createdAt,
    required this.updatedAt,
    required this.dishCount,
  });

  factory RestaurantsModel.fromJson(Map<String, dynamic> json) => _$RestaurantsModelFromJson(json);
}
