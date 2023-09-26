import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/theme/theme.dart';
import 'package:food_delivery/cores/utils/utils.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    late final theme = Theme.of(context).extension<Palette>()!;
    return Center(
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
            fontSize: sp(kXtremeLarge),
            fontFamily: vigaFont,
            fontWeight: FontWeight.w400,
          ),
          TextWidget(
            "Deliver Favorite Food",
            textColor: theme.textColor1,
            fontSize: sp(kfsVeryTiny),
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
