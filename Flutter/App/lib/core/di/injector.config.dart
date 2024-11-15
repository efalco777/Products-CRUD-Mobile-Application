// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/data_module.dart' as _i880;
import '../../data/product/api/product_api.dart' as _i372;
import '../../data/product/repository/product_remote_repository.dart' as _i868;
import '../../domain/product/repository/product_repository.dart' as _i458;
import '../../domain/product/use_case/get_product_details_use_case.dart'
    as _i805;
import '../../domain/product/use_case/get_products_use_case.dart' as _i684;
import '../../presentation/product/bloc/product_details_cubit/product_details_cubit.dart'
    as _i967;
import '../../presentation/product/bloc/products_cubit/products_cubit.dart'
    as _i556;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    gh.factory<_i361.Dio>(() => dataModule.dio);
    gh.factory<_i372.ProductApi>(() => dataModule.productApi(gh<_i361.Dio>()));
    gh.factory<_i458.ProductRepository>(
        () => _i868.ProductRemoteRepository(gh<_i372.ProductApi>()));
    gh.factory<_i684.GetProductsUseCase>(
        () => _i684.GetProductsUseCase(gh<_i458.ProductRepository>()));
    gh.factory<_i805.GetProductDetailsUseCase>(
        () => _i805.GetProductDetailsUseCase(gh<_i458.ProductRepository>()));
    gh.factory<_i556.ProductsCubit>(
        () => _i556.ProductsCubit(gh<_i684.GetProductsUseCase>()));
    gh.factory<_i967.ProductDetailsCubit>(
        () => _i967.ProductDetailsCubit(gh<_i805.GetProductDetailsUseCase>()));
    return this;
  }
}

class _$DataModule extends _i880.DataModule {}
