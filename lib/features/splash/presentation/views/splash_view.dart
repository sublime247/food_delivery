import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatelessWidget {
  static SplashView builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const SplashView();
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      body: Center(
        child: Text(
          "Splash Screen",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    useSingleScroll: true);
  }
}
