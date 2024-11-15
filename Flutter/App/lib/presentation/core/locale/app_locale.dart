import 'package:flutter/material.dart';

abstract class AppLocale {
  static const trPath = 'assets/translations';

  static final supported = [
    const Locale('en'),
    const Locale('pl'),
  ];
}
