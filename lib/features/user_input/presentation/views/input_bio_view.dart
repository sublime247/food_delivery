import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/cores/theme/theme.dart';
import 'package:food_delivery/cores/utils/utils.dart';

class InputBioView extends StatelessWidget {
  const InputBioView({super.key});

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
            vSpace(kfsMedium),
            TextWidget(
              'Fill in your bio to get\nstarted',
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
            TextFieldWidget(
              filled: true,
              hintText: 'First name',
            ),
            vSpace(kfsExtraLarge),
            TextFieldWidget(
              filled: true,
              hintText: 'Last name',
            ),
            vSpace(kfsExtraLarge),
            TextFieldWidget(
              filled: true,
              hintText: 'Mobile number',
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
}
