import 'package:products_crud/data/product/model/product_details_dto.dart';
import 'package:products_crud/domain/product/model/product_details.dart';

extension ProductDetailsMapper on ProductDetailsDTO {
  ProductDetails toDomain() {
    return ProductDetails(
      id: id,
      title: title,
      description: description,
      price: price,
      category: category,
      images: images,
    );
  }
}
