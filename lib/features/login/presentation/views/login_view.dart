import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/theme/theme.dart';
import 'package:food_delivery/cores/utils/utils.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    late final theme = Theme.of(context).extension<Palette>()!;
    return ScaffoldWidget(
      useSingleScroll: true,
      body: Column(
        children: [
          const LogoWidget(),
          vSpace(kGlobalPadding),
          TextWidget(
            'Login To Your Account',
            textColor: theme.mainTextColor,
            fontSize: sp(kfsExtraLarge),
            fontWeight: FontWeight.w700,
            fontFamily: bentonSansFont,
          ),
          vSpace(kGlobalPadding),
          const TextFieldWidget(
            filled: true,
            hintText: 'Email',
          ),
          vSpace(kfsVeryTiny),
          const TextFieldWidget(
            filled: true,
            hintText: 'Password',
          ),
          vSpace(kfsExtraLarge),
          TextWidget(
            'Or Continue With',
            textColor: theme.mainTextColor,
            fontSize: sp(kfsVeryTiny),
            fontFamily: bentonSansFont,
            fontWeight: FontWeight.w500,
          ),
          vSpace(kfsExtraLarge),
          Row(
            children: [
              Expanded(
                child: _buildContainer(
                  icon: IconAssets.facebookIcon,
                  text: 'Facebook',
                ),
              ),
              hSpace(kfsTiny),
              Expanded(
                child: _buildContainer(
                  icon: IconAssets.googleIcon,
                  text: 'Google',
                ),
              ),
            ],
          ),
          vSpace(kfsExtraLarge),
          TextWidget(
            'Forgot Your Password?',
            fontFamily: bentonSansFont,
            textColor: theme.primaryColor,
            fontSize: sp(kfsTiny),
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
          ),
          vSpace(kGlobalPadding),
          ButtonWidget(
            onTap: () {},
            text: 'Login',
          ),
        ],
      ),
    );
  }

  Widget _buildContainer({required String icon, required String text}) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: w(kfsSuperLarge),
          vertical: h(kfsMedium),
        ),
        decoration: BoxDecoration(
          color: kColorWhite,
          borderRadius: BorderRadius.circular(kfsTiny),
          border: Border.all(color: borderColor),
        ),
        child: Row(
          children: [
            icon.svg,
            hSpace(kfsTiny),
            TextWidget(text),
          ],
        ),
      ),
    );
  }
}
