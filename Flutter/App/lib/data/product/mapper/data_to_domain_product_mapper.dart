import 'package:products_crud/data/product/model/product_dto.dart';
import 'package:products_crud/domain/product/model/product.dart';

extension ProductMapper on ProductDTO {
  Product toDomain() {
    return Product(
      id: id,
      title: title,
      description: description,
      price: price,
      category: category,
      images: images,
    );
  }
}
