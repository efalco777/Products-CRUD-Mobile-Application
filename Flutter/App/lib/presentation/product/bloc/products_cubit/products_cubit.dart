import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:products_crud/core/error/app_error.dart';
import 'package:products_crud/domain/product/use_case/get_products_use_case.dart';
import 'package:products_crud/presentation/core/bloc/data_state.dart';
import 'package:products_crud/presentation/product/bloc/products_cubit/products_cubit_state.dart';
import 'package:products_crud/presentation/product/mapper/domain_to_presentation_product_mapper.dart';

@Injectable()
class ProductsCubit extends Cubit<ProductsCubitState> {
  ProductsCubit(this._useCase) : super(ProductsCubitState.initial);

  final GetProductsUseCase _useCase;

  Future<void> loadData() async {
    try {
      emit(
        state.copyWith(dataState: const DataState.loading()),
      );

      final products = await _useCase.call(null);

      emit(
        state.copyWith(
          dataState: const DataState.loaded(),
          products: products.map((e) => e.toPresentation()).toList(),
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          dataState: DataState.error(error.toAppError()),
        ),
      );
    }
  }
}
