import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/cores/components/components.dart';
import 'package:food_delivery/cores/utils/responsive_sizes.dart';
import 'package:food_delivery/features/home/data/datasource/returant_list.dart';
import 'package:food_delivery/features/home/presentation/state_management/states.dart';

class ResturantList extends ConsumerWidget {
  const ResturantList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showAllresturant = ref.watch(toggleStateProvider);
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 2,
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TextWidget('Resturant'),
              TextButton(onPressed: () {
               ref.read(toggleStateProvider.notifier).toggle();
              }, child:  TextWidget( showAllresturant.showAllResturant?'View Less': 'View More'),
               )
            ],
          ),
          SizedBox(
            height: 400,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: showAllresturant.showAllResturant?RestaurantListDataSource.resturantLists.length: 2,
                itemBuilder: (context, index) {
                  return Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(RestaurantListDataSource
                            .resturantLists[index].image,
                            height: h(73),
                            width: w(96),),
                        vSpace(3),
                        TextWidget(
                            RestaurantListDataSource.resturantLists[index]
                                .resturantName),
                        vSpace(3),
                        TextWidget(
                            RestaurantListDataSource.resturantLists[index].time)
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
