import 'package:injectable/injectable.dart';
import 'package:products_crud/domain/core/use_case/async_use_case.dart';
import 'package:products_crud/domain/product/model/product.dart';
import 'package:products_crud/domain/product/repository/product_repository.dart';

@Injectable()
class GetProductsUseCase extends AsyncUseCase<void, List<Product>> {
  GetProductsUseCase(this._repository);

  final ProductRepository _repository;

  @override
  Future<List<Product>> call(void _) {
    return _repository.getProducts();
  }
}
