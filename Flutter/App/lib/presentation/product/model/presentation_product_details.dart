import 'package:freezed_annotation/freezed_annotation.dart';

part 'presentation_product_details.freezed.dart';

@freezed
class PresentationProductDetails with _$PresentationProductDetails {
  const factory PresentationProductDetails({
    required int id,
    required String title,
    required String description,
    required double price,
    required String category,
    required List<String> images,
  }) = _PresentationProductDetails;

  static const empty = PresentationProductDetails(
    id: 0,
    title: '',
    description: '',
    price: 0,
    category: '',
    images: [],
  );
}
