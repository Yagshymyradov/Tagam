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
  final String? instagram;
  final String? tiktok;
  final String? imo;
  final String lat;
  final String lng;
  final String workingTime;
  final bool isOpenNow;
  final String createdAt;
  final String updatedAt;
  final int dishCount;
  final bool isLiked;

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
    required this.instagram,
    required this.tiktok,
    required this.imo,
    required this.lat,
    required this.lng,
    required this.workingTime,
    required this.isOpenNow,
    required this.createdAt,
    required this.updatedAt,
    required this.dishCount,
    required this.isLiked,
  });

  factory RestaurantsModel.fromJson(Map<String, dynamic> json) => _$RestaurantsModelFromJson(json);
}

@JsonSerializable()
class RestaurantMenusModel {
  final int? id;
  final String? name;
  final String? description;
  final String? image;
  final String? icon;

  RestaurantMenusModel({
    this.id,
    this.name,
    this.description,
    this.image,
    this.icon,
  });

  factory RestaurantMenusModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantMenusModelFromJson(json);
}

@JsonSerializable()
class BannerModel {
  final int id;
  final String image;
  final String link;
  final bool isActive;
  final String createdAt;
  final String updatedAt;

  BannerModel({
    required this.id,
    required this.image,
    required this.link,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}
