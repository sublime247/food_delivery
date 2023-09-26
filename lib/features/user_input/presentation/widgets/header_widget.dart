import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/cores/theme/theme.dart';
import 'package:food_delivery/cores/utils/utils.dart';

class HeaderWidget extends StatelessWidget {
  HeaderWidget({super.key, required this.title, required this.subtitle});
  final theme = Theme.of(navigationKey.currentContext!).extension<Palette>();
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          title,
          fontFamily: bentonSansFont,
          fontWeight: FontWeight.w700,
          fontSize: kfsSuperLarge,
          textColor: theme?.mainTextColor,
        ),
        vSpace(kfsMedium),
        TextWidget(
          subtitle,
          fontFamily: bentonSansFont,
          fontWeight: FontWeight.w300,
          fontSize: kfsTiny,
          textColor: theme?.mainTextColor,
        ),
      ],
    );
  }
}
