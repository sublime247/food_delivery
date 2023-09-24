import 'package:flutter/material.dart';
import 'package:food_delivery/cores/theme/palette.dart';

class LightPalette implements Palette {
  @override
  Color get mainTextColor => const Color(0xFF09041B);
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
