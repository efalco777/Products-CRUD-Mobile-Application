// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailsDTOImpl _$$ProductDetailsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailsDTOImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      category: json['category'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProductDetailsDTOImplToJson(
        _$ProductDetailsDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'category': instance.category,
      'images': instance.images,
    };
