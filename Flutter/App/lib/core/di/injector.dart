import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:products_crud/core/config/app_environment.dart';

import 'package:products_crud/core/di/injector.config.dart';

final _getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> init(AppEnvironment config) async {
  _getIt
    ..registerSingleton(config)
    ..init(environment: config.name);
}

/// Inject the dependency from get_it.
T inject<T extends Object>({String? instanceName, dynamic param1, dynamic param2}) =>
    _getIt.get<T>(instanceName: instanceName, param1: param1, param2: param2);
