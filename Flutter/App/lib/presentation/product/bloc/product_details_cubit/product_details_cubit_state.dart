import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products_crud/presentation/core/bloc/data_state.dart';
import 'package:products_crud/presentation/product/model/presentation_product_details.dart';

part 'product_details_cubit_state.freezed.dart';

@freezed
class ProductsDetailsCubitState with _$ProductsDetailsCubitState {
  const factory ProductsDetailsCubitState({
    required DataState dataState,
    required PresentationProductDetails productDetails,
  }) = _ProductDetailsCubitState;

  const ProductsDetailsCubitState._();

  factory ProductsDetailsCubitState.initial() => const ProductsDetailsCubitState(
        dataState: DataState.loading(),
        productDetails: PresentationProductDetails.empty,
      );
}
