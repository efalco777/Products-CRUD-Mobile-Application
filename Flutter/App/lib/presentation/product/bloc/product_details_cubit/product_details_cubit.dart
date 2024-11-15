import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:products_crud/core/error/app_error.dart';
import 'package:products_crud/domain/product/use_case/get_product_details_use_case.dart';
import 'package:products_crud/presentation/core/bloc/data_state.dart';
import 'package:products_crud/presentation/product/bloc/product_details_cubit/product_details_cubit_state.dart';
import 'package:products_crud/presentation/product/mapper/domain_to_presentation_product_details_mapper.dart';

@Injectable()
class ProductDetailsCubit extends Cubit<ProductsDetailsCubitState> {
  ProductDetailsCubit(this._useCase) : super(ProductsDetailsCubitState.initial());

  final GetProductDetailsUseCase _useCase;

  Future<void> loadData(int id) async {
    try {
      emit(
        state.copyWith(dataState: const DataState.loading()),
      );

      final productDetails = await _useCase.call(id);

      emit(
        state.copyWith(
          dataState: const DataState.loaded(),
          productDetails: productDetails.toPresentation(),
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
