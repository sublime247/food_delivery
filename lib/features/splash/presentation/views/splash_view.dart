import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/app_images.dart';
import 'package:food_delivery/cores/constants/app_strings.dart';
import 'package:food_delivery/cores/navigator/route_location.dart';
import 'package:food_delivery/cores/theme/theme.dart';
import 'package:food_delivery/cores/utils/utils.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  static SplashView builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const SplashView();
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
    late final theme = Theme.of(context).extension<Palette>()!;
    return ScaffoldWidget(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              ImageAssets.logo,
              height: h(200),
            ),
            TextWidget(
              "Food Ninja",
              textColor: theme.primaryColor,
              fontSize: sp(40),
              fontFamily: vigaFont,
              fontWeight: FontWeight.w400,
            ),
            
          ],
        ),
      ),
      useSingleScroll: false,
    );
  }
}
