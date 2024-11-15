import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:products_crud/core/error/app_error.dart';
import 'package:products_crud/domain/product/model/product.dart';
import 'package:products_crud/domain/product/use_case/get_products_use_case.dart';
import 'package:products_crud/presentation/core/bloc/data_state.dart';
import 'package:products_crud/presentation/product/bloc/products_cubit/products_cubit.dart';
import 'package:products_crud/presentation/product/bloc/products_cubit/products_cubit_state.dart';
import 'package:products_crud/presentation/product/mapper/domain_to_presentation_product_mapper.dart';

import 'products_cubit_test.mocks.dart';

@GenerateMocks([GetProductsUseCase])
void main() {
  late ProductsCubit productsCubit;
  late MockGetProductsUseCase mockGetProductsUseCase;

  final mockProductList = [
    const Product(
      id: 1,
      title: 'Product 1',
      description: 'Description 1',
      price: 10,
      category: 'Category 1',
      images: ['image1.png'],
    ),
    const Product(
      id: 2,
      title: 'Product 2',
      description: 'Description 2',
      price: 20,
      category: 'Category 2',
      images: ['image2.png'],
    ),
  ];

  final mockAppError = AppError.unknown(source: '');

  setUp(() {
    mockGetProductsUseCase = MockGetProductsUseCase();
    productsCubit = ProductsCubit(mockGetProductsUseCase);
  });

  tearDown(() {
    productsCubit.close();
  });

  group('ProductsCubit Tests', () {
    blocTest<ProductsCubit, ProductsCubitState>(
      'emits [loading, loaded] when loadData is successful',
      setUp: () {
        when(mockGetProductsUseCase.call(any)).thenAnswer(
          (_) async => mockProductList,
        );
      },
      build: () => productsCubit,
      act: (cubit) => cubit.loadData(),
      expect: () => [
        ProductsCubitState.initial.copyWith(
          dataState: const DataState.loading(),
        ),
        ProductsCubitState.initial.copyWith(
          dataState: const DataState.loaded(),
          products: mockProductList.map((model) => model.toPresentation()).toList(),
        ),
      ],
    );

    blocTest<ProductsCubit, ProductsCubitState>(
      'emits [loading, error] when loadData fails',
      setUp: () {
        when(mockGetProductsUseCase.call(any)).thenThrow(mockAppError.source!);
      },
      build: () => productsCubit,
      act: (cubit) => cubit.loadData(),
      expect: () => [
        ProductsCubitState.initial.copyWith(
          dataState: const DataState.loading(),
        ),
        ProductsCubitState.initial.copyWith(
          dataState: DataState.error(mockAppError),
        ),
      ],
    );
  });
}
