import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/cores/navigator/navigator.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, Widget? child) {
        final route = ref.watch(routesProvider);

        return MaterialApp.router(
          title: 'Food Ninja',
          debugShowCheckedModeBanner: false,
          routerConfig: route,
        );
      },
    );
  }
}
