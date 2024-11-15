// Mocks generated by Mockito 5.4.4 from annotations
// in products_crud/test/bloc/products_cubit_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:products_crud/domain/product/model/product.dart' as _i4;
import 'package:products_crud/domain/product/use_case/get_products_use_case.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [GetProductsUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetProductsUseCase extends _i1.Mock
    implements _i2.GetProductsUseCase {
  MockGetProductsUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.Product>> call(dynamic _) => (super.noSuchMethod(
        Invocation.method(
          #call,
          [_],
        ),
        returnValue: _i3.Future<List<_i4.Product>>.value(<_i4.Product>[]),
      ) as _i3.Future<List<_i4.Product>>);
}
