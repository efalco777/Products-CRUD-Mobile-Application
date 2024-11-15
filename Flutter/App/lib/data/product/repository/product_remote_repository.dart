import 'package:injectable/injectable.dart';
import 'package:products_crud/data/product/api/product_api.dart';
import 'package:products_crud/data/product/mapper/data_to_domain_product_details_mapper.dart';
import 'package:products_crud/data/product/mapper/data_to_domain_product_mapper.dart';
import 'package:products_crud/domain/product/model/product.dart';
import 'package:products_crud/domain/product/model/product_details.dart';
import 'package:products_crud/domain/product/repository/product_repository.dart';

@Injectable(as: ProductRepository)
class ProductRemoteRepository implements ProductRepository {
  ProductRemoteRepository(this.api);

  final ProductApi api;

  @override
  Future<ProductDetails> getProductDetails({required int id}) async {
    final result = await api.getProductDetails(id: id);

    return result.toDomain();
  }

  @override
  Future<List<Product>> getProducts() async {
    final result = await api.getProducts();

    return result.products.map((model) => model.toDomain()).toList();
  }
}
