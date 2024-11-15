import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:products_crud/core/di/injector.dart';
import 'package:products_crud/presentation/core/router/router.dart';
import 'package:products_crud/presentation/core/router/router.gr.dart';
import 'package:products_crud/presentation/core/theme/theme_extension.dart';
import 'package:products_crud/presentation/core/typedef/typedef.dart';
import 'package:products_crud/presentation/core/widgets/common/spacing.dart';
import 'package:products_crud/presentation/core/widgets/error/generic_error_content.dart';
import 'package:products_crud/presentation/core/widgets/image/cached_image.dart';
import 'package:products_crud/presentation/core/widgets/loading/generic_loader_content.dart';
import 'package:products_crud/presentation/product/bloc/products_cubit/products_cubit.dart';
import 'package:products_crud/presentation/product/bloc/products_cubit/products_cubit_state.dart';
import 'package:products_crud/presentation/product/model/presentation_product.dart';

part 'widgets.dart';

@RoutePage()
class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<ProductsCubit>()..loadData(),
      child: _Page(
        onRefresh: _onRefresh,
      ),
    );
  }

  void _onRefresh(BuildContext context) {
    context.read<ProductsCubit>().loadData();
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
      body: BlocBuilder<ProductsCubit, ProductsCubitState>(
        builder: (context, state) {
          return state.dataState.when(
            loading: () => const GenericLoaderContent(),
            error: (_) => GenericErrorContent(onRefresh: () => onRefresh(context)),
            loaded: () => _Loaded(products: state.products),
          );
        },
      ),
    );
  }
}
