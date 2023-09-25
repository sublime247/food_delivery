import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/cores/components/search_input.dart';
import 'package:food_delivery/cores/components/text_widget.dart';
import 'package:food_delivery/cores/constants/font_size.dart';
import 'package:food_delivery/cores/theme/palette.dart';
import 'package:food_delivery/cores/utils/utils.dart';
import 'package:food_delivery/features/home/presentation/widget/home_banner.dart';
import 'package:food_delivery/features/home/presentation/widget/popular_menus_list.dart';
import 'package:food_delivery/features/home/presentation/widget/returant_view_list.dart';

class HomeTab extends ConsumerWidget {
 HomeTab({super.key});
final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final theme = Theme.of(context).extension<Palette>()!;
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal: w(5), vertical: h(15)),
          child: Column(
            
            children: [
              vSpace(30),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                TextWidget('Find  Your Favourite\nFood Near You', textColor: theme.mainTextColor, fontSize: kfsSuperLarge, fontWeight: FontWeight.w700),
                Icon(Icons.notifications_outlined, color: theme.mainTextColor,)
              ],
           
              ),
              vSpace(15),
              SearchInputField(
                  controller:  controller,
                  hintText: 'What do you want to order?',),
                  vSpace(30),
                 const  HomeBanner(),
                 vSpace(30),
                 const  ResturantList(),
                  vSpace(30),
                 const  PopularMenusList(),
                
              
          
            ],
          ),
        ),
      ),
    );
  }
}
