import 'package:auto_route/auto_route.dart';
import 'package:products_crud/presentation/core/router/router.gr.dart';

final rootRouter = AppRouter();

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/splash', page: SplashRoute.page, initial: true),
    AutoRoute(path: '/', page: ProductsRoute.page),
    AutoRoute(path: '/product/:id', page: ProductDetailsRoute.page),
  ];
}
