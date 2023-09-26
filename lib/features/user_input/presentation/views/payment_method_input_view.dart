import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/cores/theme/theme.dart';
import 'package:food_delivery/cores/utils/utils.dart';

class PaymentMethodView extends StatelessWidget {
  PaymentMethodView({super.key});
  final theme = Theme.of(navigationKey.currentContext!).extension<Palette>();

  @override
  Widget build(BuildContext context) {
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
            vSpace(kfsMedium),
            TextWidget(
              'Payment Method',
              fontFamily: bentonSansFont,
              fontWeight: FontWeight.w700,
              fontSize: kfsSuperLarge,
              textColor: theme?.mainTextColor,
            ),
            vSpace(kfsLarge),
            TextWidget(
              'This data will be displayed in your account\nprofile for security',
              fontFamily: bentonSansFont,
              fontWeight: FontWeight.w300,
              fontSize: kfsTiny,
              textColor: theme?.mainTextColor,
            ),
            vSpace(kXtremeLarge),
            _buildContainer(
              icon: IconAssets.paypalIcon,
              icon2: IconAssets.paypalIconW,
            ),
            vSpace(kfsExtraLarge),
            _buildContainer(
              icon: IconAssets.visaIcon,
              icon2: IconAssets.visaIconW,
            ),
            vSpace(150),
            ButtonWidget(
              onTap: () => NavigationHelper.instance
                  .navigateTo(RouteLocation.paymentMethodView),
              text: 'Next',
            ),
          ],
        ),
      ),
      useSingleScroll: true,
    );
  }

  Widget _buildContainer({
    required String icon,
    required String icon2,
  }) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: ThemeModeSelector.mode,
      builder: (context, val, _) {
        return Container(
          height: h(70),
          padding: EdgeInsets.symmetric(vertical: h(22)),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: theme!.borderColor),
            color: theme?.tileColor,
            borderRadius: BorderRadius.circular(kfsMedium),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              switch (val) {
                ThemeMode.dark => icon2.svg,
                ThemeMode.light => icon.svg,
                _ => icon.svg,
              },
            ],
          ),
        );
      },
    );
  }
}
