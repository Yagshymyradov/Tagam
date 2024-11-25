// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllRestaurantsModel _$AllRestaurantsModelFromJson(Map<String, dynamic> json) =>
    AllRestaurantsModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      address: json['address'] as String,
      logo: json['logo'] as String,
      hasDelivery: json['hasDelivery'] as bool,
      deliveryFee: (json['deliveryFee'] as num).toInt(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$AllRestaurantsModelToJson(
        AllRestaurantsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'address': instance.address,
      'logo': instance.logo,
      'hasDelivery': instance.hasDelivery,
      'deliveryFee': instance.deliveryFee,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'phoneNumbers': instance.phoneNumbers,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
