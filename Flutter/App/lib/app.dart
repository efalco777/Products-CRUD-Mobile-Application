import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:products_crud/core/config/app_environment.dart';
import 'package:products_crud/core/di/injector.dart' as di;
import 'package:products_crud/presentation/core/locale/app_locale.dart';
import 'package:products_crud/presentation/products_crud_application.dart';

/// Inits dependencies and launches the app with provided [AppEnvironment]
Future<void> initializeAndLaunchApp(AppEnvironment config) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await di.init(config);

  runApp(
    EasyLocalization(
      path: AppLocale.trPath,
      supportedLocales: AppLocale.supported,
      fallbackLocale: AppLocale.supported.first,
      child: const ProductsCrudApplication(),
    ),
  );
}
