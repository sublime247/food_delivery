import 'package:flutter/material.dart';
import 'package:food_delivery/cores/theme/pallette.dart';

class DarkPalette implements Palette {
  @override
  Color get mainTextColor => const Color(0xffffffff);

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
