import 'package:flutter/material.dart';
import 'package:food_delivery/cores/constants/app_images.dart';
import 'package:food_delivery/cores/navigator/navigation_helper.dart';
import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/features/onboarding/presentation/widgets/base_layout_onboarding.dart';

class OnboardScreen1 extends StatelessWidget {
  const OnboardScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayoutOnboarding(
      text: 'Find your Comfort\nFood here',
      subtext:
          'Here you can find a chef or dish for every\ntaste and color. Enjoy!',
      onTap: () => NavigationHelper.instance.navigateTo(RouteLocation.onboard2),
      iconUrl: ImageAssets.onboardIllustration2,
    );
  }
}
