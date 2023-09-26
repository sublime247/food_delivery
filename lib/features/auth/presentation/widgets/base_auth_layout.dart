import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/cores/theme/theme.dart';
import 'package:food_delivery/cores/utils/utils.dart';

class AuthBaseLayout extends StatelessWidget {
  AuthBaseLayout({super.key, required this.isSignUp});
  final bool isSignUp;
  final theme = Theme.of(navigationKey.currentContext!).extension<Palette>();

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      useSingleScroll: true,
      body: Column(
        children: [
          const LogoWidget(),
          vSpace(kGlobalPadding),
          TextWidget(
            switch (isSignUp) {
              true => 'Sign Up For Free',
              false => 'Login To Your Account',
            },
            textColor: theme?.mainTextColor,
            fontSize: sp(kfsExtraLarge),
            fontWeight: FontWeight.w700,
            fontFamily: bentonSansFont,
          ),
          vSpace(kGlobalPadding),
          if (!isSignUp) ...[
            TextFieldWidget(
              filled: true,
              hintText: 'Email',
            ),
            vSpace(kfsVeryTiny),
            TextFieldWidget(
              filled: true,
              hintText: 'Password',
            ),
            vSpace(kfsExtraLarge),
            TextWidget(
              'Or Continue With',
              textColor: theme?.mainTextColor,
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
              textColor: theme?.primaryColor,
              fontSize: sp(kfsTiny),
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
          ],
          if (isSignUp) ...[
            TextFieldWidget(
              filled: true,
              prefixIcon: IconAssets.profileIcon.svg,
              hintText: 'John Doe',
            ),
            vSpace(kfsVeryTiny),
            TextFieldWidget(
              filled: true,
              prefixIcon: IconAssets.mailIcon.svg,
              hintText: 'Email',
            ),
            vSpace(kfsVeryTiny),
            TextFieldWidget(
              filled: true,
              prefixIcon: IconAssets.lockIcon.svg,
              hintText: 'Password',
            ),
            vSpace(kfsVeryTiny),
          ],
          vSpace(kGlobalPadding),
          ButtonWidget(
            onTap: switch (isSignUp) {
              true => () =>
                  NavigationHelper.instance.navigateTo(RouteLocation.inputBio),
              false => () =>
                  NavigationHelper.instance.navigateTo(RouteLocation.signUp),
            },
            text: switch (isSignUp) {
              true => 'Create Account',
              false => 'Login',
            },
          ),
          vSpace(kfsLarge),
          if (isSignUp) ...[
            TextWidget(
              'Already have an account?',
              fontFamily: bentonSansFont,
              textColor: theme?.primaryColor,
              fontSize: sp(kfsTiny),
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
            ),
          ]
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
          color: theme?.tileColor,
          borderRadius: BorderRadius.circular(kfsTiny),
          border: Border.all(color: theme!.borderColor),
        ),
        child: Row(
          children: [
            icon.svg,
            hSpace(kfsTiny),
            TextWidget(
              text,
              textColor: theme?.mainTextColor,
              fontSize: sp(kfsVeryTiny),
              fontFamily: bentonSansFont,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
