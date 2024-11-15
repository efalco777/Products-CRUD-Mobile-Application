import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:products_crud/core/config/app_environment.dart';
import 'package:products_crud/core/di/injector.dart';

abstract class DioProvider {
  static String dioNoAuth = 'DioNoAuth';

  static Dio createDefault() {
    final env = inject<AppEnvironment>();

    final dio = Dio()
      ..options.baseUrl = env.baseUrl
      ..options.responseType = ResponseType.json
      ..interceptors.addAll([PrettyDioLogger()]);

    return dio;
  }
}
