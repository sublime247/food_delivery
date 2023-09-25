import 'package:flutter/material.dart';
import 'package:food_delivery/cores/constants/app_images.dart';
import 'package:food_delivery/features/onboarding/presentation/widgets/base_layout_onboarding.dart';
import 'package:go_router/go_router.dart';

class OnboardScreen2 extends StatelessWidget {
  const OnboardScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayoutOnboarding(
      text: 'Find your Comfort\nFood here',
      subtext:
          'Here you can find a chef or dish for every\ntaste and color. Enjoy!',
      onTap: () => context.go(''),
      iconUrl: ImageAssets.onboardIllustration,
    );
  }
}