import 'package:flutter/material.dart';
import 'package:food_delivery/cores/theme/palette.dart';

class DarkPalette implements Palette {
  @override
  Color get mainTextColor => const Color(0xffffffff);
  @override
  Color get primaryColor => const Color(0xFF53E78B);

  @override
  ThemeExtension<Palette> copyWith() {
    return this;
  }

  @override
  ThemeExtension<Palette> lerp(
    covariant ThemeExtension<Palette>? other,
    double t,
  ) {
    return this;
  }

  @override
  Object get type => Palette;
}
//  style: Theme.of(context).textTheme.displayLarge!.copyWith(
//                     fontSize: sp(40),
//                     fontWeight: FontWeight.bold,
//                     color: AppColor.primayColor,
//                   ),