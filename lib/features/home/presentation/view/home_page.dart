import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/cores/components/scaffold_widget.dart';
import 'package:food_delivery/cores/theme/app_colors.dart';
import 'package:food_delivery/features/home/presentation/widget/homeTabs/home_tabs.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int initialIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      body: HomeTabs.homeWidget.elementAt(initialIndex),
      useSingleScroll: false,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            )
          ],
        ),
        child: SafeArea(

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              tabBorderRadius: 15,
              activeColor: AppColor.primayColor,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: AppColor.primayColor.withOpacity(
                0.5
              ),
              color: AppColor.primayColor,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  iconColor: AppColor.primayColor,
                  text: 'Home',
                  textColor: Colors.black,
                ),
                GButton(
                  icon: LineIcons.heart,
                  text: 'Likes',
                ),
                GButton(
                  icon: LineIcons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: initialIndex,
              onTabChange: (index) {
                setState(() {
                  initialIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
