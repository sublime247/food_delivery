import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/cores/components/action_chip.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/font_size.dart';
import 'package:food_delivery/cores/theme/palette.dart';
import 'package:food_delivery/cores/utils/responsive_sizes.dart';
import 'package:food_delivery/features/home/presentation/widget/custom_home.dart';

class HomeActionChips extends ConsumerWidget {
  const HomeActionChips({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: // resizeToAvoidBottomInset: true,
          SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: w(20), vertical: h(10)),
          child: Column(
            mainAxisSize: MainAxisSize.min
            
            ,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomHome(false),
                  vSpace(30),
                  _buildContext(context, 'Resturant', () {}, 'Type'),
                  vSpace(30),
                  _buildContext(context, 'Cake', () {}, 'Food'),
                  vSpace(30),
                  _buildContext(context, '>2km', () {}, 'Location'),
                  vSpace(30),
                  

                ],

              ),
              vSpace(100),
            
           
           


        ButtonWidget( width: 350, onTap: (){}, text: 'Apply Filter')
            ],
          ),
        )),
      ),
    );
  }

  Widget _buildContext(
      BuildContext context, text, VoidCallback onPressed, String title) {
    late final theme = Theme.of(context).extension<Palette>()!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          title,
          fontSize: sp(kfsMedium),
          fontWeight: FontWeight.w500,
          textColor: theme.mainTextColor,
        ),
        vSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ActionChipButton(text, () {
              onPressed();
            }),
            hSpace(10),
            ActionChipButton(text, () {
              onPressed();
            }),
            hSpace(10),
            ActionChipButton(text, () {
              onPressed();
            }),
          ],
        ),
      ],
    );
  }
}
