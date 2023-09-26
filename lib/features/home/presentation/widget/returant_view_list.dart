import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/theme/palette.dart';
import 'package:food_delivery/cores/utils/responsive_sizes.dart';
import 'package:food_delivery/features/home/data/datasource/returant_list.dart';
import 'package:food_delivery/features/home/presentation/state_management/states.dart';

class ResturantList extends ConsumerWidget {
  const ResturantList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showAllresturant = ref.watch(toggleStateProvider);
    late final theme = Theme.of(context).extension<Palette>()!;
    return SizedBox(
//  showAllresturant.showAllResturant? MediaQuery.sizeOf(context).height : 400),
      height: showAllresturant.showAllResturant
          ? MediaQuery.sizeOf(context).height / 1.2
          : 250,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget('Resturant',
                  fontSize: kfsLarge,
                  fontWeight: FontWeight.w600,
                  textColor: theme.mainTextColor),
              TextButton(
                onPressed: () {
                  ref.read(toggleStateProvider.notifier).toggle();
                },
                child: TextWidget(
                  showAllresturant.showAllResturant ? 'View Less' : 'View More',
                  textColor: theme.textButton,
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: GridView.builder(
                physics: showAllresturant.showAllResturant
                    ? const NeverScrollableScrollPhysics()
                    : const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                    childAspectRatio: 0.8),
                itemCount: showAllresturant.showAllResturant
                    ? RestaurantListDataSource.resturantLists.length
                    : 2,
                itemBuilder: (context, index) {
                  return Material(
                    elevation: 2,
                    color: theme.cardColor,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: theme.cardColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            RestaurantListDataSource
                                .resturantLists[index].image,
                            height: h(73),
                            width: w(96),
                          ),
                          vSpace(8),
                          TextWidget(
                            RestaurantListDataSource
                                .resturantLists[index].resturantName,
                            fontSize: kfsMedium,
                            fontWeight: FontWeight.w600,
                            textColor: theme.mainTextColor,
                          ),
                          vSpace(8),
                          TextWidget(
                            RestaurantListDataSource.resturantLists[index].time,
                            fontSize: kfsTiny,
                            textColor: theme.mainTextColor,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
