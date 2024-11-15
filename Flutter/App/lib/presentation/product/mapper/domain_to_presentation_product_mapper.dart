import 'package:products_crud/domain/product/model/product.dart';
import 'package:products_crud/presentation/product/model/presentation_product.dart';

extension PresentationProductMapper on Product {
  PresentationProduct toPresentation() {
    return PresentationProduct(
      id: id,
      title: title,
      description: description,
      price: price,
      category: category,
      images: images,
    );
  }
}
