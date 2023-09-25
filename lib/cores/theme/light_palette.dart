import 'package:flutter/material.dart';
import 'package:food_delivery/cores/theme/palette.dart';

class LightPalette implements Palette {
  @override
  Color get mainTextColor => const Color(0xFF09041B);
  @override
  Color get primaryColor => const Color(0xFF53E78B);
  @override
  Color get textfieldColor => const Color(0xFFF9A84D);
  @override
  Color get hintColor => const Color(0xFFDA6317);
  @override
  Color get iconColor => const Color(0xFFDA6317);
  @override
  Color get borderColor => const Color(0xFFF9A84D);
  @override
  Color get textButton => const Color(0xFFF9A84D);
  @override
  Color get cardColor => const Color(0xFFE5E5E5);
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
