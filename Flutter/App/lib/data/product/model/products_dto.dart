import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products_crud/data/product/model/product_dto.dart';

part 'products_dto.freezed.dart';
part 'products_dto.g.dart';

@freezed
class ProductsDTO with _$ProductsDTO {
  const factory ProductsDTO({
    @Key('products') required List<ProductDTO> products,
  }) = _ProductsDTO;

  factory ProductsDTO.fromJson(Map<String, dynamic> json) => _$ProductsDTOFromJson(json);
}
