import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/theme/theme.dart';
import 'package:food_delivery/cores/utils/utils.dart';

class OnboardScreen extends ConsumerStatefulWidget {
  const OnboardScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends ConsumerState<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    late final theme = Theme.of(context).extension<Palette>()!;
    return ScaffoldWidget(
      body: Column(
        children: [
          vSpace(kXtremeLarge),
          Image.asset(ImageAssets.onboardIllustration),
          vSpace(kGlobalPadding),
          TextWidget(
            'Find your Comfort\nFood here',
            textAlign: TextAlign.center,
            textColor: theme.mainTextColor,
            fontFamily: bentonSansFont,
            fontSize: sp(kfsSuperLarge),
          ),
          vSpace(kfsExtraLarge),
          TextWidget(
            'Here you can find a chef or dish for every\ntaste and color. Enjoy!',
            textAlign: TextAlign.center,
            textColor: theme.mainTextColor,
            fontSize: sp(kfsVeryTiny),
          ),
          vSpace(kXtremeLarge),
          ButtonWidget(
            onTap: () {},
            text: 'Next',
          )
        ],
      ),
      useSingleScroll: false,
    );
  }
}
