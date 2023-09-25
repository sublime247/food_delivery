import 'package:flutter/material.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/theme/palette.dart';

class LightPalette implements Palette {
  @override
  Color get mainTextColor => kMainTextColorL;
  @override
  Color get primaryColor => kPrimaryColor;
  @override
  Color get textColor1 => kTextColorL1;
  @override
  Color get textFieldTextColor => kTextFieldTextColorL;
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
