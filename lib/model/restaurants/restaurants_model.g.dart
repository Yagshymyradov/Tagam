// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantsModel _$RestaurantsModelFromJson(Map<String, dynamic> json) =>
    RestaurantsModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      address: json['address'] as String,
      logo: json['logo'] as String,
      banner: json['banner'] as String,
      hasDelivery: json['hasDelivery'] as bool,
      deliveryFee: (json['deliveryFee'] as num).toInt(),
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      instagram: json['instagram'] as String?,
      tiktok: json['tiktok'] as String?,
      imo: json['imo'] as String?,
      lat: json['lat'] as String,
      lng: json['lng'] as String,
      workingTime: json['workingTime'] as String,
      isOpenNow: json['isOpenNow'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      dishCount: (json['dishCount'] as num).toInt(),
      isLiked: json['isLiked'] as bool,
    );

Map<String, dynamic> _$RestaurantsModelToJson(RestaurantsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'address': instance.address,
      'logo': instance.logo,
      'banner': instance.banner,
      'hasDelivery': instance.hasDelivery,
      'deliveryFee': instance.deliveryFee,
      'phoneNumbers': instance.phoneNumbers,
      'instagram': instance.instagram,
      'tiktok': instance.tiktok,
      'imo': instance.imo,
      'lat': instance.lat,
      'lng': instance.lng,
      'workingTime': instance.workingTime,
      'isOpenNow': instance.isOpenNow,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'dishCount': instance.dishCount,
      'isLiked': instance.isLiked,
    };

RestaurantMenusModel _$RestaurantMenusModelFromJson(
        Map<String, dynamic> json) =>
    RestaurantMenusModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$RestaurantMenusModelToJson(
        RestaurantMenusModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'icon': instance.icon,
    };
