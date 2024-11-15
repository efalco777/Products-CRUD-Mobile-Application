import 'package:freezed_annotation/freezed_annotation.dart';

part 'presentation_product.freezed.dart';

@freezed
class PresentationProduct with _$PresentationProduct {
  const factory PresentationProduct({
    required int id,
    required String title,
    required String description,
    required double price,
    required String category,
    required List<String> images,
  }) = _PresentationProduct;
}
