import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/cores/theme/theme.dart';
import 'package:food_delivery/cores/utils/utils.dart';
import 'package:food_delivery/features/user_input/presentation/widgets/header_widget.dart';

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
            vSpace(kfsLarge),
            HeaderWidget(
              title: 'Payment Method',
              subtitle:
                  'This data will be displayed in your account\nprofile for security',
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
                  .navigateTo(RouteLocation.uploadPhotoView),
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
        return CustomContainer(
          onTap: () {},
          child: Center(
            child: switch (val) {
              ThemeMode.dark => icon2.svg,
              ThemeMode.light => icon.svg,
              _ => icon.svg,
            },
          ),
        );
      },
    );
  }
}
