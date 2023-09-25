import 'package:flutter/material.dart';
import 'package:food_delivery/cores/theme/palette.dart';

class DarkPalette implements Palette {
  @override
  Color get mainTextColor => const Color(0xffffffff);
  @override
  Color get primaryColor => const Color(0xFF53E78B);
  @override
  Color get textfieldColor => const Color(0xFFF4F4F4).withOpacity(0.4);
  @override
  Color get hintColor => const Color(0xffffffff);
  @override
  Color get iconColor => const Color(0xffffffff);
  @override
  Color get textButton => const Color(0xFFF9A84D);
  @override
  Color get borderColor => Colors.transparent;
  @override
  Color get cardColor => const Color(0xFFF4F4F4).withOpacity(0.4);
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