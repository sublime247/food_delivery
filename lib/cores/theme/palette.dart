import 'package:flutter/material.dart';

abstract class Palette extends ThemeExtension<Palette> {
  Color get mainTextColor;
  Color get primaryColor;
  Color get textfieldColor;
  Color get hintColor;
  Color get iconColor;
  Color get borderColor;
  Color get textButton;
  Color get cardColor;
}
