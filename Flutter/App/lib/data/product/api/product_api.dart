import 'package:dio/dio.dart';
import 'package:products_crud/data/product/model/product_details_dto.dart';
import 'package:products_crud/data/product/model/products_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'product_api.g.dart';

@RestApi()
abstract class ProductApi {
  factory ProductApi(Dio dio) = _ProductApi;

  @GET('/product')
  Future<ProductsDTO> getProducts();

  @GET('/product/{id}')
  Future<ProductDetailsDTO> getProductDetails({
    @Path('id') required int id,
  });
}
