import 'package:injectable/injectable.dart';
import 'package:products_crud/domain/core/use_case/async_use_case.dart';
import 'package:products_crud/domain/product/model/product_details.dart';
import 'package:products_crud/domain/product/repository/product_repository.dart';

@Injectable()
class GetProductDetailsUseCase extends AsyncUseCase<int, ProductDetails> {
  GetProductDetailsUseCase(this._repository);

  final ProductRepository _repository;

  @override
  Future<ProductDetails> call(int id) {
    return _repository.getProductDetails(id: id);
  }
}
