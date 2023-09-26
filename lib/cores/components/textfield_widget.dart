import 'package:flutter/material.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/navigator/route_provider.dart';
import 'package:food_delivery/cores/theme/theme.dart';
import 'package:food_delivery/cores/utils/utils.dart';

@immutable
class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    Key? key,
    this.controller,
    this.keyboardType,
    this.fillColor,
    this.filled,
    this.hintText,
    this.prefixIcon,
  }) : super(key: key);

  final theme = Theme.of(navigationKey.currentContext!).extension<Palette>();

  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final bool? filled;
  final String? hintText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    late final theme = Theme.of(context).extension<Palette>()!;

    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: theme.primaryColor,
      style: TextStyle(
        fontSize: sp(kfsTiny),
        fontWeight: FontWeight.w300,
        color: theme.textFieldTextColor,
      ),
      decoration: InputDecoration(
        fillColor: fillColor ?? theme.tileColor,
        filled: filled,
        enabledBorder: border,
        hintText: hintText,
        prefixIcon: prefixIcon,
        hintStyle: TextStyle(
          fontFamily: bentonSansFont,
          fontWeight: FontWeight.w400,
          color: theme.mainTextColor,
        ),
        focusedBorder: focusedBorder,
      ),
    );
  }

  InputBorder get border => OutlineInputBorder(
        borderRadius: BorderRadius.circular(kfsTiny),
        borderSide: BorderSide(color: theme!.borderColor),
      );
  InputBorder get focusedBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(kfsTiny),
        borderSide: BorderSide(color: theme!.primaryColor),
      );
}
