import 'package:flutter/material.dart';
import 'package:food_delivery/cores/constants/app_images.dart';
import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/features/onboarding/presentation/widgets/base_layout_onboarding.dart';
import 'package:go_router/go_router.dart';

class OnboardScreen2 extends StatelessWidget {
  const OnboardScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayoutOnboarding(
      text: 'Food Ninja is Where Your\nComfort Lives',
      subtext: 'Enjoy a fast and smooth food delivery at\nyour doorstep',
      onTap: () => context.go(RouteLocation.login),
      iconUrl: ImageAssets.onboardIllustration,
    );
  }
}
