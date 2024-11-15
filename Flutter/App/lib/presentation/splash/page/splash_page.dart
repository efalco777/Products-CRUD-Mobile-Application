import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.white,
        child: Center(
          child: _SplashAnimatedLogo(),
        ),
      ),
    );
  }
}

class _SplashAnimatedLogo extends StatefulWidget {

  @override
  _SplashAnimatedLogoState createState() => _SplashAnimatedLogoState();
}

class _SplashAnimatedLogoState extends State<_SplashAnimatedLogo> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.75, end: 1.25).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: const FlutterLogo(
        size: 100,
      ),
    );
  }
}
