import 'package:flutter/material.dart';
import 'package:food_delivery/cores/theme/pallette.dart';

class LightPalette implements Palette {
  @override
  Color get mainTextColor => const Color(0xFF09041B);

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
