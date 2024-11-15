import 'package:products_crud/domain/product/model/product_details.dart';
import 'package:products_crud/presentation/product/model/presentation_product_details.dart';

extension PresentationProductDetailsMapper on ProductDetails {
  PresentationProductDetails toPresentation() {
    return PresentationProductDetails(
      id: id,
      title: title,
      description: description,
      price: price,
      category: category,
      images: images,
    );
  }
}
