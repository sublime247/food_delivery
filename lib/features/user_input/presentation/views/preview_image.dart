import 'package:flutter/material.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/cores/utils/utils.dart';
import 'package:food_delivery/features/user_input/presentation/widgets/header_widget.dart';

class PreviewImage extends StatelessWidget {
  const PreviewImage({super.key});

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
              title: 'Preview Your Photo\nProfile',
              subtitle:
                  'This data will be displayed in your account\nprofile for security',
            ),
            vSpace(kXtremeLarge),
            //!TODO: IMAGE PREVIEW
            vSpace(spacer),
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
}
