import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/cores/navigator/navigator.dart';
import 'package:food_delivery/cores/theme/theme.dart';

class FoodNinja extends ConsumerWidget {
  const FoodNinja({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, Widget? child) {

        final route = ref.watch(routesProvider);

        return ValueListenableBuilder<ThemeMode>(
          valueListenable: ThemeModeSelector.mode,
          builder: (context, themeMode, _) {
            return MaterialApp.router(
              title: 'Food Ninja',
              debugShowCheckedModeBanner: false,
              themeMode: themeMode,
              routerConfig: route,
              darkTheme: ThemeData(
                extensions: <ThemeExtension<Palette>>{DarkPalette()},
                scaffoldBackgroundColor: const Color(0xff0d0d0d),
                fontFamily: "BentonSans",
              ),
              theme: ThemeData(
                extensions: <ThemeExtension<Palette>>{LightPalette()},
                scaffoldBackgroundColor: const Color(0xFFFEFEFF),
                fontFamily: "BentonSans",
              ),
            );
          },
        );
      },
    );
  }
}
