// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsDTOImpl _$$ProductsDTOImplFromJson(Map<String, dynamic> json) =>
    _$ProductsDTOImpl(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductsDTOImplToJson(_$ProductsDTOImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
