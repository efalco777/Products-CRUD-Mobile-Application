import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:products_crud/core/error/app_error.dart';
import 'package:products_crud/domain/product/model/product_details.dart';
import 'package:products_crud/domain/product/use_case/get_product_details_use_case.dart';
import 'package:products_crud/presentation/core/bloc/data_state.dart';
import 'package:products_crud/presentation/product/bloc/product_details_cubit/product_details_cubit.dart';
import 'package:products_crud/presentation/product/bloc/product_details_cubit/product_details_cubit_state.dart';
import 'package:products_crud/presentation/product/mapper/domain_to_presentation_product_details_mapper.dart';

import 'product_details_cubit_test.mocks.dart';

@GenerateMocks([GetProductDetailsUseCase])
void main() {
  late ProductDetailsCubit productDetailsCubit;
  late MockGetProductDetailsUseCase mockGetProductDetailsUseCase;

  const mockProductDetails = ProductDetails(
    id: 1,
    title: 'Product 1',
    description: 'Detailed description of Product 1',
    price: 100,
    category: 'Category 1',
    images: ['image1.png'],
  );
  final mockAppError = AppError.unknown(source: '');

  setUp(() {
    mockGetProductDetailsUseCase = MockGetProductDetailsUseCase();
    productDetailsCubit = ProductDetailsCubit(mockGetProductDetailsUseCase);
  });

  tearDown(() {
    productDetailsCubit.close();
  });

  group('ProductDetailsCubit Tests', () {
    blocTest<ProductDetailsCubit, ProductsDetailsCubitState>(
      'emits [loading, loaded] when loadData is successful',
      setUp: () {
        when(mockGetProductDetailsUseCase.call(1)).thenAnswer(
          (_) async => mockProductDetails,
        );
      },
      build: () => productDetailsCubit,
      act: (cubit) => cubit.loadData(1),
      expect: () => [
        ProductsDetailsCubitState.initial().copyWith(
          dataState: const DataState.loading(),
        ),
        ProductsDetailsCubitState.initial().copyWith(
          dataState: const DataState.loaded(),
          productDetails: mockProductDetails.toPresentation(),
        ),
      ],
    );

    blocTest<ProductDetailsCubit, ProductsDetailsCubitState>(
      'emits [loading, error] when loadData fails',
      setUp: () {
        when(mockGetProductDetailsUseCase.call(1)).thenThrow(mockAppError.source!);
      },
      build: () => productDetailsCubit,
      act: (cubit) => cubit.loadData(1),
      expect: () => [
        ProductsDetailsCubitState.initial().copyWith(
          dataState: const DataState.loading(),
        ),
        ProductsDetailsCubitState.initial().copyWith(
          dataState: DataState.error(mockAppError),
        ),
      ],
    );
  });
}
