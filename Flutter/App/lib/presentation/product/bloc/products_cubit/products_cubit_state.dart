import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products_crud/presentation/core/bloc/data_state.dart';
import 'package:products_crud/presentation/product/model/presentation_product.dart';

part 'products_cubit_state.freezed.dart';

@freezed
class ProductsCubitState with _$ProductsCubitState {
  const factory ProductsCubitState({
    required DataState dataState,
    required List<PresentationProduct> products,
  }) = _ProductsCubitState;

  const ProductsCubitState._();

  static final initial = ProductsCubitState(
    dataState: DataState.loading(),
    products: [],
  );
}
