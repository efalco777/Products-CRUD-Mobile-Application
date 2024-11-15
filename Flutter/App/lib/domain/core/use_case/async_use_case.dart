import 'package:products_crud/domain/core/use_case/use_case.dart';

abstract class AsyncUseCase<IN, OUT> extends UseCase<IN, OUT> {
  Future<OUT> call(IN params);
}
