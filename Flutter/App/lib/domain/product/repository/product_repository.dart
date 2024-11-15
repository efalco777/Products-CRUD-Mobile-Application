import 'package:products_crud/domain/product/model/product.dart';
import 'package:products_crud/domain/product/model/product_details.dart';

abstract class ProductRepository {
  Future<ProductDetails> getProductDetails({required int id});
  Future<List<Product>> getProducts();
}
