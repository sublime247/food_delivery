import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/cores/theme/theme.dart';
import 'package:food_delivery/cores/utils/utils.dart';
import 'package:food_delivery/features/user_input/presentation/widgets/header_widget.dart';

class SetYourLocation extends StatelessWidget {
  const SetYourLocation({super.key});

  @override
  Widget build(BuildContext context) {
    late final theme = Theme.of(context).extension<Palette>();
    return ScaffoldWidget(
      usePadding: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kfsMedium,
          vertical: kfsExtraLarge,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackButtonWidget(
              onTap: () => NavigationHelper.instance.goBack(),
            ),
            vSpace(kfsLarge),
            HeaderWidget(
              title: 'Set Your Location',
              subtitle:
                  'This data will be displayed in your account\nprofile for security',
            ),
            vSpace(kXtremeLarge),
            CustomContainer(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: w(kfsTiny),
                  vertical: h(kfsLarge),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconAssets.locationIcon.svg,
                        hSpace(kfsTiny),
                        TextWidget(
                          'Your Location',
                          textColor: theme!.mainTextColor,
                          fontSize: sp(kfsMedium),
                          fontFamily: bentonSansFont,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    vSpace(kfsLarge),
                    CustomContainer(
                      onTap: () {},
                      color: theme.tileColorShade,
                      child: TextWidget(
                        'Set Location',
                        fontSize: sp(14),
                        fontWeight: FontWeight.w500,
                        fontFamily: bentonSansFont,
                        textColor: theme.mainTextColor,
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {},
            ),
            vSpace(spacer),
            ButtonWidget(
              onTap: () => NavigationHelper.instance
                  .navigateTo(RouteLocation.successfulView),
              text: 'Next',
            ),
          ],
        ),
      ),
      useSingleScroll: true,
    );
  }
}
