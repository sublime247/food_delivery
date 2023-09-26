import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/cores/theme/palette.dart';
import 'package:food_delivery/cores/utils/utils.dart';
import 'package:food_delivery/features/user_input/presentation/widgets/header_widget.dart';

class UploadPhotoView extends StatelessWidget {
  const UploadPhotoView({super.key});

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
              title: 'Upload Your Photo\nProfile',
              subtitle:
                  'This data will be displayed in your account\nprofile for security',
            ),
            vSpace(kXtremeLarge),
            CustomContainer(
              height: h(129),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconAssets.galleryIcon.svg,
                  vSpace(kfsVeryTiny),
                  TextWidget(
                    'From Gallery',
                    fontSize: sp(kfsTiny),
                    textColor: theme!.mainTextColor,
                    fontFamily: bentonSansFont,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              onTap: () {},
            ),
            vSpace(kfsExtraLarge),
            CustomContainer(
              height: h(129),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconAssets.cameraIcon.svg,
                  vSpace(kfsVeryTiny),
                  TextWidget(
                    'Take Photo',
                    fontSize: sp(kfsTiny),
                    textColor: theme.mainTextColor,
                    fontFamily: bentonSansFont,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              onTap: () => NavigationHelper.instance
                  .navigateTo(RouteLocation.setYourLocation),
            ),
          ],
        ),
      ),
      useSingleScroll: true,
    );
  }
}
