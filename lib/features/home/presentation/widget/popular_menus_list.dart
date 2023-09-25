import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/cores/components/text_widget.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/theme/palette.dart';
import 'package:food_delivery/features/home/data/datasource/popular_menu_list.dart';
import 'package:food_delivery/features/home/presentation/state_management/states.dart';

class PopularMenusList extends ConsumerWidget {
  const PopularMenusList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showAllmenus = ref.watch(toggleStateProvider);
    late final theme = Theme.of(context).extension<Palette>()!;
    return SizedBox(
      height: showAllmenus.showAllMenu? MediaQuery.sizeOf(context).height/1.5 : 200,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        TextWidget('Resturant', fontSize: kfsLarge, fontWeight: FontWeight.w600, textColor: theme.mainTextColor,),
              TextButton(
                onPressed: () {
                  ref.read(toggleStateProvider.notifier).toggleMenu();
                },
                child: TextWidget(showAllmenus.showAllMenu
                    ? 'View Less'
                    : 'View More', textColor: theme.textButton, fontSize: kfsMedium,),
              )
            ],
          ),
          SizedBox(
              height: 400,
              child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  physics: showAllmenus.showAllMenu
                      ? const AlwaysScrollableScrollPhysics()
                      : const NeverScrollableScrollPhysics(),
                  itemCount: showAllmenus.showAllMenu
                      ? MenuList.menuList.length
                      : 1,
                  itemBuilder: (context, index) {
                    return ListTile(
                      tileColor: theme.cardColor,
                      shape: ShapeBorder.lerp(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          1), 
                      titleAlignment: ListTileTitleAlignment.titleHeight,
                      leading: Image.asset(
                        MenuList.menuList[index].image,
                      ),
                      title: TextWidget(MenuList.menuList[index].menuName, fontSize: kfsMedium, fontWeight: FontWeight.w600, textColor: theme.mainTextColor),
                      subtitle: TextWidget(MenuList.menuList[index].menuTittle, fontSize: kfsTiny, fontWeight: FontWeight.w400, textColor: theme.mainTextColor),
                      trailing: TextWidget(MenuList.menuList[index].price, fontSize: kfsSuperLarge, fontWeight: FontWeight.w700, textColor: theme.textButton),
                    );
                  }))
        ],
      ),
    );
  }
}
