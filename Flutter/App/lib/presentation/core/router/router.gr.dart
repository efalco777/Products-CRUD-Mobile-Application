// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:products_crud/presentation/product/page/product_details/product_details_page.dart'
    as _i1;
import 'package:products_crud/presentation/product/page/products/products_page.dart'
    as _i2;
import 'package:products_crud/presentation/splash/page/splash_page.dart' as _i3;

/// generated route for
/// [_i1.ProductDetailsPage]
class ProductDetailsRoute extends _i4.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    required int id,
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          ProductDetailsRoute.name,
          args: ProductDetailsRouteArgs(
            id: id,
            key: key,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ProductDetailsRouteArgs>(
          orElse: () => ProductDetailsRouteArgs(id: pathParams.getInt('id')));
      return _i1.ProductDetailsPage(
        id: args.id,
        key: args.key,
      );
    },
  );
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({
    required this.id,
    this.key,
  });

  final int id;

  final _i5.Key? key;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i2.ProductsPage]
class ProductsRoute extends _i4.PageRouteInfo<void> {
  const ProductsRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.ProductsPage();
    },
  );
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.SplashPage();
    },
  );
}
