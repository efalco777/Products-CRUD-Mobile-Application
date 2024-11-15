import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products_crud/core/error/app_error.dart';

part 'data_state.freezed.dart';

@freezed
class DataState with _$DataState {
  const factory DataState.loading() = DataLoading;
  const factory DataState.loaded() = DataLoaded;
  const factory DataState.error(AppError error) = DataError;
}
