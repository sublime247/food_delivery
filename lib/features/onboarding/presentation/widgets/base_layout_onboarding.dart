import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/theme/theme.dart';
import 'package:food_delivery/cores/utils/utils.dart';

class BaseLayoutOnboarding extends StatelessWidget {
  const BaseLayoutOnboarding({
    super.key,
    required this.text,
    required this.subtext,
    required this.onTap,
    required this.iconUrl,
  });
  final String text;
  final String subtext;
  final VoidCallback onTap;
  final String iconUrl;
  @override
  Widget build(BuildContext context) {
    late final theme = Theme.of(context).extension<Palette>()!;
    return ScaffoldWidget(
      body: Column(
        children: [
          vSpace(kXtremeLarge),
          Image.asset(iconUrl),
          vSpace(kGlobalPadding),
          TextWidget(
            text,
            textAlign: TextAlign.center,
            textColor: theme.mainTextColor,
            fontWeight: FontWeight.w700,
            fontFamily: bentonSansFont,
            fontSize: sp(kfsSuperLarge),
          ),
          vSpace(kfsExtraLarge),
          TextWidget(
            subtext,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w300,
            fontFamily: bentonSansFont,
            textColor: theme.mainTextColor,
            fontSize: sp(kfsVeryTiny),
          ),
          vSpace(kXtremeLarge),
          ButtonWidget(
            onTap: onTap,
            text: 'Next',
          )
        ],
      ),
      useSingleScroll: false,
    );
  }
}
