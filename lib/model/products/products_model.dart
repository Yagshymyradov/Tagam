import 'package:json_annotation/json_annotation.dart';

part 'products_model.g.dart';

@JsonSerializable()
class ProductsModel {
  final int id;
  final String name;
  final String description;
  final int price;
  final List<String> images;
  final int preparationTime;
  final int menuId;
  final String createdAt;
  final String updatedAt;
  final bool? isLiked;

  ProductsModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.images,
    required this.preparationTime,
    required this.menuId,
    required this.createdAt,
    required this.updatedAt,
    required this.isLiked,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) => _$ProductsModelFromJson(json);
}
