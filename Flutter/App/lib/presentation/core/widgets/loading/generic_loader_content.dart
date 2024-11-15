import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:products_crud/presentation/core/assets/lottie_animation.dart';

class GenericLoaderContent extends StatelessWidget {
  const GenericLoaderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ColoredBox(
        color: Theme.of(context).colorScheme.surface,
        child: Center(
          child: Container(
            height: 300,
            margin: EdgeInsets.only(bottom: 120),
            child: Lottie.asset(
              LottieAnimation.loader.path,
            ),
          ),
        ),
      ),
    );
  }
}
