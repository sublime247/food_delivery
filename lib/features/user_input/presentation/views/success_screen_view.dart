import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/app_images.dart';
import 'package:food_delivery/cores/constants/app_strings.dart';
import 'package:food_delivery/cores/constants/font_size.dart';
import 'package:food_delivery/cores/theme/theme.dart';
import 'package:food_delivery/cores/utils/utils.dart';

class SuccessfulView extends StatelessWidget {
  const SuccessfulView({super.key});

  @override
  Widget build(BuildContext context) {
    late final theme = Theme.of(context).extension<Palette>();
    return ScaffoldWidget(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconAssets.successIcon.svg,
            vSpace(kXtremeLarge),
            TextWidget(
              'Congrats!',
              fontFamily: bentonSansFont,
              fontSize: sp(kfsSuperLarge),
              textColor: theme!.primaryColor,
              fontWeight: FontWeight.w700,
            ),
            vSpace(kfsLarge),
            TextWidget(
              'Your Profile Is Ready To Use',
              fontFamily: bentonSansFont,
              fontSize: sp(kfsLarge),
              textColor: theme.mainTextColor,
              fontWeight: FontWeight.w700,
            ),
            vSpace(spacer),
            ButtonWidget(
              onTap: () {},
              text: 'Try Order',
            ),
          ],
        ),
      ),
      useSingleScroll: false,
    );
  }
}
