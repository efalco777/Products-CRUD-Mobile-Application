import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:products_crud/core/network/dio_provider.dart';
import 'package:products_crud/data/product/api/product_api.dart';

@module
abstract class DataModule {
  Dio get dio => DioProvider.createDefault();

  ProductApi productApi(Dio dio) => ProductApi(dio);
}
