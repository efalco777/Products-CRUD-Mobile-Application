import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:products_crud/presentation/core/router/router.dart';

class ProductsCrudApplication extends StatefulWidget {
  const ProductsCrudApplication({
    super.key,
  });

  @override
  State<ProductsCrudApplication> createState() => _ProductsCrudApplicationState();
}

class _ProductsCrudApplicationState extends State<ProductsCrudApplication> {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();

    _openProductsPageAfterDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MaterialApp.router(
          theme: ThemeData.light(useMaterial3: true).copyWith(
            textTheme: GoogleFonts.krubTextTheme(),
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue,
            ),
          ),
          localizationsDelegates: [
            ...context.localizationDelegates,
          ],
          supportedLocales: context.supportedLocales,
          debugShowCheckedModeBanner: false,
          routerConfig: rootRouter.config(),
        );
      },
    );
  }

  void _openProductsPageAfterDelay() {
    Future<void>.delayed(const Duration(seconds: 3)).then((_) {});
  }
}
