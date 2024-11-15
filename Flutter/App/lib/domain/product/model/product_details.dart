import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details.freezed.dart';

@freezed
class ProductDetails with _$ProductDetails {
  const factory ProductDetails({
    required int id,
    required String title,
    required String description,
    required double price,
    required String category,
    required List<String> images,
  }) = _ProductDetails;

  static const empty = ProductDetails(
    id: 0,
    title: '',
    description: '',
    price: 0,
    category: '',
    images: [],
  );
}
