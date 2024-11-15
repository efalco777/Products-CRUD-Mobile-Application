import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_crud/core/di/injector.dart';
import 'package:products_crud/presentation/core/const/inset.dart';
import 'package:products_crud/presentation/core/theme/theme_extension.dart';
import 'package:products_crud/presentation/core/typedef/typedef.dart';
import 'package:products_crud/presentation/core/widgets/common/spacing.dart';
import 'package:products_crud/presentation/core/widgets/error/generic_error_content.dart';
import 'package:products_crud/presentation/core/widgets/image/cached_image.dart';
import 'package:products_crud/presentation/core/widgets/loading/generic_loader_content.dart';
import 'package:products_crud/presentation/product/bloc/product_details_cubit/product_details_cubit.dart';
import 'package:products_crud/presentation/product/bloc/product_details_cubit/product_details_cubit_state.dart';
import 'package:products_crud/presentation/product/model/presentation_product_details.dart';

part 'widgets.dart';

@RoutePage()
class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({
    @PathParam('id') required this.id,
    super.key,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<ProductDetailsCubit>()..loadData(id),
      child: _Page(
        onRefresh: _onRefresh,
      ),
    );
  }

  void _onRefresh(BuildContext context) {
    context.read<ProductDetailsCubit>().loadData(id);
  }
}

class _Page extends StatelessWidget {
  const _Page({
    required this.onRefresh,
  });

  final GenericCallback<BuildContext> onRefresh;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<ProductDetailsCubit, ProductsDetailsCubitState>(
        builder: (context, state) {
          return state.dataState.when(
            loading: () => const GenericLoaderContent(),
            error: (_) => GenericErrorContent(onRefresh: () => onRefresh(context)),
            loaded: () => _Loaded(productDetails: state.productDetails),
          );
        },
      ),
    );
  }
}
