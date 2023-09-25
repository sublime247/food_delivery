import 'package:flutter/material.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/theme/theme.dart';
import 'package:food_delivery/cores/utils/utils.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    this.controller,
    this.keyboardType,
    this.fillColor,
    this.filled,
    this.hintText,
  }) : super(key: key);

  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final bool? filled;
  final String? hintText;

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
        fillColor: fillColor ?? kColorWhite,
        filled: filled,
        enabledBorder: border,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontFamily: bentonSansFont,
          fontWeight: FontWeight.w400,
        ),
        focusedBorder: focusedBorder,
      ),
    );
  }

  InputBorder get border => OutlineInputBorder(
        borderRadius: BorderRadius.circular(kfsTiny),
        borderSide: const BorderSide(color: borderColor),
      );
  InputBorder get focusedBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(kfsTiny),
        borderSide: const BorderSide(color: kPrimaryColor),
      );
}
