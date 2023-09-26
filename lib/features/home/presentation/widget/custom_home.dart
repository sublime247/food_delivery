import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/cores/components/search_input.dart';
import 'package:food_delivery/cores/components/text_widget.dart';
import 'package:food_delivery/cores/constants/font_size.dart';
import 'package:food_delivery/cores/navigator/navigation_helper.dart';
import 'package:food_delivery/cores/navigator/route_location.dart';
import 'package:food_delivery/cores/theme/palette.dart';
import 'package:food_delivery/cores/utils/responsive_sizes.dart';

class CustomHome extends ConsumerWidget {
  CustomHome(this.isHome, {super.key});
  final TextEditingController controller = TextEditingController();
  final bool isHome;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final theme = Theme.of(context).extension<Palette>()!;
    return Column(mainAxisSize: MainAxisSize.min, children: [
      vSpace(30),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextWidget('Find  Your Favourite\nFood Near You',
              textColor: theme.mainTextColor,
              fontSize: kfsSuperLarge,
              fontWeight: FontWeight.w700),
          Icon(
            Icons.notifications_outlined,
            color: theme.mainTextColor,
          )
        ],
      ),
      vSpace(15),
      Row(
        // mainAxisAlignment: MainAxisAlignment.v,
        children: [
          SearchInputField(
            
            controller: controller,
            hintText: 'What do you want to order?',
          ),
          hSpace(10),
          if (isHome == true)
            Expanded(
              child: IconButton(
                  iconSize: 40,
                  onPressed: () {
                    NavigationHelper.instance
                        .navigateTo(RouteLocation.homechip);
                  },
                  icon: Icon(
                    Icons.filter_list_outlined,
                    color: theme.textfieldColor,
                  )),
            )
        ],
      )
    ]);
  }
}
