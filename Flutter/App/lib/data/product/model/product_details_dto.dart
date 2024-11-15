import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_dto.freezed.dart';
part 'product_details_dto.g.dart';

@freezed
class ProductDetailsDTO with _$ProductDetailsDTO {
  const factory ProductDetailsDTO({
    required int id,
    required String title,
    required String description,
    required double price,
    required String category,
    required List<String> images,
  }) = _ProductDetailsDTO;

  factory ProductDetailsDTO.fromJson(Map<String, dynamic> json) => _$ProductDetailsDTOFromJson(json);
}
