import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/app_images.dart';
import 'package:food_delivery/cores/navigator/route_location.dart';
import 'package:food_delivery/cores/theme/app_colors.dart';
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
    return ScaffoldWidget(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(ImageAssets.logo, height: 200,),
            Text(
              "Food Ninja",
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: AppColor.primayColor
                  )
            ),
          ],
        ),
      ),
    useSingleScroll: false);
  }
}
