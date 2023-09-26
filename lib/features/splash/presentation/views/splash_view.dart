import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/navigator/route_location.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      context.go(RouteLocation.onboard1);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const ScaffoldWidget(
      body: LogoWidget(),
      useSingleScroll: false,
    );
  }
}
